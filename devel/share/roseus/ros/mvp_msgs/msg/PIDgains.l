;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::PIDgains)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'PIDgains (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::PIDGAINS")
  (make-package "MVP_MSGS::PIDGAINS"))

(in-package "ROS")
;;//! \htmlinclude PIDgains.msg.html


(defclass mvp_msgs::PIDgains
  :super ros::object
  :slots (_kp _ki _kd _k_i_max _k_i_min ))

(defmethod mvp_msgs::PIDgains
  (:init
   (&key
    ((:kp __kp) 0.0)
    ((:ki __ki) 0.0)
    ((:kd __kd) 0.0)
    ((:k_i_max __k_i_max) 0.0)
    ((:k_i_min __k_i_min) 0.0)
    )
   (send-super :init)
   (setq _kp (float __kp))
   (setq _ki (float __ki))
   (setq _kd (float __kd))
   (setq _k_i_max (float __k_i_max))
   (setq _k_i_min (float __k_i_min))
   self)
  (:kp
   (&optional __kp)
   (if __kp (setq _kp __kp)) _kp)
  (:ki
   (&optional __ki)
   (if __ki (setq _ki __ki)) _ki)
  (:kd
   (&optional __kd)
   (if __kd (setq _kd __kd)) _kd)
  (:k_i_max
   (&optional __k_i_max)
   (if __k_i_max (setq _k_i_max __k_i_max)) _k_i_max)
  (:k_i_min
   (&optional __k_i_min)
   (if __k_i_min (setq _k_i_min __k_i_min)) _k_i_min)
  (:serialization-length
   ()
   (+
    ;; float64 _kp
    8
    ;; float64 _ki
    8
    ;; float64 _kd
    8
    ;; float64 _k_i_max
    8
    ;; float64 _k_i_min
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _kp
       (sys::poke _kp (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ki
       (sys::poke _ki (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _kd
       (sys::poke _kd (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_i_max
       (sys::poke _k_i_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _k_i_min
       (sys::poke _k_i_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _kp
     (setq _kp (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ki
     (setq _ki (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _kd
     (setq _kd (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_i_max
     (setq _k_i_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _k_i_min
     (setq _k_i_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mvp_msgs::PIDgains :md5sum-) "64020c6ebba7ed9dc090c3163510a872")
(setf (get mvp_msgs::PIDgains :datatype-) "mvp_msgs/PIDgains")
(setf (get mvp_msgs::PIDgains :definition-)
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

float64 kp
float64 ki
float64 kd
float64 k_i_max
float64 k_i_min
")



(provide :mvp_msgs/PIDgains "64020c6ebba7ed9dc090c3163510a872")


