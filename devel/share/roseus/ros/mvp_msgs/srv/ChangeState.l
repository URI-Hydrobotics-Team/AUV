;; Auto-generated. Do not edit!


(when (boundp 'mvp_msgs::ChangeState)
  (if (not (find-package "MVP_MSGS"))
    (make-package "MVP_MSGS"))
  (shadow 'ChangeState (find-package "MVP_MSGS")))
(unless (find-package "MVP_MSGS::CHANGESTATE")
  (make-package "MVP_MSGS::CHANGESTATE"))
(unless (find-package "MVP_MSGS::CHANGESTATEREQUEST")
  (make-package "MVP_MSGS::CHANGESTATEREQUEST"))
(unless (find-package "MVP_MSGS::CHANGESTATERESPONSE")
  (make-package "MVP_MSGS::CHANGESTATERESPONSE"))

(in-package "ROS")





(defclass mvp_msgs::ChangeStateRequest
  :super ros::object
  :slots (_state ))

(defmethod mvp_msgs::ChangeStateRequest
  (:init
   (&key
    ((:state __state) "")
    )
   (send-super :init)
   (setq _state (string __state))
   self)
  (:state
   (&optional __state)
   (if __state (setq _state __state)) _state)
  (:serialization-length
   ()
   (+
    ;; string _state
    4 (length _state)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _state
       (write-long (length _state) s) (princ _state s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _state
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _state (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass mvp_msgs::ChangeStateResponse
  :super ros::object
  :slots (_status _state ))

(defmethod mvp_msgs::ChangeStateResponse
  (:init
   (&key
    ((:status __status) nil)
    ((:state __state) (instance mvp_msgs::HelmState :init))
    )
   (send-super :init)
   (setq _status __status)
   (setq _state __state)
   self)
  (:status
   (&optional (__status :null))
   (if (not (eq __status :null)) (setq _status __status)) _status)
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
    ;; bool _status
    1
    ;; mvp_msgs/HelmState _state
    (send _state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _status
       (if _status (write-byte -1 s) (write-byte 0 s))
     ;; mvp_msgs/HelmState _state
       (send _state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _status
     (setq _status (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; mvp_msgs/HelmState _state
     (send _state :deserialize buf ptr-) (incf ptr- (send _state :serialization-length))
   ;;
   self)
  )

(defclass mvp_msgs::ChangeState
  :super ros::object
  :slots ())

(setf (get mvp_msgs::ChangeState :md5sum-) "6fc3cc8eedce7a52d2a746bc3e0301b9")
(setf (get mvp_msgs::ChangeState :datatype-) "mvp_msgs/ChangeState")
(setf (get mvp_msgs::ChangeState :request) mvp_msgs::ChangeStateRequest)
(setf (get mvp_msgs::ChangeState :response) mvp_msgs::ChangeStateResponse)

(defmethod mvp_msgs::ChangeStateRequest
  (:response () (instance mvp_msgs::ChangeStateResponse :init)))

(setf (get mvp_msgs::ChangeStateRequest :md5sum-) "6fc3cc8eedce7a52d2a746bc3e0301b9")
(setf (get mvp_msgs::ChangeStateRequest :datatype-) "mvp_msgs/ChangeStateRequest")
(setf (get mvp_msgs::ChangeStateRequest :definition-)
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

string state
---
bool status
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

(setf (get mvp_msgs::ChangeStateResponse :md5sum-) "6fc3cc8eedce7a52d2a746bc3e0301b9")
(setf (get mvp_msgs::ChangeStateResponse :datatype-) "mvp_msgs/ChangeStateResponse")
(setf (get mvp_msgs::ChangeStateResponse :definition-)
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

string state
---
bool status
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



(provide :mvp_msgs/ChangeState "6fc3cc8eedce7a52d2a746bc3e0301b9")


