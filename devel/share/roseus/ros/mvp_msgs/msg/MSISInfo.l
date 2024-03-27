;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::MSISInfo)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'MSISInfo (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::MSISINFO")
  (make-package "MVP_MSGS::MSISINFO"))

(in-package "ROS")
;;//! \htmlinclude MSISInfo.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass mvp_msgs::MSISInfo
  :super ros::object
  :slots (_header _step_angle _bins _horizontal_beam _vertical_beam _min_range _max_range _min_rotation _max_rotation _gain ))

(defmethod mvp_msgs::MSISInfo
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:step_angle __step_angle) 0.0)
    ((:bins __bins) 0)
    ((:horizontal_beam __horizontal_beam) 0.0)
    ((:vertical_beam __vertical_beam) 0.0)
    ((:min_range __min_range) 0.0)
    ((:max_range __max_range) 0.0)
    ((:min_rotation __min_rotation) 0.0)
    ((:max_rotation __max_rotation) 0.0)
    ((:gain __gain) 0.0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _step_angle (float __step_angle))
   (setq _bins (round __bins))
   (setq _horizontal_beam (float __horizontal_beam))
   (setq _vertical_beam (float __vertical_beam))
   (setq _min_range (float __min_range))
   (setq _max_range (float __max_range))
   (setq _min_rotation (float __min_rotation))
   (setq _max_rotation (float __max_rotation))
   (setq _gain (float __gain))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:step_angle
   (&optional __step_angle)
   (if __step_angle (setq _step_angle __step_angle)) _step_angle)
  (:bins
   (&optional __bins)
   (if __bins (setq _bins __bins)) _bins)
  (:horizontal_beam
   (&optional __horizontal_beam)
   (if __horizontal_beam (setq _horizontal_beam __horizontal_beam)) _horizontal_beam)
  (:vertical_beam
   (&optional __vertical_beam)
   (if __vertical_beam (setq _vertical_beam __vertical_beam)) _vertical_beam)
  (:min_range
   (&optional __min_range)
   (if __min_range (setq _min_range __min_range)) _min_range)
  (:max_range
   (&optional __max_range)
   (if __max_range (setq _max_range __max_range)) _max_range)
  (:min_rotation
   (&optional __min_rotation)
   (if __min_rotation (setq _min_rotation __min_rotation)) _min_rotation)
  (:max_rotation
   (&optional __max_rotation)
   (if __max_rotation (setq _max_rotation __max_rotation)) _max_rotation)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64 _step_angle
    8
    ;; uint64 _bins
    8
    ;; float32 _horizontal_beam
    4
    ;; float32 _vertical_beam
    4
    ;; float64 _min_range
    8
    ;; float64 _max_range
    8
    ;; float32 _min_rotation
    4
    ;; float32 _max_rotation
    4
    ;; float64 _gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64 _step_angle
       (sys::poke _step_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint64 _bins
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _bins (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _bins) (= (length (_bins . bv)) 2)) ;; bignum
              (write-long (ash (elt (_bins . bv) 0) 0) s)
              (write-long (ash (elt (_bins . bv) 1) -1) s))
             ((and (class _bins) (= (length (_bins . bv)) 1)) ;; big1
              (write-long (elt (_bins . bv) 0) s)
              (write-long (if (>= _bins 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _bins s)(write-long (if (>= _bins 0) 0 #xffffffff) s)))
     ;; float32 _horizontal_beam
       (sys::poke _horizontal_beam (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _vertical_beam
       (sys::poke _vertical_beam (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _min_range
       (sys::poke _min_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _max_range
       (sys::poke _max_range (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float32 _min_rotation
       (sys::poke _min_rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _max_rotation
       (sys::poke _max_rotation (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64 _step_angle
     (setq _step_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint64 _bins
     
#+(or :alpha :irix6 :x86_64)
      (setf _bins (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _bins (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; float32 _horizontal_beam
     (setq _horizontal_beam (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _vertical_beam
     (setq _vertical_beam (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _min_range
     (setq _min_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _max_range
     (setq _max_range (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float32 _min_rotation
     (setq _min_rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _max_rotation
     (setq _max_rotation (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get mvp_msgs::MSISInfo :md5sum-) "59d3f83483205f23af9acdf27bc7d76d")
(setf (get mvp_msgs::MSISInfo :datatype-) "mvp_msgs/MSISInfo")
(setf (get mvp_msgs::MSISInfo :definition-)
      "#
# This message defines meta information for a mechanical scanning imaging sonar (MSIS).
#

# Time of sonar acquisition, sonar coordinate frame ID and seq 
Header header

# size of the rotation step [deg]
float64 step_angle

# a range resolution of the sonar image
uint64 bins

# horizontal beam width [deg]
float32 horizontal_beam

# vertical beam width [deg]
float32 vertical_beam

# minimum measured range [m]
float64 min_range

# maximum measured range [m]
float64 max_range

# minimum rotation of the sonar head [deg]
float32 min_rotation

# maximum rotation of the sonar head [deg]
float32 max_rotation

# gain
float64 gain 
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

")



(provide :mvp_msgs/MSISInfo "59d3f83483205f23af9acdf27bc7d76d")


