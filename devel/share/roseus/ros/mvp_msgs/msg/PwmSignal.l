;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::PwmSignal)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'PwmSignal (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::PWMSIGNAL")
  (make-package "MVP_MSGS::PWMSIGNAL"))

(in-package "ROS")
;;//! \htmlinclude PwmSignal.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mvp_msgs::PwmSignal
  :super ros::object
  :slots (_signal _channel ))

(defmethod mvp_msgs::PwmSignal
  (:init
   (&key
    ((:signal __signal) (instance std_msgs::Float32 :init))
    ((:channel __channel) (instance std_msgs::Int16 :init))
    )
   (send-super :init)
   (setq _signal __signal)
   (setq _channel __channel)
   self)
  (:signal
   (&rest __signal)
   (if (keywordp (car __signal))
       (send* _signal __signal)
     (progn
       (if __signal (setq _signal (car __signal)))
       _signal)))
  (:channel
   (&rest __channel)
   (if (keywordp (car __channel))
       (send* _channel __channel)
     (progn
       (if __channel (setq _channel (car __channel)))
       _channel)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Float32 _signal
    (send _signal :serialization-length)
    ;; std_msgs/Int16 _channel
    (send _channel :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Float32 _signal
       (send _signal :serialize s)
     ;; std_msgs/Int16 _channel
       (send _channel :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Float32 _signal
     (send _signal :deserialize buf ptr-) (incf ptr- (send _signal :serialization-length))
   ;; std_msgs/Int16 _channel
     (send _channel :deserialize buf ptr-) (incf ptr- (send _channel :serialization-length))
   ;;
   self)
  )

(setf (get mvp_msgs::PwmSignal :md5sum-) "991ddd8c160299aa4b755054be922e8d")
(setf (get mvp_msgs::PwmSignal :datatype-) "mvp_msgs/PwmSignal")
(setf (get mvp_msgs::PwmSignal :definition-)
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

std_msgs/Float32 signal
std_msgs/Int16 channel
================================================================================
MSG: std_msgs/Float32
float32 data
================================================================================
MSG: std_msgs/Int16
int16 data

")



(provide :mvp_msgs/PwmSignal "991ddd8c160299aa4b755054be922e8d")


