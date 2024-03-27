# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mvp_msgs: 16 messages, 6 services")

set(MSG_I_FLAGS "-Imvp_msgs:/home/devin/wor_catkin_ws/src/mvp_msgs/msg;-Iactionlib_msgs:/opt/ros/noetic/share/actionlib_msgs/cmake/../msg;-Idynamic_reconfigure:/opt/ros/noetic/share/dynamic_reconfigure/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/noetic/share/nav_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mvp_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" "mvp_msgs/PIDgains"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" "mvp_msgs/PIDgains:mvp_msgs/ControlMode"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" "geometry_msgs/Pose:mvp_msgs/DVLBeam:geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" "geometry_msgs/Pose:geometry_msgs/Point:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/PoseStamped"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" ""
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" "mvp_msgs/HelmState"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" ""
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" "std_msgs/Int16:std_msgs/Float32"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" "geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" "mvp_msgs/HelmState"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" "mvp_msgs/PIDgains:mvp_msgs/ControlMode"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" "mvp_msgs/PIDgains:mvp_msgs/ControlMode"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" "mvp_msgs/HelmState"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" "mvp_msgs/HelmState"
)

get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_custom_target(_mvp_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mvp_msgs" "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" "mvp_msgs/ControlProcess:geometry_msgs/Vector3:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)

### Generating Services
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_cpp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
)

### Generating Module File
_generate_module_cpp(mvp_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mvp_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mvp_msgs_generate_messages mvp_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_cpp _mvp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mvp_msgs_gencpp)
add_dependencies(mvp_msgs_gencpp mvp_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mvp_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_msg_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)

### Generating Services
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)
_generate_srv_eus(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
)

### Generating Module File
_generate_module_eus(mvp_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(mvp_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(mvp_msgs_generate_messages mvp_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_eus _mvp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mvp_msgs_geneus)
add_dependencies(mvp_msgs_geneus mvp_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mvp_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_msg_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)

### Generating Services
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)
_generate_srv_lisp(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
)

### Generating Module File
_generate_module_lisp(mvp_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mvp_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mvp_msgs_generate_messages mvp_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_lisp _mvp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mvp_msgs_genlisp)
add_dependencies(mvp_msgs_genlisp mvp_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mvp_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_msg_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)

### Generating Services
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)
_generate_srv_nodejs(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
)

### Generating Module File
_generate_module_nodejs(mvp_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(mvp_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(mvp_msgs_generate_messages mvp_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_nodejs _mvp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mvp_msgs_gennodejs)
add_dependencies(mvp_msgs_gennodejs mvp_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mvp_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/PoseStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Int16.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Float32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_msg_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)

### Generating Services
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg;/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)
_generate_srv_py(mvp_msgs
  "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv"
  "${MSG_I_FLAGS}"
  "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
)

### Generating Module File
_generate_module_py(mvp_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mvp_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mvp_msgs_generate_messages mvp_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlMode.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlModes.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/ControlProcess.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVL.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/DVLBeam.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64Stamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Float64StampedWithVariance.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmState.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/HelmStates.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/MSISInfo.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/NMEA.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PIDgains.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/Power.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/PwmSignal.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/StringStamped.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/msg/VehicleStatus.msg" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/ChangeState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlMode.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetControlModes.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetState.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/GetStates.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/devin/wor_catkin_ws/src/mvp_msgs/srv/SetControlPoint.srv" NAME_WE)
add_dependencies(mvp_msgs_generate_messages_py _mvp_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mvp_msgs_genpy)
add_dependencies(mvp_msgs_genpy mvp_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mvp_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mvp_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET dynamic_reconfigure_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp dynamic_reconfigure_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(mvp_msgs_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/mvp_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET dynamic_reconfigure_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus dynamic_reconfigure_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(mvp_msgs_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mvp_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET dynamic_reconfigure_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp dynamic_reconfigure_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(mvp_msgs_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/mvp_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET dynamic_reconfigure_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs dynamic_reconfigure_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(mvp_msgs_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mvp_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET dynamic_reconfigure_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py dynamic_reconfigure_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(mvp_msgs_generate_messages_py nav_msgs_generate_messages_py)
endif()
