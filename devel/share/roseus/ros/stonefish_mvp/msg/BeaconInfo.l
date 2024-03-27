;; Auto-generated. Do not edit!


(when (boundp 'stonefish_mvp::BeaconInfo)
  (if (not (find-package "STONEFISH_MVP"))
    (make-package "STONEFISH_MVP"))
  (shadow 'BeaconInfo (find-package "STONEFISH_MVP")))
(unless (find-package "STONEFISH_MVP::BEACONINFO")
  (make-package "STONEFISH_MVP::BEACONINFO"))

(in-package "ROS")
;;//! \htmlinclude BeaconInfo.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stonefish_mvp::BeaconInfo
  :super ros::object
  :slots (_header _beacon_id _range _azimuth _elevation _relative_position _local_orientation _local_depth ))

(defmethod stonefish_mvp::BeaconInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:beacon_id __beacon_id) 0)
    ((:range __range) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:elevation __elevation) 0.0)
    ((:relative_position __relative_position) (instance geometry_msgs::Point :init))
    ((:local_orientation __local_orientation) (instance geometry_msgs::Quaternion :init))
    ((:local_depth __local_depth) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _beacon_id (round __beacon_id))
   (setq _range (float __range))
   (setq _azimuth (float __azimuth))
   (setq _elevation (float __elevation))
   (setq _relative_position __relative_position)
   (setq _local_orientation __local_orientation)
   (setq _local_depth (float __local_depth))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:beacon_id
   (&optional __beacon_id)
   (if __beacon_id (setq _beacon_id __beacon_id)) _beacon_id)
  (:range
   (&optional __range)
   (if __range (setq _range __range)) _range)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:elevation
   (&optional __elevation)
   (if __elevation (setq _elevation __elevation)) _elevation)
  (:relative_position
   (&rest __relative_position)
   (if (keywordp (car __relative_position))
       (send* _relative_position __relative_position)
     (progn
       (if __relative_position (setq _relative_position (car __relative_position)))
       _relative_position)))
  (:local_orientation
   (&rest __local_orientation)
   (if (keywordp (car __local_orientation))
       (send* _local_orientation __local_orientation)
     (progn
       (if __local_orientation (setq _local_orientation (car __local_orientation)))
       _local_orientation)))
  (:local_depth
   (&optional __local_depth)
   (if __local_depth (setq _local_depth __local_depth)) _local_depth)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; uint8 _beacon_id
    1
    ;; float32 _range
    4
    ;; float32 _azimuth
    4
    ;; float32 _elevation
    4
    ;; geometry_msgs/Point _relative_position
    (send _relative_position :serialization-length)
    ;; geometry_msgs/Quaternion _local_orientation
    (send _local_orientation :serialization-length)
    ;; float32 _local_depth
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; uint8 _beacon_id
       (write-byte _beacon_id s)
     ;; float32 _range
       (sys::poke _range (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _elevation
       (sys::poke _elevation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; geometry_msgs/Point _relative_position
       (send _relative_position :serialize s)
     ;; geometry_msgs/Quaternion _local_orientation
       (send _local_orientation :serialize s)
     ;; float32 _local_depth
       (sys::poke _local_depth (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; uint8 _beacon_id
     (setq _beacon_id (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; float32 _range
     (setq _range (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _azimuth
     (setq _azimuth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _elevation
     (setq _elevation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; geometry_msgs/Point _relative_position
     (send _relative_position :deserialize buf ptr-) (incf ptr- (send _relative_position :serialization-length))
   ;; geometry_msgs/Quaternion _local_orientation
     (send _local_orientation :deserialize buf ptr-) (incf ptr- (send _local_orientation :serialization-length))
   ;; float32 _local_depth
     (setq _local_depth (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get stonefish_mvp::BeaconInfo :md5sum-) "f1127716b80995f5b12a8c1f5f98b902")
(setf (get stonefish_mvp::BeaconInfo :datatype-) "stonefish_mvp/BeaconInfo")
(setf (get stonefish_mvp::BeaconInfo :definition-)
      "Header header
uint8 beacon_id
float32 range
float32 azimuth
float32 elevation
geometry_msgs/Point relative_position
geometry_msgs/Quaternion local_orientation
float32 local_depth
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

")



(provide :stonefish_mvp/BeaconInfo "f1127716b80995f5b12a8c1f5f98b902")


