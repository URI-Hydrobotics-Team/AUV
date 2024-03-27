;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::VehicleStatus)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'VehicleStatus (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::VEHICLESTATUS")
  (make-package "MVP_MSGS::VEHICLESTATUS"))

(in-package "ROS")
;;//! \htmlinclude VehicleStatus.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass mvp_msgs::VehicleStatus
  :super ros::object
  :slots (_timenow _timegps _latitude _longitude _rpy _depth _voltage _current ))

(defmethod mvp_msgs::VehicleStatus
  (:init
   (&key
    ((:timenow __timenow) "")
    ((:timegps __timegps) "")
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:rpy __rpy) (instance geometry_msgs::Vector3 :init))
    ((:depth __depth) 0.0)
    ((:voltage __voltage) 0.0)
    ((:current __current) 0.0)
    )
   (send-super :init)
   (setq _timenow (string __timenow))
   (setq _timegps (string __timegps))
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _rpy __rpy)
   (setq _depth (float __depth))
   (setq _voltage (float __voltage))
   (setq _current (float __current))
   self)
  (:timenow
   (&optional __timenow)
   (if __timenow (setq _timenow __timenow)) _timenow)
  (:timegps
   (&optional __timegps)
   (if __timegps (setq _timegps __timegps)) _timegps)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:rpy
   (&rest __rpy)
   (if (keywordp (car __rpy))
       (send* _rpy __rpy)
     (progn
       (if __rpy (setq _rpy (car __rpy)))
       _rpy)))
  (:depth
   (&optional __depth)
   (if __depth (setq _depth __depth)) _depth)
  (:voltage
   (&optional __voltage)
   (if __voltage (setq _voltage __voltage)) _voltage)
  (:current
   (&optional __current)
   (if __current (setq _current __current)) _current)
  (:serialization-length
   ()
   (+
    ;; string _timenow
    4 (length _timenow)
    ;; string _timegps
    4 (length _timegps)
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; geometry_msgs/Vector3 _rpy
    (send _rpy :serialization-length)
    ;; float64 _depth
    8
    ;; float32 _voltage
    4
    ;; float32 _current
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _timenow
       (write-long (length _timenow) s) (princ _timenow s)
     ;; string _timegps
       (write-long (length _timegps) s) (princ _timegps s)
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; geometry_msgs/Vector3 _rpy
       (send _rpy :serialize s)
     ;; float64 _depth
       (sys::poke _depth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _voltage
       (sys::poke _voltage (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _current
       (sys::poke _current (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _timenow
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timenow (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _timegps
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _timegps (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; geometry_msgs/Vector3 _rpy
     (send _rpy :deserialize buf ptr-) (incf ptr- (send _rpy :serialization-length))
   ;; float64 _depth
     (setq _depth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _voltage
     (setq _voltage (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _current
     (setq _current (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get mvp_msgs::VehicleStatus :md5sum-) "66af2a719019777dca15c94baf4746ab")
(setf (get mvp_msgs::VehicleStatus :datatype-) "mvp_msgs/VehicleStatus")
(setf (get mvp_msgs::VehicleStatus :definition-)
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
#   Author: Mingxi Zhou
#   Email: mzhou@uri.edu
#   Year: 2022
#
#   Copyright (C) 2022 Smart Ocean Systems Laboratory
#

#global information

string  timenow         #SS-DD-MM-YY
string  timegps         #SS-DD-MM-YY
float64 latitude
float64 longitude

#important vehicle pose

geometry_msgs/Vector3 rpy   #degrees
float64 depth               # meters

# instant current and voltage of the main power source

float32 voltage         #volt
float32 current         #amp




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
float64 z
")



(provide :mvp_msgs/VehicleStatus "66af2a719019777dca15c94baf4746ab")


