# GAMES202 Programming Assignment
## PA0 - Framework Preparation

Games202大部分作业基于JavaScript并使用WebGL搭建，本次PA0的目的是熟悉框架并了解基本的GLSL(OpenGL Shading Language)语法。正确构建后，可以观察到一个基于Blinn-Phong着色的人物模型。

**效果**

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa0-1.png" style="zoom: 60%;text-align: left"/></p>

## PA1 - Real Time Shadow Mapping

阴影能够让观察者获取物体的相对位置信息，对于渲染质量的提升十分显著。经典的Two-Pass Hard Shadow Mapping首先从Point Light出发生成当前场景的Shadow Map，再从Camera出发实现着色，其可以有效生成点光源静态场景的阴影效果，但存在Aliasing问题。

而PCF(Percentage Closer Filter)方法对于阴影的每个像素，采样其周围像素的深度值并累计到Visibility，最后实现对于阴影边缘的Anti-Aliasing。

此外，基于对现实的观察，物体的阴影从近处到远处会有一个从hard到soft的渐变过程，那么我们可以根据当前阴影着色点与物体的距离远近，动态调整PCF的采样半径，实现软阴影的生成，这就是PCSS(Percentage Closer Soft Shadow)方法。

**效果**

Two Pass Shadow Mapping

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa1-1.png" style="zoom: 60%;text-align: left"/></p>

Two Pass Shadow Mapping with PCF

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa1-2.png" style="zoom: 60%;text-align: left"/></p>

PCSS

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa1-3.png" style="zoom: 60%;text-align: left"/></p>

## PA2 - Precomputed Radiance Transfer

PRT(Precomputed Radiance Transfer)使用预计算的方法替代传统Path Tracing渲染全局光照，其通过Spherical Harmonics Function拟合Light Term以及Light Transport Term，保留渲染的低频信息从而快速地实现全局光照。

**效果**

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa2-1.png" style="zoom: 60%;text-align: left"/></p>

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa2-2.png" style="zoom: 60%;text-align: left"/></p>

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa2-3.png" style="zoom: 60%;text-align: left"/></p>

## PA3 - Screen Space Reflection(Ray Tracing)

SRR(Screen Space Reflection or Ray Tracing)是一种屏幕空间的全局光照算法，其通过计算当前Shading Point的直接光照以及一次反射的间接光照从而形成全局光照。对于反射后的间接光照计算，SSR使用Ray Marching来计算反射点。传统Ray Marching使用固定步长来步进光线，这样会导致交点计算存在误差，可以使用基于最小池化mipmap的动态步长方法优化。

**效果**

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa3-1.png" style="zoom: 60%;text-align: left"/></p>

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa3-2.png" style="zoom: 60%;text-align: left"/></p>

## PA4 - Kulla-Conty BRDF

微表面模型的BRDF(Microfacet BRDF)是实现PBR(Physical-Based Rendering)的重要部分，其通过考虑光照可见性的Fresnel项、微表面发生物理遮挡的Shadowing-Masking项(Geometry项)以及基于法线分布的Normal Distribution项计算任意Shading Point的Radiance。

然而对于微表面BRDF来说光线在表面发生多次bounce，导致渲染结果存在能量损失。而Kulla-Conty BRDF通过引入一个BRDF补偿项从而保持近似的能量守恒。

**效果**

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa4-1.png" style="zoom: 60%;text-align: left"/></p>

## PA5 - Real Time Ray Tracing Denoising

对于实时光线追踪，其主要目标在于对于1SPP下的Path Tracing效果，如何提升其渲染质量? Denoising!

对于每一帧的渲染结果，我们可以基于渲染过程中生成的GBuffer(包含坐标、法线、深度等信息)使用Joint Bilateral Filter提升画面质量，然而这种基于Spatial的方法效果并不显著。考虑到对于实时渲染帧与帧之间的运动可以看作是连续的，那么可以使用基于Temporal累积的上一帧降噪结果并与当前帧降噪结果做拟合，从而实现高质量的实时光线追踪。

**效果**

Before Denoising

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa5-1.png" style="zoom: 60%;text-align: left"/></p>

After Denoising

<p align="center"><img src="https://raw.githubusercontent.com/LanFear-Li/GAMES202-QUIZ/main/Appendix/pa5-2.png" style="zoom: 60%;text-align: left"/></p>
