;; Auto-generated. Do not edit!


(when (boundp 'stonefish_mvp::SonarSettings2)
  (if (not (find-package "STONEFISH_MVP"))
    (make-package "STONEFISH_MVP"))
  (shadow 'SonarSettings2 (find-package "STONEFISH_MVP")))
(unless (find-package "STONEFISH_MVP::SONARSETTINGS2")
  (make-package "STONEFISH_MVP::SONARSETTINGS2"))
(unless (find-package "STONEFISH_MVP::SONARSETTINGS2REQUEST")
  (make-package "STONEFISH_MVP::SONARSETTINGS2REQUEST"))
(unless (find-package "STONEFISH_MVP::SONARSETTINGS2RESPONSE")
  (make-package "STONEFISH_MVP::SONARSETTINGS2RESPONSE"))

(in-package "ROS")





(defclass stonefish_mvp::SonarSettings2Request
  :super ros::object
  :slots (_range_min _range_max _rotation_min _rotation_max _gain ))

(defmethod stonefish_mvp::SonarSettings2Request
  (:init
   (&key
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:rotation_min __rotation_min) 0.0)
    ((:rotation_max __rotation_max) 0.0)
    ((:gain __gain) 0.0)
    )
   (send-super :init)
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _rotation_min (float __rotation_min))
   (setq _rotation_max (float __rotation_max))
   (setq _gain (float __gain))
   self)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:rotation_min
   (&optional __rotation_min)
   (if __rotation_min (setq _rotation_min __rotation_min)) _rotation_min)
  (:rotation_max
   (&optional __rotation_max)
   (if __rotation_max (setq _rotation_max __rotation_max)) _rotation_max)
  (:gain
   (&optional __gain)
   (if __gain (setq _gain __gain)) _gain)
  (:serialization-length
   ()
   (+
    ;; float64 _range_min
    8
    ;; float64 _range_max
    8
    ;; float64 _rotation_min
    8
    ;; float64 _rotation_max
    8
    ;; float64 _gain
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotation_min
       (sys::poke _rotation_min (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _rotation_max
       (sys::poke _rotation_max (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _gain
       (sys::poke _gain (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _range_min
     (setq _range_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _range_max
     (setq _range_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotation_min
     (setq _rotation_min (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _rotation_max
     (setq _rotation_max (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _gain
     (setq _gain (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(defclass stonefish_mvp::SonarSettings2Response
  :super ros::object
  :slots (_success _message ))

(defmethod stonefish_mvp::SonarSettings2Response
  (:init
   (&key
    ((:success __success) nil)
    ((:message __message) "")
    )
   (send-super :init)
   (setq _success __success)
   (setq _message (string __message))
   self)
  (:success
   (&optional (__success :null))
   (if (not (eq __success :null)) (setq _success __success)) _success)
  (:message
   (&optional __message)
   (if __message (setq _message __message)) _message)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; string _message
    4 (length _message)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; string _message
       (write-long (length _message) s) (princ _message s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; string _message
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _message (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass stonefish_mvp::SonarSettings2
  :super ros::object
  :slots ())

(setf (get stonefish_mvp::SonarSettings2 :md5sum-) "77368ba160f8f6dd31453146bbd4b728")
(setf (get stonefish_mvp::SonarSettings2 :datatype-) "stonefish_mvp/SonarSettings2")
(setf (get stonefish_mvp::SonarSettings2 :request) stonefish_mvp::SonarSettings2Request)
(setf (get stonefish_mvp::SonarSettings2 :response) stonefish_mvp::SonarSettings2Response)

(defmethod stonefish_mvp::SonarSettings2Request
  (:response () (instance stonefish_mvp::SonarSettings2Response :init)))

(setf (get stonefish_mvp::SonarSettings2Request :md5sum-) "77368ba160f8f6dd31453146bbd4b728")
(setf (get stonefish_mvp::SonarSettings2Request :datatype-) "stonefish_mvp/SonarSettings2Request")
(setf (get stonefish_mvp::SonarSettings2Request :definition-)
      "float64 range_min
float64 range_max
float64 rotation_min
float64 rotation_max
float64 gain
---
bool success
string message
")

(setf (get stonefish_mvp::SonarSettings2Response :md5sum-) "77368ba160f8f6dd31453146bbd4b728")
(setf (get stonefish_mvp::SonarSettings2Response :datatype-) "stonefish_mvp/SonarSettings2Response")
(setf (get stonefish_mvp::SonarSettings2Response :definition-)
      "float64 range_min
float64 range_max
float64 rotation_min
float64 rotation_max
float64 gain
---
bool success
string message
")



(provide :stonefish_mvp/SonarSettings2 "77368ba160f8f6dd31453146bbd4b728")


