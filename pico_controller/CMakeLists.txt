cmake_minimum_required(VERSION 3.0.2)
project(pico_controller)


find_package(catkin REQUIRED COMPONENTS
  rospy
  std_msgs
  geometry_msgs
)

catkin_package( CATKIN_DEPENDS
  rospy
  geometry_msgs
  std_msgs
  serial
  struct
)

catkin_install_python(PROGRAMS src/pico_thruster_controller.py
    DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)