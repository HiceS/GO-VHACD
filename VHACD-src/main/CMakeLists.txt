project(main)
cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(EXECUTABLE_OUTPUT_PATH ${CMAKE_CURRENT_SOURCE_DIR}/build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR}/build)
set(SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp ${CMAKE_CURRENT_SOURCE_DIR}/inc/oclHelper.h ${CMAKE_CURRENT_SOURCE_DIR}/../VHACD_Lib/public/VHACD.h)
include_directories(${CMAKE_CURRENT_SOURCE_DIR}/inc , ${CMAKE_CURRENT_SOURCE_DIR}/../VHACD_Lib/public)

add_executable(main ${SOURCES})
target_include_directories(main PRIVATE ${CMAKE_SOURCE_DIR}/inc)
target_link_libraries(main ${CMAKE_CURRENT_SOURCE_DIR}/../VHACD_Lib/libvhacd.a)