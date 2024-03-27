;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::HelmState)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'HelmState (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::HELMSTATE")
  (make-package "MVP_MSGS::HELMSTATE"))

(in-package "ROS")
;;//! \htmlinclude HelmState.msg.html


(defclass mvp_msgs::HelmState
  :super ros::object
  :slots (_name _mode _transitions ))

(defmethod mvp_msgs::HelmState
  (:init
   (&key
    ((:name __name) "")
    ((:mode __mode) "")
    ((:transitions __transitions) (let (r) (dotimes (i 0) (push "" r)) r))
    )
   (send-super :init)
   (setq _name (string __name))
   (setq _mode (string __mode))
   (setq _transitions __transitions)
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:mode
   (&optional __mode)
   (if __mode (setq _mode __mode)) _mode)
  (:transitions
   (&optional __transitions)
   (if __transitions (setq _transitions __transitions)) _transitions)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ;; string _mode
    4 (length _mode)
    ;; string[] _transitions
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _transitions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; string _mode
       (write-long (length _mode) s) (princ _mode s)
     ;; string[] _transitions
     (write-long (length _transitions) s)
     (dolist (elem _transitions)
       (write-long (length elem) s) (princ elem s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _mode
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _mode (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string[] _transitions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _transitions (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _transitions i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;;
   self)
  )

(setf (get mvp_msgs::HelmState :md5sum-) "0e4258c9f572ade7cc1dee976cfcc66f")
(setf (get mvp_msgs::HelmState :datatype-) "mvp_msgs/HelmState")
(setf (get mvp_msgs::HelmState :definition-)
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

string name
string mode
string[] transitions
")



(provide :mvp_msgs/HelmState "0e4258c9f572ade7cc1dee976cfcc66f")


