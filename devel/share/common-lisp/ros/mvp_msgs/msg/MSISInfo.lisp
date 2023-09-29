; Auto-generated. Do not edit!


(cl:in-package mvp_msgs-msg)


;//! \htmlinclude MSISInfo.msg.html

(cl:defclass <MSISInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (step_angle
    :reader step_angle
    :initarg :step_angle
    :type cl:float
    :initform 0.0)
   (bins
    :reader bins
    :initarg :bins
    :type cl:integer
    :initform 0)
   (horizontal_beam
    :reader horizontal_beam
    :initarg :horizontal_beam
    :type cl:float
    :initform 0.0)
   (vertical_beam
    :reader vertical_beam
    :initarg :vertical_beam
    :type cl:float
    :initform 0.0)
   (min_range
    :reader min_range
    :initarg :min_range
    :type cl:float
    :initform 0.0)
   (max_range
    :reader max_range
    :initarg :max_range
    :type cl:float
    :initform 0.0)
   (min_rotation
    :reader min_rotation
    :initarg :min_rotation
    :type cl:float
    :initform 0.0)
   (max_rotation
    :reader max_rotation
    :initarg :max_rotation
    :type cl:float
    :initform 0.0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass MSISInfo (<MSISInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <MSISInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'MSISInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mvp_msgs-msg:<MSISInfo> is deprecated: use mvp_msgs-msg:MSISInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:header-val is deprecated.  Use mvp_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'step_angle-val :lambda-list '(m))
(cl:defmethod step_angle-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:step_angle-val is deprecated.  Use mvp_msgs-msg:step_angle instead.")
  (step_angle m))

(cl:ensure-generic-function 'bins-val :lambda-list '(m))
(cl:defmethod bins-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:bins-val is deprecated.  Use mvp_msgs-msg:bins instead.")
  (bins m))

(cl:ensure-generic-function 'horizontal_beam-val :lambda-list '(m))
(cl:defmethod horizontal_beam-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:horizontal_beam-val is deprecated.  Use mvp_msgs-msg:horizontal_beam instead.")
  (horizontal_beam m))

(cl:ensure-generic-function 'vertical_beam-val :lambda-list '(m))
(cl:defmethod vertical_beam-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:vertical_beam-val is deprecated.  Use mvp_msgs-msg:vertical_beam instead.")
  (vertical_beam m))

(cl:ensure-generic-function 'min_range-val :lambda-list '(m))
(cl:defmethod min_range-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:min_range-val is deprecated.  Use mvp_msgs-msg:min_range instead.")
  (min_range m))

(cl:ensure-generic-function 'max_range-val :lambda-list '(m))
(cl:defmethod max_range-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:max_range-val is deprecated.  Use mvp_msgs-msg:max_range instead.")
  (max_range m))

(cl:ensure-generic-function 'min_rotation-val :lambda-list '(m))
(cl:defmethod min_rotation-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:min_rotation-val is deprecated.  Use mvp_msgs-msg:min_rotation instead.")
  (min_rotation m))

(cl:ensure-generic-function 'max_rotation-val :lambda-list '(m))
(cl:defmethod max_rotation-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:max_rotation-val is deprecated.  Use mvp_msgs-msg:max_rotation instead.")
  (max_rotation m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <MSISInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mvp_msgs-msg:gain-val is deprecated.  Use mvp_msgs-msg:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <MSISInfo>) ostream)
  "Serializes a message object of type '<MSISInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'step_angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bins)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bins)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'horizontal_beam))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'vertical_beam))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'min_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'max_range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'min_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'gain))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <MSISInfo>) istream)
  "Deserializes a message object of type '<MSISInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'step_angle) (roslisp-utils:decode-double-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 32) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 40) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 48) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 56) (cl:slot-value msg 'bins)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'horizontal_beam) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'vertical_beam) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_range) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'min_rotation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_rotation) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'gain) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<MSISInfo>)))
  "Returns string type for a message object of type '<MSISInfo>"
  "mvp_msgs/MSISInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'MSISInfo)))
  "Returns string type for a message object of type 'MSISInfo"
  "mvp_msgs/MSISInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<MSISInfo>)))
  "Returns md5sum for a message object of type '<MSISInfo>"
  "59d3f83483205f23af9acdf27bc7d76d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'MSISInfo)))
  "Returns md5sum for a message object of type 'MSISInfo"
  "59d3f83483205f23af9acdf27bc7d76d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<MSISInfo>)))
  "Returns full string definition for message of type '<MSISInfo>"
  (cl:format cl:nil "#~%# This message defines meta information for a mechanical scanning imaging sonar (MSIS).~%#~%~%# Time of sonar acquisition, sonar coordinate frame ID and seq ~%Header header~%~%# size of the rotation step [deg]~%float64 step_angle~%~%# a range resolution of the sonar image~%uint64 bins~%~%# horizontal beam width [deg]~%float32 horizontal_beam~%~%# vertical beam width [deg]~%float32 vertical_beam~%~%# minimum measured range [m]~%float64 min_range~%~%# maximum measured range [m]~%float64 max_range~%~%# minimum rotation of the sonar head [deg]~%float32 min_rotation~%~%# maximum rotation of the sonar head [deg]~%float32 max_rotation~%~%# gain~%float64 gain ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'MSISInfo)))
  "Returns full string definition for message of type 'MSISInfo"
  (cl:format cl:nil "#~%# This message defines meta information for a mechanical scanning imaging sonar (MSIS).~%#~%~%# Time of sonar acquisition, sonar coordinate frame ID and seq ~%Header header~%~%# size of the rotation step [deg]~%float64 step_angle~%~%# a range resolution of the sonar image~%uint64 bins~%~%# horizontal beam width [deg]~%float32 horizontal_beam~%~%# vertical beam width [deg]~%float32 vertical_beam~%~%# minimum measured range [m]~%float64 min_range~%~%# maximum measured range [m]~%float64 max_range~%~%# minimum rotation of the sonar head [deg]~%float32 min_rotation~%~%# maximum rotation of the sonar head [deg]~%float32 max_rotation~%~%# gain~%float64 gain ~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <MSISInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     4
     4
     8
     8
     4
     4
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <MSISInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'MSISInfo
    (cl:cons ':header (header msg))
    (cl:cons ':step_angle (step_angle msg))
    (cl:cons ':bins (bins msg))
    (cl:cons ':horizontal_beam (horizontal_beam msg))
    (cl:cons ':vertical_beam (vertical_beam msg))
    (cl:cons ':min_range (min_range msg))
    (cl:cons ':max_range (max_range msg))
    (cl:cons ':min_rotation (min_rotation msg))
    (cl:cons ':max_rotation (max_rotation msg))
    (cl:cons ':gain (gain msg))
))
