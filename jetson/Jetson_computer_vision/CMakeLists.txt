cmake_minimum_required(VERSION 3.10.0)

project(Detection)

find_package(CUDA REQUIRED)
find_package(OpenCV REQUIRED)
find_package(Pangolin REQUIRED)
find_package(Eigen3 REQUIRED)
find_package(PkgConfig) 
pkg_search_module(GLIB REQUIRED glib-2.0) 
pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)
pkg_check_modules(GST_APP REQUIRED gstreamer-app-1.0)
pkg_check_modules(GST_VIDEO REQUIRED gstreamer-video-1.0)
pkg_check_modules(GST_SERVER REQUIRED gstreamer-rtsp-server-1.0)

# Replace the path with the correct path where ORB_SLAM2_CUDA is located
set(ORB_SLAM2_CUDA_DIRS "path to ORB_SLAM2_CUDA")
include_directories( ${OpenCV_INCLUDE_DIRS} ${GSTREAMER_INCLUDE_DIRS} ${GSTREAMER_APP_INCLUDE_DIRS} ${GSTREAMER_VIDEO_INCLUDE_DIRS} ${GSTREAMER_SERVER_INCLUDE_DIRS} ${EIGEN3_INCLUDE_DIR} ${CUDA_INCLUDE_DIRS} ${Pangolin_INCLUDE_DIRS} ${ORB_SLAM2_CUDA_DIRS}/include ${ORB_SLAM2_CUDA_DIRS} )

add_executable(Detection main.cpp detection.cpp visual-odometry.cpp helper_functions.cpp)
target_link_libraries( Detection ${OpenCV_LIBS} ${GST_APP_LIBRARIES} ${GST_VIDEO_LIBRARIES} ${GST_SERVER_LIBRARIES} ${CUDA_LIBRARIES} pthread ${Pangolin_LIBRARIES} ${ORB_SLAM2_CUDA_DIRS}/lib/libORB_SLAM2_CUDA.so ${ORB_SLAM2_CUDA_DIRS}/Thirdparty/g2o/lib/libg2o.so ${ORB_SLAM2_CUDA_DIRS}/Thirdparty/DBoW2/lib/libDBoW2.so)