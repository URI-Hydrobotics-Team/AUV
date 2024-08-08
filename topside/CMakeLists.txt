cmake_minimum_required(VERSION 3.0.2)
project(topside)

find_package(catkin REQUIRED COMPONENTS
)

catkin_package()

catkin_install_python(PROGRAMS src/surface_viewer.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)