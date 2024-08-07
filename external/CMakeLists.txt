cmake_minimum_required(VERSION 3.0.2)
project(external)


find_package(catkin REQUIRED COMPONENTS
  stonefish_mvp
)

catkin_package()

catkin_install_python(PROGRAMS scripts/surface_viewer.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)