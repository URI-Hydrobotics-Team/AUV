; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude GetControlModes-request.msg.html

(cl:defclass <GetControlModes-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetControlModes-request (<GetControlModes-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetControlModes-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetControlModes-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetControlModes-request> is deprecated: use mvp_msgs-srv:GetControlModes-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetControlModes-request>) ostream)
  "Serializes a message object of type '<GetControlModes-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetControlModes-request>) istream)
  "Deserializes a message object of type '<GetControlModes-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetControlModes-request>)))
  "Returns string type for a service object of type '<GetControlModes-request>"
  "mvp_msgs/GetControlModesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlModes-request)))
  "Returns string type for a service object of type 'GetControlModes-request"
  "mvp_msgs/GetControlModesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetControlModes-request>)))
  "Returns md5sum for a message object of type '<GetControlModes-request>"
  "603519323f79819b7761d3e2017e75dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetControlModes-request)))
  "Returns md5sum for a message object of type 'GetControlModes-request"
  "603519323f79819b7761d3e2017e75dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetControlModes-request>)))
  "Returns full string definition for message of type '<GetControlModes-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetControlModes-request)))
  "Returns full string definition for message of type 'GetControlModes-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetControlModes-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetControlModes-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetControlModes-request
))
;//! \htmlinclude GetControlModes-response.msg.html

(cl:defclass <GetControlModes-response> (roslisp-msg-protocol:ros-message)
  ((modes
    :reader modes
    :initarg :modes
    :type (cl:vector mvp_msgs-msg:ControlMode)
   :initform (cl:make-array 0 :element-type 'mvp_msgs-msg:ControlMode :initial-element (cl:make-instance 'mvp_msgs-msg:ControlMode))))
)

(cl:defclass GetControlModes-response (<GetControlModes-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetControlModes-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetControlModes-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetControlModes-response> is deprecated: use mvp_msgs-srv:GetControlModes-response instead.")))

(cl:ensure-generic-function 'modes-val :lambda-list '(m))
(cl:defmethod modes-val ((m <GetControlModes-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:modes-val is deprecated.  Use mvp_msgs-srv:modes instead.")
  (modes m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetControlModes-response>) ostream)
  "Serializes a message object of type '<GetControlModes-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'modes))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'modes))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetControlModes-response>) istream)
  "Deserializes a message object of type '<GetControlModes-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'modes) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'modes)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mvp_msgs-msg:ControlMode))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetControlModes-response>)))
  "Returns string type for a service object of type '<GetControlModes-response>"
  "mvp_msgs/GetControlModesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlModes-response)))
  "Returns string type for a service object of type 'GetControlModes-response"
  "mvp_msgs/GetControlModesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetControlModes-response>)))
  "Returns md5sum for a message object of type '<GetControlModes-response>"
  "603519323f79819b7761d3e2017e75dd")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetControlModes-response)))
  "Returns md5sum for a message object of type 'GetControlModes-response"
  "603519323f79819b7761d3e2017e75dd")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetControlModes-response>)))
  "Returns full string definition for message of type '<GetControlModes-response>"
  (cl:format cl:nil "mvp_msgs/ControlMode[] modes~%~%================================================================================~%MSG: mvp_msgs/ControlMode~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetControlModes-response)))
  "Returns full string definition for message of type 'GetControlModes-response"
  (cl:format cl:nil "mvp_msgs/ControlMode[] modes~%~%================================================================================~%MSG: mvp_msgs/ControlMode~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetControlModes-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'modes) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetControlModes-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetControlModes-response
    (cl:cons ':modes (modes msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetControlModes)))
  'GetControlModes-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetControlModes)))
  'GetControlModes-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlModes)))
  "Returns string type for a service object of type '<GetControlModes>"
  "mvp_msgs/GetControlModes")