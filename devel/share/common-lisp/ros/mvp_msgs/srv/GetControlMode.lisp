; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude GetControlMode-request.msg.html

(cl:defclass <GetControlMode-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetControlMode-request (<GetControlMode-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetControlMode-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetControlMode-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetControlMode-request> is deprecated: use mvp_msgs-srv:GetControlMode-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetControlMode-request>) ostream)
  "Serializes a message object of type '<GetControlMode-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetControlMode-request>) istream)
  "Deserializes a message object of type '<GetControlMode-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetControlMode-request>)))
  "Returns string type for a service object of type '<GetControlMode-request>"
  "mvp_msgs/GetControlModeRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlMode-request)))
  "Returns string type for a service object of type 'GetControlMode-request"
  "mvp_msgs/GetControlModeRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetControlMode-request>)))
  "Returns md5sum for a message object of type '<GetControlMode-request>"
  "fb5640b19687f4d5df9afe0ad9c910ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetControlMode-request)))
  "Returns md5sum for a message object of type 'GetControlMode-request"
  "fb5640b19687f4d5df9afe0ad9c910ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetControlMode-request>)))
  "Returns full string definition for message of type '<GetControlMode-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetControlMode-request)))
  "Returns full string definition for message of type 'GetControlMode-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetControlMode-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetControlMode-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetControlMode-request
))
;//! \htmlinclude GetControlMode-response.msg.html

(cl:defclass <GetControlMode-response> (roslisp-msg-protocol:ros-message)
  ((mode
    :reader mode
    :initarg :mode
    :type mvp_msgs-msg:ControlMode
    :initform (cl:make-instance 'mvp_msgs-msg:ControlMode)))
)

(cl:defclass GetControlMode-response (<GetControlMode-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetControlMode-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetControlMode-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetControlMode-response> is deprecated: use mvp_msgs-srv:GetControlMode-response instead.")))

(cl:ensure-generic-function 'mode-val :lambda-list '(m))
(cl:defmethod mode-val ((m <GetControlMode-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:mode-val is deprecated.  Use mvp_msgs-srv:mode instead.")
  (mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetControlMode-response>) ostream)
  "Serializes a message object of type '<GetControlMode-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'mode) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetControlMode-response>) istream)
  "Deserializes a message object of type '<GetControlMode-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'mode) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetControlMode-response>)))
  "Returns string type for a service object of type '<GetControlMode-response>"
  "mvp_msgs/GetControlModeResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlMode-response)))
  "Returns string type for a service object of type 'GetControlMode-response"
  "mvp_msgs/GetControlModeResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetControlMode-response>)))
  "Returns md5sum for a message object of type '<GetControlMode-response>"
  "fb5640b19687f4d5df9afe0ad9c910ef")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetControlMode-response)))
  "Returns md5sum for a message object of type 'GetControlMode-response"
  "fb5640b19687f4d5df9afe0ad9c910ef")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetControlMode-response>)))
  "Returns full string definition for message of type '<GetControlMode-response>"
  (cl:format cl:nil "mvp_msgs/ControlMode mode~%~%================================================================================~%MSG: mvp_msgs/ControlMode~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetControlMode-response)))
  "Returns full string definition for message of type 'GetControlMode-response"
  (cl:format cl:nil "mvp_msgs/ControlMode mode~%~%================================================================================~%MSG: mvp_msgs/ControlMode~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%int32 DOF_X          = 0~%int32 DOF_Y          = 1~%int32 DOF_Z          = 2~%int32 DOF_ROLL       = 3~%int32 DOF_PITCH      = 4~%int32 DOF_YAW        = 5~%int32 DOF_SURGE      = 6~%int32 DOF_SWAY       = 7~%int32 DOF_HEAVE      = 8~%int32 DOF_ROLL_RATE  = 9~%int32 DOF_PITCH_RATE = 10~%int32 DOF_YAW_RATE   = 11~%~%string name~%int32[] dofs~%~%mvp_msgs/PIDgains pid_x~%mvp_msgs/PIDgains pid_y~%mvp_msgs/PIDgains pid_z~%~%mvp_msgs/PIDgains pid_roll~%mvp_msgs/PIDgains pid_pitch~%mvp_msgs/PIDgains pid_yaw~%~%mvp_msgs/PIDgains pid_surge~%mvp_msgs/PIDgains pid_sway~%mvp_msgs/PIDgains pid_heave~%~%mvp_msgs/PIDgains pid_roll_rate~%mvp_msgs/PIDgains pid_pitch_rate~%mvp_msgs/PIDgains pid_yaw_rate~%================================================================================~%MSG: mvp_msgs/PIDgains~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%float64 kp~%float64 ki~%float64 kd~%float64 k_i_max~%float64 k_i_min~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetControlMode-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'mode))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetControlMode-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetControlMode-response
    (cl:cons ':mode (mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetControlMode)))
  'GetControlMode-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetControlMode)))
  'GetControlMode-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetControlMode)))
  "Returns string type for a service object of type '<GetControlMode>"
  "mvp_msgs/GetControlMode")