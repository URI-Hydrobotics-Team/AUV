;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::GetStates)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'GetStates (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::GETSTATES")
  (make-package "MVP_MSGS::GETSTATES"))
(unless (find-package "MVP_MSGS::GETSTATESREQUEST")
  (make-package "MVP_MSGS::GETSTATESREQUEST"))
(unless (find-package "MVP_MSGS::GETSTATESRESPONSE")
  (make-package "MVP_MSGS::GETSTATESRESPONSE"))

(in-package "ROS")





(defclass mvp_msgs::GetStatesRequest
  :super ros::object
  :slots ())

(defmethod mvp_msgs::GetStatesRequest
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(defclass mvp_msgs::GetStatesResponse
  :super ros::object
  :slots (_states ))

(defmethod mvp_msgs::GetStatesResponse
  (:init
   (&key
    ((:states __states) ())
    )
   (send-super :init)
   (setq _states __states)
   self)
  (:states
   (&rest __states)
   (if (keywordp (car __states))
       (send* _states __states)
     (progn
       (if __states (setq _states (car __states)))
       _states)))
  (:serialization-length
   ()
   (+
    ;; mvp_msgs/HelmState[] _states
    (apply #'+ (send-all _states :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mvp_msgs/HelmState[] _states
     (write-long (length _states) s)
     (dolist (elem _states)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mvp_msgs/HelmState[] _states
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _states (let (r) (dotimes (i n) (push (instance mvp_msgs::HelmState :init) r)) r))
     (dolist (elem- _states)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass mvp_msgs::GetStates
  :super ros::object
  :slots ())

(setf (get mvp_msgs::GetStates :md5sum-) "7fb91daf3e8086897a6eccc9f862d3a8")
(setf (get mvp_msgs::GetStates :datatype-) "mvp_msgs/GetStates")
(setf (get mvp_msgs::GetStates :request) mvp_msgs::GetStatesRequest)
(setf (get mvp_msgs::GetStates :response) mvp_msgs::GetStatesResponse)

(defmethod mvp_msgs::GetStatesRequest
  (:response () (instance mvp_msgs::GetStatesResponse :init)))

(setf (get mvp_msgs::GetStatesRequest :md5sum-) "7fb91daf3e8086897a6eccc9f862d3a8")
(setf (get mvp_msgs::GetStatesRequest :datatype-) "mvp_msgs/GetStatesRequest")
(setf (get mvp_msgs::GetStatesRequest :definition-)
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

---
mvp_msgs/HelmState[] states

================================================================================
MSG: mvp_msgs/HelmState
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

string name
string mode
")

(setf (get mvp_msgs::GetStatesResponse :md5sum-) "7fb91daf3e8086897a6eccc9f862d3a8")
(setf (get mvp_msgs::GetStatesResponse :datatype-) "mvp_msgs/GetStatesResponse")
(setf (get mvp_msgs::GetStatesResponse :definition-)
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

---
mvp_msgs/HelmState[] states

================================================================================
MSG: mvp_msgs/HelmState
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

string name
string mode
")



(provide :mvp_msgs/GetStates "7fb91daf3e8086897a6eccc9f862d3a8")


