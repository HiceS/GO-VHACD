# Install script for directory: /Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib

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
    set(CMAKE_INSTALL_CONFIG_NAME "")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/libvhacd.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvhacd.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvhacd.a")
    execute_process(COMMAND "/Library/Developer/CommandLineTools/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvhacd.a")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/FloatMath.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btAlignedAllocator.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btAlignedObjectArray.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btConvexHullComputer.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btMinMax.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btScalar.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/btVector3.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdCircularList.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdICHull.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdManifoldMesh.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdMesh.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdMutex.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdRaycastMesh.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdSArray.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdTimer.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdVHACD.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdVector.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdVolume.h"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/public/VHACD.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE FILE FILES
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdCircularList.inl"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/inc/vhacdVector.inl"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd/vhacd-targets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd/vhacd-targets.cmake"
         "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/CMakeFiles/Export/lib/cmake/vhacd/vhacd-targets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd/vhacd-targets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd/vhacd-targets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd" TYPE FILE FILES "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/CMakeFiles/Export/lib/cmake/vhacd/vhacd-targets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^()$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd" TYPE FILE FILES "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/CMakeFiles/Export/lib/cmake/vhacd/vhacd-targets-noconfig.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xDevelx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vhacd" TYPE FILE FILES
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/vhacd/vhacd-config.cmake"
    "/Users/mad/Documents/GO-VHACD/VHACD-src/VHACD_Lib/vhacd/vhacd-config-version.cmake"
    )
endif()

