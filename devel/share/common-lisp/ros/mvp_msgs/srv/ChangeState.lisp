; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude ChangeState-request.msg.html

(cl:defclass <ChangeState-request> (roslisp-msg-protocol:ros-message)
  ((state
    :reader state
    :initarg :state
    :type cl:string
    :initform ""))
)

(cl:defclass ChangeState-request (<ChangeState-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<ChangeState-request> is deprecated: use mvp_msgs-srv:ChangeState-request instead.")))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeState-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:state-val is deprecated.  Use mvp_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-request>) ostream)
  "Serializes a message object of type '<ChangeState-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-request>) istream)
  "Deserializes a message object of type '<ChangeState-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-request>)))
  "Returns string type for a service object of type '<ChangeState-request>"
  "mvp_msgs/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-request)))
  "Returns string type for a service object of type 'ChangeState-request"
  "mvp_msgs/ChangeStateRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-request>)))
  "Returns md5sum for a message object of type '<ChangeState-request>"
  "6fc3cc8eedce7a52d2a746bc3e0301b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-request)))
  "Returns md5sum for a message object of type 'ChangeState-request"
  "6fc3cc8eedce7a52d2a746bc3e0301b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-request>)))
  "Returns full string definition for message of type '<ChangeState-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-request)))
  "Returns full string definition for message of type 'ChangeState-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string state~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-request
    (cl:cons ':state (state msg))
))
;//! \htmlinclude ChangeState-response.msg.html

(cl:defclass <ChangeState-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:boolean
    :initform cl:nil)
   (state
    :reader state
    :initarg :state
    :type mvp_msgs-msg:HelmState
    :initform (cl:make-instance 'mvp_msgs-msg:HelmState)))
)

(cl:defclass ChangeState-response (<ChangeState-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChangeState-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChangeState-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<ChangeState-response> is deprecated: use mvp_msgs-srv:ChangeState-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <ChangeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:status-val is deprecated.  Use mvp_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ChangeState-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:state-val is deprecated.  Use mvp_msgs-srv:state instead.")
  (state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChangeState-response>) ostream)
  "Serializes a message object of type '<ChangeState-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'status) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChangeState-response>) istream)
  "Deserializes a message object of type '<ChangeState-response>"
    (cl:setf (cl:slot-value msg 'status) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChangeState-response>)))
  "Returns string type for a service object of type '<ChangeState-response>"
  "mvp_msgs/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState-response)))
  "Returns string type for a service object of type 'ChangeState-response"
  "mvp_msgs/ChangeStateResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChangeState-response>)))
  "Returns md5sum for a message object of type '<ChangeState-response>"
  "6fc3cc8eedce7a52d2a746bc3e0301b9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChangeState-response)))
  "Returns md5sum for a message object of type 'ChangeState-response"
  "6fc3cc8eedce7a52d2a746bc3e0301b9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChangeState-response>)))
  "Returns full string definition for message of type '<ChangeState-response>"
  (cl:format cl:nil "bool status~%mvp_msgs/HelmState state~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChangeState-response)))
  "Returns full string definition for message of type 'ChangeState-response"
  (cl:format cl:nil "bool status~%mvp_msgs/HelmState state~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChangeState-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChangeState-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ChangeState-response
    (cl:cons ':status (status msg))
    (cl:cons ':state (state msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ChangeState)))
  'ChangeState-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChangeState)))
  "Returns string type for a service object of type '<ChangeState>"
  "mvp_msgs/ChangeState")