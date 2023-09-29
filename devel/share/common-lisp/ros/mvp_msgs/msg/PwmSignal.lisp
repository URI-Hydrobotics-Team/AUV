; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-msg)


;//! \htmlinclude PwmSignal.msg.html

(cl:defclass <PwmSignal> (roslisp-msg-protocol:ros-message)
  ((signal
    :reader signal
    :initarg :signal
    :type std_msgs-msg:Float32
    :initform (cl:make-instance 'std_msgs-msg:Float32))
   (channel
    :reader channel
    :initarg :channel
    :type std_msgs-msg:Int16
    :initform (cl:make-instance 'std_msgs-msg:Int16)))
)

(cl:defclass PwmSignal (<PwmSignal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PwmSignal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PwmSignal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-msg:<PwmSignal> is deprecated: use mvp_msgs-msg:PwmSignal instead.")))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <PwmSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:signal-val is deprecated.  Use mvp_msgs-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'channel-val :lambda-list '(m))
(cl:defmethod channel-val ((m <PwmSignal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:channel-val is deprecated.  Use mvp_msgs-msg:channel instead.")
  (channel m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PwmSignal>) ostream)
  "Serializes a message object of type '<PwmSignal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'signal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'channel) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PwmSignal>) istream)
  "Deserializes a message object of type '<PwmSignal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'signal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'channel) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PwmSignal>)))
  "Returns string type for a message object of type '<PwmSignal>"
  "mvp_msgs/PwmSignal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PwmSignal)))
  "Returns string type for a message object of type 'PwmSignal"
  "mvp_msgs/PwmSignal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PwmSignal>)))
  "Returns md5sum for a message object of type '<PwmSignal>"
  "991ddd8c160299aa4b755054be922e8d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PwmSignal)))
  "Returns md5sum for a message object of type 'PwmSignal"
  "991ddd8c160299aa4b755054be922e8d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PwmSignal>)))
  "Returns full string definition for message of type '<PwmSignal>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Float32 signal~%std_msgs/Int16 channel~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PwmSignal)))
  "Returns full string definition for message of type 'PwmSignal"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Float32 signal~%std_msgs/Int16 channel~%================================================================================~%MSG: std_msgs/Float32~%float32 data~%================================================================================~%MSG: std_msgs/Int16~%int16 data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PwmSignal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'signal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'channel))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PwmSignal>))
  "Converts a ROS message object to a list"
  (cl:list 'PwmSignal
    (cl:cons ':signal (signal msg))
    (cl:cons ':channel (channel msg))
))
