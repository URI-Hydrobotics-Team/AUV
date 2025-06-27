cmake_minimum_required(VERSION 3.10.0)

project(Detection)

FIND_PACKAGE(OpenCV REQUIRED)

find_package(PkgConfig) 
pkg_search_module(GLIB REQUIRED glib-2.0) 
pkg_check_modules(GSTREAMER REQUIRED gstreamer-1.0)
pkg_check_modules(GST_APP REQUIRED gstreamer-app-1.0)
pkg_check_modules(GST_VIDEO REQUIRED gstreamer-video-1.0)
pkg_check_modules(GST_SERVER REQUIRED gstreamer-rtsp-server-1.0)


include_directories( ${OpenCV_INCLUDE_DIRS} ${GSTREAMER_INCLUDE_DIRS} ${GSTREAMER_APP_INCLUDE_DIR} ${GSTREAMER_VIDEO_INCLUDE_DIR} ${GSTREAMER_SERVER_INCLUDE_DIR})

add_executable(Detection main.cpp detection.cpp)
target_link_libraries( Detection ${OpenCV_LIBS} ${GST_APP_LIBRARIES} ${GST_VIDEO_LIBRARIES} ${GST_SERVER_LIBRARIES} pthread)