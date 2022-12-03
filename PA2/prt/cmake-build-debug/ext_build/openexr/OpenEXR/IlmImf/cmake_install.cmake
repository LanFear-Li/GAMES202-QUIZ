# Install script for directory: /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/cmake-build-debug/ext_build/openexr/OpenEXR/IlmImf/libIlmImf.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenEXR" TYPE FILE FILES
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfForward.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfExport.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfBoxAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfCRgbaFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelList.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfChannelListAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompressionAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDoubleAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfFrameBuffer.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfHeader.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfIO.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfIntAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrderAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfMatrixAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfOpaqueAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfVecAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfHuf.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfWav.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfLut.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfArray.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompression.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfLineOrder.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfName.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfPixelType.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfVersion.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfXdr.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfConvert.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImage.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfPreviewImageAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticities.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfChromaticitiesAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCode.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfKeyCodeAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCode.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTimeCodeAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfRational.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfRationalAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfFramesPerSecond.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfStandardAttributes.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmap.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfEnvmapAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfInt64.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgba.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescription.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTileDescriptionAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledRgbaFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfRgbaYca.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTestFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfThreading.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfB44Compressor.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfStringVectorAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiView.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfAcesFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfMultiPartInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfGenericInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartType.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfPartHelper.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfOutputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledOutputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfInputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfTiledInputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineOutputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepScanLineInputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledInputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputFile.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepTiledOutputPart.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepFrameBuffer.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepCompositing.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfCompositeDeepScanLine.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfNamespace.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfMisc.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageState.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfDeepImageStateAttribute.h"
    "/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/openexr/OpenEXR/IlmImf/ImfFloatVectorAttribute.h"
    )
endif()

