cmake_minimum_required(VERSION 3.10)
project(Detection LANGUAGES CXX CUDA)

# Find OpenCV and TensorRT
find_package(OpenCV REQUIRED)
set(TENSORRT_INCLUDE_DIRS
    path to TensorRT header files
)

# List all the TensorRT libraries you need.
set(TENSORRT_LIBRARIES
    path to libnvinfer.so file
    path to libnvinfer_plugin.so file
    path to libnvonnxparser.so file
)

include_directories( ${OpenCV_INCLUDE_DIRS} ${GSTREAMER_INCLUDE_DIRS} ${GSTREAMER_APP_INCLUDE_DIRS} ${GSTREAMER_VIDEO_INCLUDE_DIRS} ${GSTREAMER_SERVER_INCLUDE_DIRS} ${CUDA_INCLUDE_DIRS} ${TENSORRT_INCLUDE_DIRS})

add_executable(Detection main.cpp detection.cpp helper_functions.cu)
target_link_libraries( Detection ${OpenCV_LIBS} ${GST_APP_LIBRARIES} ${GST_VIDEO_LIBRARIES} ${GST_SERVER_LIBRARIES} ${CUDA_LIBRARIES} ${TENSORRT_LIBRARIES})