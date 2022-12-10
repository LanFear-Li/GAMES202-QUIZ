#include "denoiser.h"

Denoiser::Denoiser() : m_useTemportal(false) {}

void Denoiser::Reprojection(const FrameInfo &frameInfo) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    Matrix4x4 preWorldToScreen =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 1];
    Matrix4x4 preWorldToCamera =
        m_preFrameInfo.m_matrix[m_preFrameInfo.m_matrix.size() - 2];
#pragma omp parallel for collapse(2)
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            m_valid(x, y) = false;
            m_misc(x, y) = Float3(0.0f);

            // Get current Object Id: -1 means not belongs to any object
            int objectId = frameInfo.m_id(x, y);
            if (objectId == -1) continue;

            // Calculate Previous Screen Position of Current Screen Point
            Matrix4x4 curWorldToObject = Inverse(frameInfo.m_matrix[objectId]);
            Matrix4x4 prevObjectToWorld = m_preFrameInfo.m_matrix[objectId];

            Float3 curWorldPos = frameInfo.m_position(x, y);
            Float3 prevWorldPos = prevObjectToWorld(curWorldToObject(curWorldPos, Float3::EType::Point), Float3::EType::Point);
            Float3 prevScreenPos = preWorldToScreen(prevWorldPos, Float3::EType::Point);

            // Exclude Frames outside the Screen
            if (prevScreenPos.x < 0 || prevScreenPos.x >= width) continue;
            if (prevScreenPos.y < 0 || prevScreenPos.y >= height) continue;

            // Exclude Frames belongs to Different Object
            int prevObjectId = m_preFrameInfo.m_id(prevScreenPos.x, prevScreenPos.y);
            if (prevObjectId != objectId) continue;

            m_valid(x, y) = true;
            m_misc(x, y) = m_accColor(prevScreenPos.x, prevScreenPos.y);
        }
    }
    std::swap(m_misc, m_accColor);
}

void Denoiser::TemporalAccumulation(const Buffer2D<Float3> &curFilteredColor) {
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    int kernelRadius = 3;
#pragma omp parallel for
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            // TODO: Temporal clamp
            Float3 color = m_accColor(x, y);
            // TODO: Exponential moving average
            float alpha = 1.0f;
            m_misc(x, y) = Lerp(color, curFilteredColor(x, y), alpha);
        }
    }
    std::swap(m_misc, m_accColor);
}

Buffer2D<Float3> Denoiser::Filter(const FrameInfo &frameInfo) {
    int height = frameInfo.m_beauty.m_height;
    int width = frameInfo.m_beauty.m_width;
    Buffer2D<Float3> filteredImage = CreateBuffer2D<Float3>(width, height);
    int kernelRadius = 16;
#pragma omp parallel for collapse(2)
    for (int y = 0; y < height; y++) {
        for (int x = 0; x < width; x++) {
            float sumOfWeights = 0.0f;
            Float3 sumOfWeightedValues(0.0f);

            Float3 curPos = frameInfo.m_position(x, y);
            Float3 curColor = frameInfo.m_beauty(x, y);
            Float3 curNormal = frameInfo.m_normal(x, y);

            // iterate all pixels inside the kernel
            int xLeft = std::max(x - kernelRadius, 0);
            int xRight = std::min(x + kernelRadius, width - 1);
            int yLeft = std::max(y - kernelRadius, 0);
            int yRight = std::min(y + kernelRadius, height - 1);

            for (int i = xLeft; i <= xRight; i++) {
                for (int j = yLeft; j <= yRight; j++) {
                    if (i == x && j == y) {
                        sumOfWeightedValues += curColor;
                        sumOfWeights += 1.0f;
                        continue;
                    }

                    Float3 filterPos = frameInfo.m_position(i, j);
                    Float3 filterColor = frameInfo.m_beauty(i, j);
                    Float3 filterNormal = frameInfo.m_normal(i, j);

                    // Joint Distance Term
                    float distance = SqrDistance(curPos, filterPos) / (2.0f * m_sigmaCoord);

                    // Joint Color Term
                    float color = SqrDistance(curColor, filterColor) / (2.0f * m_sigmaColor);

                    // Joint Normal Term
                    float DNormal = SafeAcos(Dot(curNormal, filterNormal));
                    float normal = DNormal / (2.0f * m_sigmaNormal);

                    // Joint Plane Term
                    float plane = 0.0f;
                    if (distance != 0.0f) {
                        Float3 Position = Normalize(filterPos - curPos);
                        float DPlane = Dot(curNormal, Position);

                        plane = Sqr(DPlane) / (2.0f * m_sigmaPlane);
                    }

                    // Joint Bilateral Filter kernel Term
                    float weight = std::exp(-(distance + color + normal + plane));

                    sumOfWeightedValues += filterColor * weight;
                    sumOfWeights += weight;
                }
            }

            filteredImage(x, y) = sumOfWeightedValues / sumOfWeights;
        }
    }
    return filteredImage;
}

void Denoiser::Init(const FrameInfo &frameInfo, const Buffer2D<Float3> &filteredColor) {
    m_accColor.Copy(filteredColor);
    int height = m_accColor.m_height;
    int width = m_accColor.m_width;
    m_misc = CreateBuffer2D<Float3>(width, height);
    m_valid = CreateBuffer2D<bool>(width, height);
}

void Denoiser::Maintain(const FrameInfo &frameInfo) { m_preFrameInfo = frameInfo; }

Buffer2D<Float3> Denoiser::ProcessFrame(const FrameInfo &frameInfo) {
    // Filter current frame
    Buffer2D<Float3> filteredColor;
    filteredColor = Filter(frameInfo);

    // Reproject previous frame color to current
    if (m_useTemportal) {
        Reprojection(frameInfo);
        TemporalAccumulation(filteredColor);
    } else {
        Init(frameInfo, filteredColor);
    }

    // Maintain
    Maintain(frameInfo);
    if (!m_useTemportal) {
        m_useTemportal = true;
    }
    return m_accColor;
}
