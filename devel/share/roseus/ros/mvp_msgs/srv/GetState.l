;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::GetState)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'GetState (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::GETSTATE")
  (make-package "MVP_MSGS::GETSTATE"))
(unless (find-package "MVP_MSGS::GETSTATEREQUEST")
  (make-package "MVP_MSGS::GETSTATEREQUEST"))
(unless (find-package "MVP_MSGS::GETSTATERESPONSE")
  (make-package "MVP_MSGS::GETSTATERESPONSE"))

(in-package "ROS")





(defclass mvp_msgs::GetStateRequest
  :super ros::object
  :slots (_name ))

(defmethod mvp_msgs::GetStateRequest
  (:init
   (&key
    ((:name __name) "")
    )
   (send-super :init)
   (setq _name (string __name))
   self)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:serialization-length
   ()
   (+
    ;; string _name
    4 (length _name)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mvp_msgs::GetStateResponse
  :super ros::object
  :slots (_state ))

(defmethod mvp_msgs::GetStateResponse
  (:init
   (&key
    ((:state __state) (instance mvp_msgs::HelmState :init))
    )
   (send-super :init)
   (setq _state __state)
   self)
  (:state
   (&rest __state)
   (if (keywordp (car __state))
       (send* _state __state)
     (progn
       (if __state (setq _state (car __state)))
       _state)))
  (:serialization-length
   ()
   (+
    ;; mvp_msgs/HelmState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; mvp_msgs/HelmState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; mvp_msgs/HelmState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass mvp_msgs::GetState
  :super ros::object
  :slots ())

(setf (get mvp_msgs::GetState :md5sum-) "95826c4c034c53c3f3aa571a5a09f426")
(setf (get mvp_msgs::GetState :datatype-) "mvp_msgs/GetState")
(setf (get mvp_msgs::GetState :request) mvp_msgs::GetStateRequest)
(setf (get mvp_msgs::GetState :response) mvp_msgs::GetStateResponse)

(defmethod mvp_msgs::GetStateRequest
  (:response () (instance mvp_msgs::GetStateResponse :init)))

(setf (get mvp_msgs::GetStateRequest :md5sum-) "95826c4c034c53c3f3aa571a5a09f426")
(setf (get mvp_msgs::GetStateRequest :datatype-) "mvp_msgs/GetStateRequest")
(setf (get mvp_msgs::GetStateRequest :definition-)
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
---
mvp_msgs/HelmState state

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

(setf (get mvp_msgs::GetStateResponse :md5sum-) "95826c4c034c53c3f3aa571a5a09f426")
(setf (get mvp_msgs::GetStateResponse :datatype-) "mvp_msgs/GetStateResponse")
(setf (get mvp_msgs::GetStateResponse :definition-)
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
---
mvp_msgs/HelmState state

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



(provide :mvp_msgs/GetState "95826c4c034c53c3f3aa571a5a09f426")


