project(main)
cmake_minimum_required(VERSION 3.13)
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

#target_include_directories(main ${CMAKE_SOURCE_DIR}/inc)
set(EXECUTABLE_OUTPUT_PATH ${CMAKE_SOURCE_DIR}/build)
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_SOURCE_DIR}/build)
set(CMAKE_BUIL ${CMAKE_SOURCE_DIR}/build)
set(SOURCES ${CMAKE_SOURCE_DIR}/src/main.cpp ${CMAKE_SOURCE_DIR}/inc/oclHelper.h ${CMAKE_SOURCE_DIR}/../VHACD_Lib/public/VHACD.h)

add_executable(main ${SOURCES})
target_link_libraries(main ${CMAKE_SOURCE_DIR}/../VHACD_Lib/libvhacd.a)