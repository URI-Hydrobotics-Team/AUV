; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude GetState-request.msg.html

(cl:defclass <GetState-request> (roslisp-msg-protocol:ros-message)
  ((name
    :reader name
    :initarg :name
    :type cl:string
    :initform ""))
)

(cl:defclass GetState-request (<GetState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetState-request> is deprecated: use mvp_msgs-srv:GetState-request instead.")))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <GetState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:name-val is deprecated.  Use mvp_msgs-srv:name instead.")
  (name m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetState-request>) ostream)
  "Serializes a message object of type '<GetState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetState-request>) istream)
  "Deserializes a message object of type '<GetState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetState-request>)))
  "Returns string type for a service object of type '<GetState-request>"
  "mvp_msgs/GetStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState-request)))
  "Returns string type for a service object of type 'GetState-request"
  "mvp_msgs/GetStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetState-request>)))
  "Returns md5sum for a message object of type '<GetState-request>"
  "95826c4c034c53c3f3aa571a5a09f426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetState-request)))
  "Returns md5sum for a message object of type 'GetState-request"
  "95826c4c034c53c3f3aa571a5a09f426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetState-request>)))
  "Returns full string definition for message of type '<GetState-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetState-request)))
  "Returns full string definition for message of type 'GetState-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'name))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetState-request
    (cl:cons ':name (name msg))
))
;//! \htmlinclude GetState-response.msg.html

(cl:defclass <GetState-response> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type mvp_msgs-msg:HelmState
    :initform (cl:make-instance 'mvp_msgs-msg:HelmState)))
)

(cl:defclass GetState-response (<GetState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetState-response> is deprecated: use mvp_msgs-srv:GetState-response instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <GetState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:state-val is deprecated.  Use mvp_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetState-response>) ostream)
  "Serializes a message object of type '<GetState-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetState-response>) istream)
  "Deserializes a message object of type '<GetState-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetState-response>)))
  "Returns string type for a service object of type '<GetState-response>"
  "mvp_msgs/GetStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState-response)))
  "Returns string type for a service object of type 'GetState-response"
  "mvp_msgs/GetStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetState-response>)))
  "Returns md5sum for a message object of type '<GetState-response>"
  "95826c4c034c53c3f3aa571a5a09f426")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetState-response)))
  "Returns md5sum for a message object of type 'GetState-response"
  "95826c4c034c53c3f3aa571a5a09f426")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetState-response>)))
  "Returns full string definition for message of type '<GetState-response>"
  (cl:format cl:nil "mvp_msgs/HelmState state~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetState-response)))
  "Returns full string definition for message of type 'GetState-response"
  (cl:format cl:nil "mvp_msgs/HelmState state~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetState-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetState-response
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetState)))
  'GetState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetState)))
  'GetState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetState)))
  "Returns string type for a service object of type '<GetState>"
  "mvp_msgs/GetState")