cmake_minimum_required(VERSION 3.0.2)
project(sensors)


find_package(catkin REQUIRED COMPONENTS
  stonefish_mvp
)

catkin_package()

catkin_install_python(PROGRAMS src/camera_publisher.py src/echosounder_publisher.py src/bno055_publisher.py
  DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)