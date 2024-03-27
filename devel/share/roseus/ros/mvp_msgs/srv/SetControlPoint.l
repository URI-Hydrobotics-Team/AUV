;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::SetControlPoint)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'SetControlPoint (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::SETCONTROLPOINT")
  (make-package "MVP_MSGS::SETCONTROLPOINT"))
(unless (find-package "MVP_MSGS::SETCONTROLPOINTREQUEST")
  (make-package "MVP_MSGS::SETCONTROLPOINTREQUEST"))
(unless (find-package "MVP_MSGS::SETCONTROLPOINTRESPONSE")
  (make-package "MVP_MSGS::SETCONTROLPOINTRESPONSE"))

(in-package "ROS")





(defclass mvp_msgs::SetControlPointRequest
  :super ros::object
  :slots (_setpoint ))

(defmethod mvp_msgs::SetControlPointRequest
  (:init
   (&key
    ((:setpoint __setpoint) (instance mvp_msgs::ControlProcess :init))
    )
   (send-super :init)
   (setq _setpoint __setpoint)
   self)
  (:setpoint
   (&rest __setpoint)
   (if (keywordp (car __setpoint))
       (send* _setpoint __setpoint)
     (progn
       (if __setpoint (setq _setpoint (car __setpoint)))
       _setpoint)))
  (:serialization-length
   ()
   (+
    ;; mvp_msgs/ControlProcess _setpoint
    (send _setpoint :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mvp_msgs/ControlProcess _setpoint
       (send _setpoint :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mvp_msgs/ControlProcess _setpoint
     (send _setpoint :deserialize buf ptr-) (incf ptr- (send _setpoint :serialization-length))
   ;;
   self)
  )

(defclass mvp_msgs::SetControlPointResponse
  :super ros::object
  :slots ())

(defmethod mvp_msgs::SetControlPointResponse
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mvp_msgs::SetControlPoint
  :super ros::object
  :slots ())

(setf (get mvp_msgs::SetControlPoint :md5sum-) "572b0a2f8f3a00d3d99441cd02e5edb1")
(setf (get mvp_msgs::SetControlPoint :datatype-) "mvp_msgs/SetControlPoint")
(setf (get mvp_msgs::SetControlPoint :request) mvp_msgs::SetControlPointRequest)
(setf (get mvp_msgs::SetControlPoint :response) mvp_msgs::SetControlPointResponse)

(defmethod mvp_msgs::SetControlPointRequest
  (:response () (instance mvp_msgs::SetControlPointResponse :init)))

(setf (get mvp_msgs::SetControlPointRequest :md5sum-) "572b0a2f8f3a00d3d99441cd02e5edb1")
(setf (get mvp_msgs::SetControlPointRequest :datatype-) "mvp_msgs/SetControlPointRequest")
(setf (get mvp_msgs::SetControlPointRequest :definition-)
      "#
#   This file is part of MVP-Mission program.
#
#   MVP-Mission is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   MVP-Mission is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.
#
#   Author: Emir Cem Gezer
#   Email: emircem@uri.edu;emircem.gezer@gmail.com
#   Year: 2022
#
#   Copyright (C) 2022 Smart Ocean Systems Laboratory
#

mvp_msgs/ControlProcess setpoint

================================================================================
MSG: mvp_msgs/ControlProcess
#
#   This file is part of MVP-Mission program.
#
#   MVP-Mission is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   MVP-Mission is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.
#
#   Author: Emir Cem Gezer
#   Email: emircem@uri.edu;emircem.gezer@gmail.com
#   Year: 2022
#
#   Copyright (C) 2022 Smart Ocean Systems Laboratory
#

std_msgs/Header header
string control_mode
geometry_msgs/Vector3 position
geometry_msgs/Vector3 orientation
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 angular_rate
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")

(setf (get mvp_msgs::SetControlPointResponse :md5sum-) "572b0a2f8f3a00d3d99441cd02e5edb1")
(setf (get mvp_msgs::SetControlPointResponse :datatype-) "mvp_msgs/SetControlPointResponse")
(setf (get mvp_msgs::SetControlPointResponse :definition-)
      "#
#   This file is part of MVP-Mission program.
#
#   MVP-Mission is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   MVP-Mission is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.
#
#   Author: Emir Cem Gezer
#   Email: emircem@uri.edu;emircem.gezer@gmail.com
#   Year: 2022
#
#   Copyright (C) 2022 Smart Ocean Systems Laboratory
#

mvp_msgs/ControlProcess setpoint

================================================================================
MSG: mvp_msgs/ControlProcess
#
#   This file is part of MVP-Mission program.
#
#   MVP-Mission is free software: you can redistribute it and/or modify
#   it under the terms of the GNU General Public License as published by
#   the Free Software Foundation, either version 3 of the License, or
#   (at your option) any later version.
#
#   MVP-Mission is distributed in the hope that it will be useful,
#   but WITHOUT ANY WARRANTY; without even the implied warranty of
#   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#   GNU General Public License for more details.
#
#   You should have received a copy of the GNU General Public License
#   along with MVP-Mission.  If not, see <https://www.gnu.org/licenses/>.
#
#   Author: Emir Cem Gezer
#   Email: emircem@uri.edu;emircem.gezer@gmail.com
#   Year: 2022
#
#   Copyright (C) 2022 Smart Ocean Systems Laboratory
#

std_msgs/Header header
string control_mode
geometry_msgs/Vector3 position
geometry_msgs/Vector3 orientation
geometry_msgs/Vector3 velocity
geometry_msgs/Vector3 angular_rate
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
---

")



(provide :mvp_msgs/SetControlPoint "572b0a2f8f3a00d3d99441cd02e5edb1")


