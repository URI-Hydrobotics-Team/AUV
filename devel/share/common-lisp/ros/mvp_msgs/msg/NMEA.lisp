; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-msg)


;//! \htmlinclude NMEA.msg.html

(cl:defclass <NMEA> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (command
    :reader command
    :initarg :command
    :type cl:string
    :initform "")
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass NMEA (<NMEA>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NMEA>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NMEA)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-msg:<NMEA> is deprecated: use mvp_msgs-msg:NMEA instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NMEA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:header-val is deprecated.  Use mvp_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'command-val :lambda-list '(m))
(cl:defmethod command-val ((m <NMEA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:command-val is deprecated.  Use mvp_msgs-msg:command instead.")
  (command m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <NMEA>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:values-val is deprecated.  Use mvp_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NMEA>) ostream)
  "Serializes a message object of type '<NMEA>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'command))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'command))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NMEA>) istream)
  "Deserializes a message object of type '<NMEA>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'command) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'command) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NMEA>)))
  "Returns string type for a message object of type '<NMEA>"
  "mvp_msgs/NMEA")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NMEA)))
  "Returns string type for a message object of type 'NMEA"
  "mvp_msgs/NMEA")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NMEA>)))
  "Returns md5sum for a message object of type '<NMEA>"
  "b6099e3b85d27b29fad46d6e31f65dc1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NMEA)))
  "Returns md5sum for a message object of type 'NMEA"
  "b6099e3b85d27b29fad46d6e31f65dc1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NMEA>)))
  "Returns full string definition for message of type '<NMEA>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Header header~%string command~%float32[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NMEA)))
  "Returns full string definition for message of type 'NMEA"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Header header~%string command~%float32[] values~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NMEA>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'command))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NMEA>))
  "Converts a ROS message object to a list"
  (cl:list 'NMEA
    (cl:cons ':header (header msg))
    (cl:cons ':command (command msg))
    (cl:cons ':values (values msg))
))
