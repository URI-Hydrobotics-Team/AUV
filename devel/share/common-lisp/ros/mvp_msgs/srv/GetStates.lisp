; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude GetStates-request.msg.html

(cl:defclass <GetStates-request> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass GetStates-request (<GetStates-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStates-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStates-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetStates-request> is deprecated: use mvp_msgs-srv:GetStates-request instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStates-request>) ostream)
  "Serializes a message object of type '<GetStates-request>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStates-request>) istream)
  "Deserializes a message object of type '<GetStates-request>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStates-request>)))
  "Returns string type for a service object of type '<GetStates-request>"
  "mvp_msgs/GetStatesRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStates-request)))
  "Returns string type for a service object of type 'GetStates-request"
  "mvp_msgs/GetStatesRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStates-request>)))
  "Returns md5sum for a message object of type '<GetStates-request>"
  "7fb91daf3e8086897a6eccc9f862d3a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStates-request)))
  "Returns md5sum for a message object of type 'GetStates-request"
  "7fb91daf3e8086897a6eccc9f862d3a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStates-request>)))
  "Returns full string definition for message of type '<GetStates-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStates-request)))
  "Returns full string definition for message of type 'GetStates-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStates-request>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStates-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStates-request
))
;//! \htmlinclude GetStates-response.msg.html

(cl:defclass <GetStates-response> (roslisp-msg-protocol:ros-message)
  ((states
    :reader states
    :initarg :states
    :type (cl:vector mvp_msgs-msg:HelmState)
   :initform (cl:make-array 0 :element-type 'mvp_msgs-msg:HelmState :initial-element (cl:make-instance 'mvp_msgs-msg:HelmState))))
)

(cl:defclass GetStates-response (<GetStates-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GetStates-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GetStates-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<GetStates-response> is deprecated: use mvp_msgs-srv:GetStates-response instead.")))

(cl:ensure-generic-function 'states-val :lambda-list '(m))
(cl:defmethod states-val ((m <GetStates-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:states-val is deprecated.  Use mvp_msgs-srv:states instead.")
  (states m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GetStates-response>) ostream)
  "Serializes a message object of type '<GetStates-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'states))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'states))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GetStates-response>) istream)
  "Deserializes a message object of type '<GetStates-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'states) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'states)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'mvp_msgs-msg:HelmState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GetStates-response>)))
  "Returns string type for a service object of type '<GetStates-response>"
  "mvp_msgs/GetStatesResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStates-response)))
  "Returns string type for a service object of type 'GetStates-response"
  "mvp_msgs/GetStatesResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GetStates-response>)))
  "Returns md5sum for a message object of type '<GetStates-response>"
  "7fb91daf3e8086897a6eccc9f862d3a8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GetStates-response)))
  "Returns md5sum for a message object of type 'GetStates-response"
  "7fb91daf3e8086897a6eccc9f862d3a8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GetStates-response>)))
  "Returns full string definition for message of type '<GetStates-response>"
  (cl:format cl:nil "mvp_msgs/HelmState[] states~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GetStates-response)))
  "Returns full string definition for message of type 'GetStates-response"
  (cl:format cl:nil "mvp_msgs/HelmState[] states~%~%================================================================================~%MSG: mvp_msgs/HelmState~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%string name~%string mode~%string[] transitions~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GetStates-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'states) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GetStates-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GetStates-response
    (cl:cons ':states (states msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GetStates)))
  'GetStates-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GetStates)))
  'GetStates-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GetStates)))
  "Returns string type for a service object of type '<GetStates>"
  "mvp_msgs/GetStates")