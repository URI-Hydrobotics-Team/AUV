# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "stonefish_mvp: 3 messages, 2 services")

set(MSG_I_FLAGS "-Istonefish_mvp:/home/devin/wor_catkin_ws/src/stonefish_mvp/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(stonefish_mvp_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_custom_target(_stonefish_mvp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_mvp" "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_custom_target(_stonefish_mvp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_mvp" "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_custom_target(_stonefish_mvp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_mvp" "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" "geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Point"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_custom_target(_stonefish_mvp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_mvp" "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" ""
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_custom_target(_stonefish_mvp_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "stonefish_mvp" "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_cpp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_cpp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
)

### Generating Services
_generate_srv_cpp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
)
_generate_srv_cpp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
)

### Generating Module File
_generate_module_cpp(stonefish_mvp
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(stonefish_mvp_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(stonefish_mvp_generate_messages stonefish_mvp_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_cpp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_cpp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_cpp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_cpp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_cpp _stonefish_mvp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_mvp_gencpp)
add_dependencies(stonefish_mvp_gencpp stonefish_mvp_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_mvp_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_eus(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_eus(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
)

### Generating Services
_generate_srv_eus(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
)
_generate_srv_eus(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
)

### Generating Module File
_generate_module_eus(stonefish_mvp
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(stonefish_mvp_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(stonefish_mvp_generate_messages stonefish_mvp_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_eus _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_eus _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_eus _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_eus _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_eus _stonefish_mvp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_mvp_geneus)
add_dependencies(stonefish_mvp_geneus stonefish_mvp_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_mvp_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_lisp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_lisp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
)

### Generating Services
_generate_srv_lisp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
)
_generate_srv_lisp(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
)

### Generating Module File
_generate_module_lisp(stonefish_mvp
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(stonefish_mvp_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(stonefish_mvp_generate_messages stonefish_mvp_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_lisp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_lisp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_lisp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_lisp _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_lisp _stonefish_mvp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_mvp_genlisp)
add_dependencies(stonefish_mvp_genlisp stonefish_mvp_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_mvp_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_nodejs(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_nodejs(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
)

### Generating Services
_generate_srv_nodejs(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
)
_generate_srv_nodejs(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
)

### Generating Module File
_generate_module_nodejs(stonefish_mvp
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(stonefish_mvp_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(stonefish_mvp_generate_messages stonefish_mvp_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_nodejs _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_nodejs _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_nodejs _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_nodejs _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_nodejs _stonefish_mvp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_mvp_gennodejs)
add_dependencies(stonefish_mvp_gennodejs stonefish_mvp_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_mvp_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_py(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
)
_generate_msg_py(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
)

### Generating Services
_generate_srv_py(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
)
_generate_srv_py(stonefish_mvp
  "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
)

### Generating Module File
_generate_module_py(stonefish_mvp
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(stonefish_mvp_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(stonefish_mvp_generate_messages stonefish_mvp_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/Int32Stamped.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_py _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/ThrusterState.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_py _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/msg/BeaconInfo.msg" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_py _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_py _stonefish_mvp_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/stonefish_mvp/srv/SonarSettings2.srv" NAME_WE)
add_dependencies(stonefish_mvp_generate_messages_py _stonefish_mvp_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(stonefish_mvp_genpy)
add_dependencies(stonefish_mvp_genpy stonefish_mvp_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS stonefish_mvp_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/stonefish_mvp
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(stonefish_mvp_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(stonefish_mvp_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/stonefish_mvp
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(stonefish_mvp_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(stonefish_mvp_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/stonefish_mvp
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(stonefish_mvp_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(stonefish_mvp_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/stonefish_mvp
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(stonefish_mvp_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(stonefish_mvp_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/stonefish_mvp
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(stonefish_mvp_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(stonefish_mvp_generate_messages_py geometry_msgs_generate_messages_py)
endif()
