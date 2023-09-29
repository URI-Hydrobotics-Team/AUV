;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::GetControlMode)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'GetControlMode (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::GETCONTROLMODE")
  (make-package "MVP_MSGS::GETCONTROLMODE"))
(unless (find-package "MVP_MSGS::GETCONTROLMODEREQUEST")
  (make-package "MVP_MSGS::GETCONTROLMODEREQUEST"))
(unless (find-package "MVP_MSGS::GETCONTROLMODERESPONSE")
  (make-package "MVP_MSGS::GETCONTROLMODERESPONSE"))

(in-package "ROS")





(defclass mvp_msgs::GetControlModeRequest
  :super ros::object
  :slots ())

(defmethod mvp_msgs::GetControlModeRequest
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

(defclass mvp_msgs::GetControlModeResponse
  :super ros::object
  :slots (_mode ))

(defmethod mvp_msgs::GetControlModeResponse
  (:init
   (&key
    ((:mode __mode) (instance mvp_msgs::ControlMode :init))
    )
   (send-super :init)
   (setq _mode __mode)
   self)
  (:mode
   (&rest __mode)
   (if (keywordp (car __mode))
       (send* _mode __mode)
     (progn
       (if __mode (setq _mode (car __mode)))
       _mode)))
  (:serialization-length
   ()
   (+
    ;; mvp_msgs/ControlMode _mode
    (send _mode :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mvp_msgs/ControlMode _mode
       (send _mode :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mvp_msgs/ControlMode _mode
     (send _mode :deserialize buf ptr-) (incf ptr- (send _mode :serialization-length))
   ;;
   self)
  )

(defclass mvp_msgs::GetControlMode
  :super ros::object
  :slots ())

(setf (get mvp_msgs::GetControlMode :md5sum-) "fb5640b19687f4d5df9afe0ad9c910ef")
(setf (get mvp_msgs::GetControlMode :datatype-) "mvp_msgs/GetControlMode")
(setf (get mvp_msgs::GetControlMode :request) mvp_msgs::GetControlModeRequest)
(setf (get mvp_msgs::GetControlMode :response) mvp_msgs::GetControlModeResponse)

(defmethod mvp_msgs::GetControlModeRequest
  (:response () (instance mvp_msgs::GetControlModeResponse :init)))

(setf (get mvp_msgs::GetControlModeRequest :md5sum-) "fb5640b19687f4d5df9afe0ad9c910ef")
(setf (get mvp_msgs::GetControlModeRequest :datatype-) "mvp_msgs/GetControlModeRequest")
(setf (get mvp_msgs::GetControlModeRequest :definition-)
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

---
mvp_msgs/ControlMode mode

================================================================================
MSG: mvp_msgs/ControlMode
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

int32 DOF_X          = 0
int32 DOF_Y          = 1
int32 DOF_Z          = 2
int32 DOF_ROLL       = 3
int32 DOF_PITCH      = 4
int32 DOF_YAW        = 5
int32 DOF_SURGE      = 6
int32 DOF_SWAY       = 7
int32 DOF_HEAVE      = 8
int32 DOF_ROLL_RATE  = 9
int32 DOF_PITCH_RATE = 10
int32 DOF_YAW_RATE   = 11

string name
int32[] dofs

mvp_msgs/PIDgains pid_x
mvp_msgs/PIDgains pid_y
mvp_msgs/PIDgains pid_z

mvp_msgs/PIDgains pid_roll
mvp_msgs/PIDgains pid_pitch
mvp_msgs/PIDgains pid_yaw

mvp_msgs/PIDgains pid_surge
mvp_msgs/PIDgains pid_sway
mvp_msgs/PIDgains pid_heave

mvp_msgs/PIDgains pid_roll_rate
mvp_msgs/PIDgains pid_pitch_rate
mvp_msgs/PIDgains pid_yaw_rate
================================================================================
MSG: mvp_msgs/PIDgains
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

float64 kp
float64 ki
float64 kd
float64 k_i_max
")

(setf (get mvp_msgs::GetControlModeResponse :md5sum-) "fb5640b19687f4d5df9afe0ad9c910ef")
(setf (get mvp_msgs::GetControlModeResponse :datatype-) "mvp_msgs/GetControlModeResponse")
(setf (get mvp_msgs::GetControlModeResponse :definition-)
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

---
mvp_msgs/ControlMode mode

================================================================================
MSG: mvp_msgs/ControlMode
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

int32 DOF_X          = 0
int32 DOF_Y          = 1
int32 DOF_Z          = 2
int32 DOF_ROLL       = 3
int32 DOF_PITCH      = 4
int32 DOF_YAW        = 5
int32 DOF_SURGE      = 6
int32 DOF_SWAY       = 7
int32 DOF_HEAVE      = 8
int32 DOF_ROLL_RATE  = 9
int32 DOF_PITCH_RATE = 10
int32 DOF_YAW_RATE   = 11

string name
int32[] dofs

mvp_msgs/PIDgains pid_x
mvp_msgs/PIDgains pid_y
mvp_msgs/PIDgains pid_z

mvp_msgs/PIDgains pid_roll
mvp_msgs/PIDgains pid_pitch
mvp_msgs/PIDgains pid_yaw

mvp_msgs/PIDgains pid_surge
mvp_msgs/PIDgains pid_sway
mvp_msgs/PIDgains pid_heave

mvp_msgs/PIDgains pid_roll_rate
mvp_msgs/PIDgains pid_pitch_rate
mvp_msgs/PIDgains pid_yaw_rate
================================================================================
MSG: mvp_msgs/PIDgains
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

float64 kp
float64 ki
float64 kd
float64 k_i_max
")



(provide :mvp_msgs/GetControlMode "fb5640b19687f4d5df9afe0ad9c910ef")


