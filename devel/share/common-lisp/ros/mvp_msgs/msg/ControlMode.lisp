; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-msg)


;//! \htmlinclude ControlMode.msg.html

(cl:defclass <ControlMode> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (dofs
    :reader dofs
    :initarg :dofs
    :type (cl:vector cl:integer)
   :initform (cl:make-array 0 :element-type 'cl:integer :initial-element 0))
   (pid_x
    :reader pid_x
    :initarg :pid_x
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_y
    :reader pid_y
    :initarg :pid_y
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_z
    :reader pid_z
    :initarg :pid_z
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_roll
    :reader pid_roll
    :initarg :pid_roll
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_pitch
    :reader pid_pitch
    :initarg :pid_pitch
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_yaw
    :reader pid_yaw
    :initarg :pid_yaw
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_surge
    :reader pid_surge
    :initarg :pid_surge
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_sway
    :reader pid_sway
    :initarg :pid_sway
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_heave
    :reader pid_heave
    :initarg :pid_heave
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_roll_rate
    :reader pid_roll_rate
    :initarg :pid_roll_rate
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_pitch_rate
    :reader pid_pitch_rate
    :initarg :pid_pitch_rate
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains))
   (pid_yaw_rate
    :reader pid_yaw_rate
    :initarg :pid_yaw_rate
    :type mvp_msgs-msg:PIDgains
    :initform (cl:make-instance 'mvp_msgs-msg:PIDgains)))
)

(cl:defclass ControlMode (<ControlMode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ControlMode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ControlMode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-msg:<ControlMode> is deprecated: use mvp_msgs-msg:ControlMode instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:name-val is deprecated.  Use mvp_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'dofs-val :lambda-list '(m))
(cl:defmethod dofs-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:dofs-val is deprecated.  Use mvp_msgs-msg:dofs instead.")
  (dofs m))

(cl:ensure-generic-function 'pid_x-val :lambda-list '(m))
(cl:defmethod pid_x-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_x-val is deprecated.  Use mvp_msgs-msg:pid_x instead.")
  (pid_x m))

(cl:ensure-generic-function 'pid_y-val :lambda-list '(m))
(cl:defmethod pid_y-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_y-val is deprecated.  Use mvp_msgs-msg:pid_y instead.")
  (pid_y m))

(cl:ensure-generic-function 'pid_z-val :lambda-list '(m))
(cl:defmethod pid_z-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_z-val is deprecated.  Use mvp_msgs-msg:pid_z instead.")
  (pid_z m))

(cl:ensure-generic-function 'pid_roll-val :lambda-list '(m))
(cl:defmethod pid_roll-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_roll-val is deprecated.  Use mvp_msgs-msg:pid_roll instead.")
  (pid_roll m))

(cl:ensure-generic-function 'pid_pitch-val :lambda-list '(m))
(cl:defmethod pid_pitch-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_pitch-val is deprecated.  Use mvp_msgs-msg:pid_pitch instead.")
  (pid_pitch m))

(cl:ensure-generic-function 'pid_yaw-val :lambda-list '(m))
(cl:defmethod pid_yaw-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_yaw-val is deprecated.  Use mvp_msgs-msg:pid_yaw instead.")
  (pid_yaw m))

(cl:ensure-generic-function 'pid_surge-val :lambda-list '(m))
(cl:defmethod pid_surge-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_surge-val is deprecated.  Use mvp_msgs-msg:pid_surge instead.")
  (pid_surge m))

(cl:ensure-generic-function 'pid_sway-val :lambda-list '(m))
(cl:defmethod pid_sway-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_sway-val is deprecated.  Use mvp_msgs-msg:pid_sway instead.")
  (pid_sway m))

(cl:ensure-generic-function 'pid_heave-val :lambda-list '(m))
(cl:defmethod pid_heave-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_heave-val is deprecated.  Use mvp_msgs-msg:pid_heave instead.")
  (pid_heave m))

(cl:ensure-generic-function 'pid_roll_rate-val :lambda-list '(m))
(cl:defmethod pid_roll_rate-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_roll_rate-val is deprecated.  Use mvp_msgs-msg:pid_roll_rate instead.")
  (pid_roll_rate m))

(cl:ensure-generic-function 'pid_pitch_rate-val :lambda-list '(m))
(cl:defmethod pid_pitch_rate-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_pitch_rate-val is deprecated.  Use mvp_msgs-msg:pid_pitch_rate instead.")
  (pid_pitch_rate m))

(cl:ensure-generic-function 'pid_yaw_rate-val :lambda-list '(m))
(cl:defmethod pid_yaw_rate-val ((m <ControlMode>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:pid_yaw_rate-val is deprecated.  Use mvp_msgs-msg:pid_yaw_rate instead.")
  (pid_yaw_rate m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ControlMode>)))
    "Constants for message type '<ControlMode>"
  '((:DOF_X . 0)
    (:DOF_Y . 1)
    (:DOF_Z . 2)
    (:DOF_ROLL . 3)
    (:DOF_PITCH . 4)
    (:DOF_YAW . 5)
    (:DOF_SURGE . 6)
    (:DOF_SWAY . 7)
    (:DOF_HEAVE . 8)
    (:DOF_ROLL_RATE . 9)
    (:DOF_PITCH_RATE . 10)
    (:DOF_YAW_RATE . 11))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ControlMode)))
    "Constants for message type 'ControlMode"
  '((:DOF_X . 0)
    (:DOF_Y . 1)
    (:DOF_Z . 2)
    (:DOF_ROLL . 3)
    (:DOF_PITCH . 4)
    (:DOF_YAW . 5)
    (:DOF_SURGE . 6)
    (:DOF_SWAY . 7)
    (:DOF_HEAVE . 8)
    (:DOF_ROLL_RATE . 9)
    (:DOF_PITCH_RATE . 10)
    (:DOF_YAW_RATE . 11))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ControlMode>) ostream)
  "Serializes a message object of type '<ControlMode>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dofs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'dofs))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_x) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_y) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_z) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_roll) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_pitch) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_yaw) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_surge) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_sway) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_heave) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_roll_rate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_pitch_rate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pid_yaw_rate) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ControlMode>) istream)
  "Deserializes a message object of type '<ControlMode>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dofs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dofs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296)))))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_x) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_y) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_z) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_roll) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_pitch) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_yaw) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_surge) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_sway) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_heave) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_roll_rate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_pitch_rate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pid_yaw_rate) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ControlMode>)))
  "Returns string type for a message object of type '<ControlMode>"
  "mvp_msgs/ControlMode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ControlMode)))
  "Returns string type for a message object of type 'ControlMode"
  "mvp_msgs/ControlMode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ControlMode>)))
  "Returns md5sum for a message object of type '<ControlMode>"
  "5d6ffb9dbcb11283ec4e54683a5c1e8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ControlMode)))
  "Returns md5sum for a message object of type 'ControlMode"
  "5d6ffb9dbcb11283ec4e54683a5c1e8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ControlMode>)))
  "Returns full string definition for message of type '<ControlMode>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ControlMode)))
  "Returns full string definition for message of type 'ControlMode"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ControlMode>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dofs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_x))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_y))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_z))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_roll))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_pitch))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_yaw))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_surge))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_sway))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_heave))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_roll_rate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_pitch_rate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pid_yaw_rate))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ControlMode>))
  "Converts a ROS message object to a list"
  (cl:list 'ControlMode
    (cl:cons ':name (name msg))
    (cl:cons ':dofs (dofs msg))
    (cl:cons ':pid_x (pid_x msg))
    (cl:cons ':pid_y (pid_y msg))
    (cl:cons ':pid_z (pid_z msg))
    (cl:cons ':pid_roll (pid_roll msg))
    (cl:cons ':pid_pitch (pid_pitch msg))
    (cl:cons ':pid_yaw (pid_yaw msg))
    (cl:cons ':pid_surge (pid_surge msg))
    (cl:cons ':pid_sway (pid_sway msg))
    (cl:cons ':pid_heave (pid_heave msg))
    (cl:cons ':pid_roll_rate (pid_roll_rate msg))
    (cl:cons ':pid_pitch_rate (pid_pitch_rate msg))
    (cl:cons ':pid_yaw_rate (pid_yaw_rate msg))
))
