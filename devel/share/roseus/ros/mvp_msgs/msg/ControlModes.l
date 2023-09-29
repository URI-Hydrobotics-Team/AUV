;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::ControlModes)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'ControlModes (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::CONTROLMODES")
  (make-package "MVP_MSGS::CONTROLMODES"))

(in-package "ROS")
;;//! \htmlinclude ControlModes.msg.html


(defclass mvp_msgs::ControlModes
  :super ros::object
  :slots (_modes ))

(defmethod mvp_msgs::ControlModes
  (:init
   (&key
    ((:modes __modes) ())
    )
   (send-super :init)
   (setq _modes __modes)
   self)
  (:modes
   (&rest __modes)
   (if (keywordp (car __modes))
       (send* _modes __modes)
     (progn
       (if __modes (setq _modes (car __modes)))
       _modes)))
  (:serialization-length
   ()
   (+
    ;; mvp_msgs/ControlMode[] _modes
    (apply #'+ (send-all _modes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mvp_msgs/ControlMode[] _modes
     (write-long (length _modes) s)
     (dolist (elem _modes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mvp_msgs/ControlMode[] _modes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _modes (let (r) (dotimes (i n) (push (instance mvp_msgs::ControlMode :init) r)) r))
     (dolist (elem- _modes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get mvp_msgs::ControlModes :md5sum-) "603519323f79819b7761d3e2017e75dd")
(setf (get mvp_msgs::ControlModes :datatype-) "mvp_msgs/ControlModes")
(setf (get mvp_msgs::ControlModes :definition-)
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

mvp_msgs/ControlMode[] modes
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
float64 k_i_min
")



(provide :mvp_msgs/ControlModes "603519323f79819b7761d3e2017e75dd")


