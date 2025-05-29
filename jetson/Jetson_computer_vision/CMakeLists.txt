cmake_minimum_required(VERSION 3.28.0)

project(Detection)

FIND_PACKAGE(OpenCV REQUIRED)

include_directories( ${OpenCV_INCLUDE_DIRS} )

add_executable(Detection main.cpp detection.cpp)
target_link_libraries( Detection ${OpenCV_LIBS} )