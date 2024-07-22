cmake_minimum_required(VERSION 3.0.2)

project(mvp_msgs)

find_package(catkin REQUIRED COMPONENTS
  nav_msgs
  sensor_msgs
  std_msgs
  geometry_msgs
  dynamic_reconfigure
  actionlib_msgs
  geographic_msgs
)
file(GLOB MSG_FILES ${CMAKE_CURRENT_SOURCE_DIR}/**/*.msg)
file(GLOB SRV_FILES ${PROJECT_SOURCE_DIR}/**/*.srv)
file(GLOB CFG_FILES ${PROJECT_SOURCE_DIR}/**/*.cfg)
file(GLOB ACT_FILES ${PROJECT_SOURCE_DIR}/**/*.action)

foreach(I IN ITEMS ${MSG_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  add_message_files(FILES ${ITEM_NAME})
endforeach()

foreach(I IN ITEMS ${SRV_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  add_service_files(FILES ${ITEM_NAME})
endforeach()

foreach(I IN ITEMS ${CFG_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  generate_dynamic_reconfigure_options(${ITEM_NAME})
endforeach()

foreach(I IN ITEMS ${ACT_FILES})
  get_filename_component(ITEM_NAME ${I} NAME)
  add_action_files(FILES ${ITEM_NAME})
endforeach()

## Generate added messages and services with any dependencies listed here
generate_messages(
  DEPENDENCIES
    actionlib_msgs
    dynamic_reconfigure
    geometry_msgs
    sensor_msgs
    std_msgs
    nav_msgs
    geographic_msgs
)

generate_dynamic_reconfigure_options(
  ${CFG_FILES}
)

catkin_package(
  CATKIN_DEPENDS
    nav_msgs
    sensor_msgs
    std_msgs
    dynamic_reconfigure
    actionlib_msgs
    geometry_msgs
    geographic_msgs
)
