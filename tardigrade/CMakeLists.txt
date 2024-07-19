cmake_minimum_required(VERSION 3.0.2)
project(tardigrade)


find_package(catkin REQUIRED COMPONENTS
  stonefish_mvp
)


catkin_package()

catkin_install_python(PROGRAMS scripts/cmd_vel_to_thruster.py scripts/auto.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)