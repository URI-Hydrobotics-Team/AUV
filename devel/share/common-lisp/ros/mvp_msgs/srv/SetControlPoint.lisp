; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-srv)


;//! \htmlinclude SetControlPoint-request.msg.html

(cl:defclass <SetControlPoint-request> (roslisp-msg-protocol:ros-message)
  ((setpoint
    :reader setpoint
    :initarg :setpoint
    :type mvp_msgs-msg:ControlProcess
    :initform (cl:make-instance 'mvp_msgs-msg:ControlProcess)))
)

(cl:defclass SetControlPoint-request (<SetControlPoint-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlPoint-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlPoint-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<SetControlPoint-request> is deprecated: use mvp_msgs-srv:SetControlPoint-request instead.")))

(cl:ensure-generic-function 'setpoint-val :lambda-list '(m))
(cl:defmethod setpoint-val ((m <SetControlPoint-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-srv:setpoint-val is deprecated.  Use mvp_msgs-srv:setpoint instead.")
  (setpoint m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlPoint-request>) ostream)
  "Serializes a message object of type '<SetControlPoint-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'setpoint) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlPoint-request>) istream)
  "Deserializes a message object of type '<SetControlPoint-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'setpoint) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlPoint-request>)))
  "Returns string type for a service object of type '<SetControlPoint-request>"
  "mvp_msgs/SetControlPointRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlPoint-request)))
  "Returns string type for a service object of type 'SetControlPoint-request"
  "mvp_msgs/SetControlPointRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlPoint-request>)))
  "Returns md5sum for a message object of type '<SetControlPoint-request>"
  "572b0a2f8f3a00d3d99441cd02e5edb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlPoint-request)))
  "Returns md5sum for a message object of type 'SetControlPoint-request"
  "572b0a2f8f3a00d3d99441cd02e5edb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlPoint-request>)))
  "Returns full string definition for message of type '<SetControlPoint-request>"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%mvp_msgs/ControlProcess setpoint~%~%================================================================================~%MSG: mvp_msgs/ControlProcess~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Header header~%string control_mode~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 angular_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlPoint-request)))
  "Returns full string definition for message of type 'SetControlPoint-request"
  (cl:format cl:nil "#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%mvp_msgs/ControlProcess setpoint~%~%================================================================================~%MSG: mvp_msgs/ControlProcess~%#~%#   This file is part of MVP-Mission program.~%#~%#   MVP-Mission is free software: you can redistribute it and/or modify~%#   it under the terms of the GNU General Public License as published by~%#   the Free Software Foundation, either version 3 of the License, or~%#   (at your option) any later version.~%#~%#   MVP-Mission is distributed in the hope that it will be useful,~%#   but WITHOUT ANY WARRANTY; without even the implied warranty of~%#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the~%#   GNU General Public License for more details.~%#~%#   You should have received a copy of the GNU General Public License~%#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.~%#~%#   Author: Emir Cem Gezer~%#   Email: emircem@uri.edu;emircem.gezer@gmail.com~%#   Year: 2022~%#~%#   Copyright (C) 2022 Smart Ocean Systems Laboratory~%#~%~%std_msgs/Header header~%string control_mode~%geometry_msgs/Vector3 position~%geometry_msgs/Vector3 orientation~%geometry_msgs/Vector3 velocity~%geometry_msgs/Vector3 angular_rate~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlPoint-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'setpoint))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlPoint-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlPoint-request
    (cl:cons ':setpoint (setpoint msg))
))
;//! \htmlinclude SetControlPoint-response.msg.html

(cl:defclass <SetControlPoint-response> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SetControlPoint-response (<SetControlPoint-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetControlPoint-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetControlPoint-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-srv:<SetControlPoint-response> is deprecated: use mvp_msgs-srv:SetControlPoint-response instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetControlPoint-response>) ostream)
  "Serializes a message object of type '<SetControlPoint-response>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetControlPoint-response>) istream)
  "Deserializes a message object of type '<SetControlPoint-response>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetControlPoint-response>)))
  "Returns string type for a service object of type '<SetControlPoint-response>"
  "mvp_msgs/SetControlPointResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlPoint-response)))
  "Returns string type for a service object of type 'SetControlPoint-response"
  "mvp_msgs/SetControlPointResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetControlPoint-response>)))
  "Returns md5sum for a message object of type '<SetControlPoint-response>"
  "572b0a2f8f3a00d3d99441cd02e5edb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetControlPoint-response)))
  "Returns md5sum for a message object of type 'SetControlPoint-response"
  "572b0a2f8f3a00d3d99441cd02e5edb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetControlPoint-response>)))
  "Returns full string definition for message of type '<SetControlPoint-response>"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetControlPoint-response)))
  "Returns full string definition for message of type 'SetControlPoint-response"
  (cl:format cl:nil "~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetControlPoint-response>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetControlPoint-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetControlPoint-response
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetControlPoint)))
  'SetControlPoint-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetControlPoint)))
  'SetControlPoint-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetControlPoint)))
  "Returns string type for a service object of type '<SetControlPoint>"
  "mvp_msgs/SetControlPoint")