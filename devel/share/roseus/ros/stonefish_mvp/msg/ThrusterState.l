;; Auto-generated. Do not edit!


(when (boundp 'stonefish_mvp::ThrusterState)
  (if (not (find-package "STONEFISH_MVP"))
    (make-package "STONEFISH_MVP"))
  (shadow 'ThrusterState (find-package "STONEFISH_MVP")))
(unless (find-package "STONEFISH_MVP::THRUSTERSTATE")
  (make-package "STONEFISH_MVP::THRUSTERSTATE"))

(in-package "ROS")
;;//! \htmlinclude ThrusterState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass stonefish_mvp::ThrusterState
  :super ros::object
  :slots (_header _setpoint _rpm _thrust _torque ))

(defmethod stonefish_mvp::ThrusterState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:setpoint __setpoint) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:rpm __rpm) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:thrust __thrust) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:torque __torque) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _setpoint __setpoint)
   (setq _rpm __rpm)
   (setq _thrust __thrust)
   (setq _torque __torque)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:setpoint
   (&optional __setpoint)
   (if __setpoint (setq _setpoint __setpoint)) _setpoint)
  (:rpm
   (&optional __rpm)
   (if __rpm (setq _rpm __rpm)) _rpm)
  (:thrust
   (&optional __thrust)
   (if __thrust (setq _thrust __thrust)) _thrust)
  (:torque
   (&optional __torque)
   (if __torque (setq _torque __torque)) _torque)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float64[] _setpoint
    (* 8    (length _setpoint)) 4
    ;; float64[] _rpm
    (* 8    (length _rpm)) 4
    ;; float64[] _thrust
    (* 8    (length _thrust)) 4
    ;; float64[] _torque
    (* 8    (length _torque)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float64[] _setpoint
     (write-long (length _setpoint) s)
     (dotimes (i (length _setpoint))
       (sys::poke (elt _setpoint i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _rpm
     (write-long (length _rpm) s)
     (dotimes (i (length _rpm))
       (sys::poke (elt _rpm i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _thrust
     (write-long (length _thrust) s)
     (dotimes (i (length _thrust))
       (sys::poke (elt _thrust i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; float64[] _torque
     (write-long (length _torque) s)
     (dotimes (i (length _torque))
       (sys::poke (elt _torque i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float64[] _setpoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _setpoint (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _setpoint i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _rpm
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _rpm (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _rpm i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _thrust
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _thrust (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _thrust i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; float64[] _torque
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _torque (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _torque i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get stonefish_mvp::ThrusterState :md5sum-) "93e0b03a2fe79ac1fe95ccde2413a6a6")
(setf (get stonefish_mvp::ThrusterState :datatype-) "stonefish_mvp/ThrusterState")
(setf (get stonefish_mvp::ThrusterState :definition-)
      "Header header
float64[] setpoint
float64[] rpm
float64[] thrust
float64[] torque
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



(provide :stonefish_mvp/ThrusterState "93e0b03a2fe79ac1fe95ccde2413a6a6")


