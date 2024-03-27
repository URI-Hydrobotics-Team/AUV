;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::ControlMode)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'ControlMode (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::CONTROLMODE")
  (make-package "MVP_MSGS::CONTROLMODE"))

(in-package "ROS")
;;//! \htmlinclude ControlMode.msg.html


(intern "*DOF_X*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_X* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_X* 0)
(intern "*DOF_Y*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_Y* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_Y* 1)
(intern "*DOF_Z*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_Z* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_Z* 2)
(intern "*DOF_ROLL*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_ROLL* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_ROLL* 3)
(intern "*DOF_PITCH*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_PITCH* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_PITCH* 4)
(intern "*DOF_YAW*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_YAW* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_YAW* 5)
(intern "*DOF_SURGE*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_SURGE* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_SURGE* 6)
(intern "*DOF_SWAY*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_SWAY* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_SWAY* 7)
(intern "*DOF_HEAVE*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_HEAVE* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_HEAVE* 8)
(intern "*DOF_ROLL_RATE*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_ROLL_RATE* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_ROLL_RATE* 9)
(intern "*DOF_PITCH_RATE*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_PITCH_RATE* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_PITCH_RATE* 10)
(intern "*DOF_YAW_RATE*" (find-package "MVP_MSGS::CONTROLMODE"))
(shadow '*DOF_YAW_RATE* (find-package "MVP_MSGS::CONTROLMODE"))
(defconstant mvp_msgs::ControlMode::*DOF_YAW_RATE* 11)

(defun mvp_msgs::ControlMode-to-symbol (const)
  (cond
        ((= const 0) 'mvp_msgs::ControlMode::*DOF_X*)
        ((= const 1) 'mvp_msgs::ControlMode::*DOF_Y*)
        ((= const 2) 'mvp_msgs::ControlMode::*DOF_Z*)
        ((= const 3) 'mvp_msgs::ControlMode::*DOF_ROLL*)
        ((= const 4) 'mvp_msgs::ControlMode::*DOF_PITCH*)
        ((= const 5) 'mvp_msgs::ControlMode::*DOF_YAW*)
        ((= const 6) 'mvp_msgs::ControlMode::*DOF_SURGE*)
        ((= const 7) 'mvp_msgs::ControlMode::*DOF_SWAY*)
        ((= const 8) 'mvp_msgs::ControlMode::*DOF_HEAVE*)
        ((= const 9) 'mvp_msgs::ControlMode::*DOF_ROLL_RATE*)
        ((= const 10) 'mvp_msgs::ControlMode::*DOF_PITCH_RATE*)
        ((= const 11) 'mvp_msgs::ControlMode::*DOF_YAW_RATE*)
        (t nil)))

(defclass mvp_msgs::ControlMode
  :super ros::object
  :slots (_name _dofs _pid_x _pid_y _pid_z _pid_roll _pid_pitch _pid_yaw _pid_surge _pid_sway _pid_heave _pid_roll_rate _pid_pitch_rate _pid_yaw_rate ))

(defmethod mvp_msgs::ControlMode
  (:init
   (&key
    ((:name __name) "")
    ((:dofs __dofs) (make-array 0 :initial-element 0 :element-type :integer))
    ((:pid_x __pid_x) (instance mvp_msgs::PIDgains :init))
    ((:pid_y __pid_y) (instance mvp_msgs::PIDgains :init))
    ((:pid_z __pid_z) (instance mvp_msgs::PIDgains :init))
    ((:pid_roll __pid_roll) (instance mvp_msgs::PIDgains :init))
    ((:pid_pitch __pid_pitch) (instance mvp_msgs::PIDgains :init))
    ((:pid_yaw __pid_yaw) (instance mvp_msgs::PIDgains :init))
    ((:pid_surge __pid_surge) (instance mvp_msgs::PIDgains :init))
    ((:pid_sway __pid_sway) (instance mvp_msgs::PIDgains :init))
    ((:pid_heave __pid_heave) (instance mvp_msgs::PIDgains :init))
    ((:pid_roll_rate __pid_roll_rate) (instance mvp_msgs::PIDgains :init))
    ((:pid_pitch_rate __pid_pitch_rate) (instance mvp_msgs::PIDgains :init))
    ((:pid_yaw_rate __pid_yaw_rate) (instance mvp_msgs::PIDgains :init))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _dofs __dofs)
   (setq _pid_x __pid_x)
   (setq _pid_y __pid_y)
   (setq _pid_z __pid_z)
   (setq _pid_roll __pid_roll)
   (setq _pid_pitch __pid_pitch)
   (setq _pid_yaw __pid_yaw)
   (setq _pid_surge __pid_surge)
   (setq _pid_sway __pid_sway)
   (setq _pid_heave __pid_heave)
   (setq _pid_roll_rate __pid_roll_rate)
   (setq _pid_pitch_rate __pid_pitch_rate)
   (setq _pid_yaw_rate __pid_yaw_rate)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:dofs
   (&optional __dofs)
   (if __dofs (setq _dofs __dofs)) _dofs)
  (:pid_x
   (&rest __pid_x)
   (if (keywordp (car __pid_x))
       (send* _pid_x __pid_x)
     (progn
       (if __pid_x (setq _pid_x (car __pid_x)))
       _pid_x)))
  (:pid_y
   (&rest __pid_y)
   (if (keywordp (car __pid_y))
       (send* _pid_y __pid_y)
     (progn
       (if __pid_y (setq _pid_y (car __pid_y)))
       _pid_y)))
  (:pid_z
   (&rest __pid_z)
   (if (keywordp (car __pid_z))
       (send* _pid_z __pid_z)
     (progn
       (if __pid_z (setq _pid_z (car __pid_z)))
       _pid_z)))
  (:pid_roll
   (&rest __pid_roll)
   (if (keywordp (car __pid_roll))
       (send* _pid_roll __pid_roll)
     (progn
       (if __pid_roll (setq _pid_roll (car __pid_roll)))
       _pid_roll)))
  (:pid_pitch
   (&rest __pid_pitch)
   (if (keywordp (car __pid_pitch))
       (send* _pid_pitch __pid_pitch)
     (progn
       (if __pid_pitch (setq _pid_pitch (car __pid_pitch)))
       _pid_pitch)))
  (:pid_yaw
   (&rest __pid_yaw)
   (if (keywordp (car __pid_yaw))
       (send* _pid_yaw __pid_yaw)
     (progn
       (if __pid_yaw (setq _pid_yaw (car __pid_yaw)))
       _pid_yaw)))
  (:pid_surge
   (&rest __pid_surge)
   (if (keywordp (car __pid_surge))
       (send* _pid_surge __pid_surge)
     (progn
       (if __pid_surge (setq _pid_surge (car __pid_surge)))
       _pid_surge)))
  (:pid_sway
   (&rest __pid_sway)
   (if (keywordp (car __pid_sway))
       (send* _pid_sway __pid_sway)
     (progn
       (if __pid_sway (setq _pid_sway (car __pid_sway)))
       _pid_sway)))
  (:pid_heave
   (&rest __pid_heave)
   (if (keywordp (car __pid_heave))
       (send* _pid_heave __pid_heave)
     (progn
       (if __pid_heave (setq _pid_heave (car __pid_heave)))
       _pid_heave)))
  (:pid_roll_rate
   (&rest __pid_roll_rate)
   (if (keywordp (car __pid_roll_rate))
       (send* _pid_roll_rate __pid_roll_rate)
     (progn
       (if __pid_roll_rate (setq _pid_roll_rate (car __pid_roll_rate)))
       _pid_roll_rate)))
  (:pid_pitch_rate
   (&rest __pid_pitch_rate)
   (if (keywordp (car __pid_pitch_rate))
       (send* _pid_pitch_rate __pid_pitch_rate)
     (progn
       (if __pid_pitch_rate (setq _pid_pitch_rate (car __pid_pitch_rate)))
       _pid_pitch_rate)))
  (:pid_yaw_rate
   (&rest __pid_yaw_rate)
   (if (keywordp (car __pid_yaw_rate))
       (send* _pid_yaw_rate __pid_yaw_rate)
     (progn
       (if __pid_yaw_rate (setq _pid_yaw_rate (car __pid_yaw_rate)))
       _pid_yaw_rate)))
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; int32[] _dofs
    (* 4    (length _dofs)) 4
    ;; mvp_msgs/PIDgains _pid_x
    (send _pid_x :serialization-length)
    ;; mvp_msgs/PIDgains _pid_y
    (send _pid_y :serialization-length)
    ;; mvp_msgs/PIDgains _pid_z
    (send _pid_z :serialization-length)
    ;; mvp_msgs/PIDgains _pid_roll
    (send _pid_roll :serialization-length)
    ;; mvp_msgs/PIDgains _pid_pitch
    (send _pid_pitch :serialization-length)
    ;; mvp_msgs/PIDgains _pid_yaw
    (send _pid_yaw :serialization-length)
    ;; mvp_msgs/PIDgains _pid_surge
    (send _pid_surge :serialization-length)
    ;; mvp_msgs/PIDgains _pid_sway
    (send _pid_sway :serialization-length)
    ;; mvp_msgs/PIDgains _pid_heave
    (send _pid_heave :serialization-length)
    ;; mvp_msgs/PIDgains _pid_roll_rate
    (send _pid_roll_rate :serialization-length)
    ;; mvp_msgs/PIDgains _pid_pitch_rate
    (send _pid_pitch_rate :serialization-length)
    ;; mvp_msgs/PIDgains _pid_yaw_rate
    (send _pid_yaw_rate :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int32[] _dofs
     (write-long (length _dofs) s)
     (dotimes (i (length _dofs))
       (write-long (elt _dofs i) s)
       )
     ;; mvp_msgs/PIDgains _pid_x
       (send _pid_x :serialize s)
     ;; mvp_msgs/PIDgains _pid_y
       (send _pid_y :serialize s)
     ;; mvp_msgs/PIDgains _pid_z
       (send _pid_z :serialize s)
     ;; mvp_msgs/PIDgains _pid_roll
       (send _pid_roll :serialize s)
     ;; mvp_msgs/PIDgains _pid_pitch
       (send _pid_pitch :serialize s)
     ;; mvp_msgs/PIDgains _pid_yaw
       (send _pid_yaw :serialize s)
     ;; mvp_msgs/PIDgains _pid_surge
       (send _pid_surge :serialize s)
     ;; mvp_msgs/PIDgains _pid_sway
       (send _pid_sway :serialize s)
     ;; mvp_msgs/PIDgains _pid_heave
       (send _pid_heave :serialize s)
     ;; mvp_msgs/PIDgains _pid_roll_rate
       (send _pid_roll_rate :serialize s)
     ;; mvp_msgs/PIDgains _pid_pitch_rate
       (send _pid_pitch_rate :serialize s)
     ;; mvp_msgs/PIDgains _pid_yaw_rate
       (send _pid_yaw_rate :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int32[] _dofs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dofs (instantiate integer-vector n))
     (dotimes (i n)
     (setf (elt _dofs i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;; mvp_msgs/PIDgains _pid_x
     (send _pid_x :deserialize buf ptr-) (incf ptr- (send _pid_x :serialization-length))
   ;; mvp_msgs/PIDgains _pid_y
     (send _pid_y :deserialize buf ptr-) (incf ptr- (send _pid_y :serialization-length))
   ;; mvp_msgs/PIDgains _pid_z
     (send _pid_z :deserialize buf ptr-) (incf ptr- (send _pid_z :serialization-length))
   ;; mvp_msgs/PIDgains _pid_roll
     (send _pid_roll :deserialize buf ptr-) (incf ptr- (send _pid_roll :serialization-length))
   ;; mvp_msgs/PIDgains _pid_pitch
     (send _pid_pitch :deserialize buf ptr-) (incf ptr- (send _pid_pitch :serialization-length))
   ;; mvp_msgs/PIDgains _pid_yaw
     (send _pid_yaw :deserialize buf ptr-) (incf ptr- (send _pid_yaw :serialization-length))
   ;; mvp_msgs/PIDgains _pid_surge
     (send _pid_surge :deserialize buf ptr-) (incf ptr- (send _pid_surge :serialization-length))
   ;; mvp_msgs/PIDgains _pid_sway
     (send _pid_sway :deserialize buf ptr-) (incf ptr- (send _pid_sway :serialization-length))
   ;; mvp_msgs/PIDgains _pid_heave
     (send _pid_heave :deserialize buf ptr-) (incf ptr- (send _pid_heave :serialization-length))
   ;; mvp_msgs/PIDgains _pid_roll_rate
     (send _pid_roll_rate :deserialize buf ptr-) (incf ptr- (send _pid_roll_rate :serialization-length))
   ;; mvp_msgs/PIDgains _pid_pitch_rate
     (send _pid_pitch_rate :deserialize buf ptr-) (incf ptr- (send _pid_pitch_rate :serialization-length))
   ;; mvp_msgs/PIDgains _pid_yaw_rate
     (send _pid_yaw_rate :deserialize buf ptr-) (incf ptr- (send _pid_yaw_rate :serialization-length))
   ;;
   self)
  )

(setf (get mvp_msgs::ControlMode :md5sum-) "5d6ffb9dbcb11283ec4e54683a5c1e8d")
(setf (get mvp_msgs::ControlMode :datatype-) "mvp_msgs/ControlMode")
(setf (get mvp_msgs::ControlMode :definition-)
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



(provide :mvp_msgs/ControlMode "5d6ffb9dbcb11283ec4e54683a5c1e8d")


