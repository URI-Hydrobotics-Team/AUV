; Auto-generated. Do not edit!


(cl:in-package stonefish_mvp-msg)


;//! \htmlinclude BeaconInfo.msg.html

(cl:defclass <BeaconInfo> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (beacon_id
    :reader beacon_id
    :initarg :beacon_id
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:float
    :initform 0.0)
   (azimuth
    :reader azimuth
    :initarg :azimuth
    :type cl:float
    :initform 0.0)
   (elevation
    :reader elevation
    :initarg :elevation
    :type cl:float
    :initform 0.0)
   (relative_position
    :reader relative_position
    :initarg :relative_position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (local_orientation
    :reader local_orientation
    :initarg :local_orientation
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (local_depth
    :reader local_depth
    :initarg :local_depth
    :type cl:float
    :initform 0.0))
)

(cl:defclass BeaconInfo (<BeaconInfo>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BeaconInfo>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BeaconInfo)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_mvp-msg:<BeaconInfo> is deprecated: use stonefish_mvp-msg:BeaconInfo instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:header-val is deprecated.  Use stonefish_mvp-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'beacon_id-val :lambda-list '(m))
(cl:defmethod beacon_id-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:beacon_id-val is deprecated.  Use stonefish_mvp-msg:beacon_id instead.")
  (beacon_id m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:range-val is deprecated.  Use stonefish_mvp-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'azimuth-val :lambda-list '(m))
(cl:defmethod azimuth-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:azimuth-val is deprecated.  Use stonefish_mvp-msg:azimuth instead.")
  (azimuth m))

(cl:ensure-generic-function 'elevation-val :lambda-list '(m))
(cl:defmethod elevation-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:elevation-val is deprecated.  Use stonefish_mvp-msg:elevation instead.")
  (elevation m))

(cl:ensure-generic-function 'relative_position-val :lambda-list '(m))
(cl:defmethod relative_position-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:relative_position-val is deprecated.  Use stonefish_mvp-msg:relative_position instead.")
  (relative_position m))

(cl:ensure-generic-function 'local_orientation-val :lambda-list '(m))
(cl:defmethod local_orientation-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:local_orientation-val is deprecated.  Use stonefish_mvp-msg:local_orientation instead.")
  (local_orientation m))

(cl:ensure-generic-function 'local_depth-val :lambda-list '(m))
(cl:defmethod local_depth-val ((m <BeaconInfo>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-msg:local_depth-val is deprecated.  Use stonefish_mvp-msg:local_depth instead.")
  (local_depth m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BeaconInfo>) ostream)
  "Serializes a message object of type '<BeaconInfo>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beacon_id)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'range))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'azimuth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'elevation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'relative_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'local_orientation) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'local_depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BeaconInfo>) istream)
  "Deserializes a message object of type '<BeaconInfo>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'beacon_id)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'azimuth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'elevation) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'relative_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'local_orientation) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'local_depth) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BeaconInfo>)))
  "Returns string type for a message object of type '<BeaconInfo>"
  "stonefish_mvp/BeaconInfo")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BeaconInfo)))
  "Returns string type for a message object of type 'BeaconInfo"
  "stonefish_mvp/BeaconInfo")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BeaconInfo>)))
  "Returns md5sum for a message object of type '<BeaconInfo>"
  "f1127716b80995f5b12a8c1f5f98b902")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BeaconInfo)))
  "Returns md5sum for a message object of type 'BeaconInfo"
  "f1127716b80995f5b12a8c1f5f98b902")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BeaconInfo>)))
  "Returns full string definition for message of type '<BeaconInfo>"
  (cl:format cl:nil "Header header~%uint8 beacon_id~%float32 range~%float32 azimuth~%float32 elevation~%geometry_msgs/Point relative_position~%geometry_msgs/Quaternion local_orientation~%float32 local_depth~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BeaconInfo)))
  "Returns full string definition for message of type 'BeaconInfo"
  (cl:format cl:nil "Header header~%uint8 beacon_id~%float32 range~%float32 azimuth~%float32 elevation~%geometry_msgs/Point relative_position~%geometry_msgs/Quaternion local_orientation~%float32 local_depth~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BeaconInfo>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'relative_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'local_orientation))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BeaconInfo>))
  "Converts a ROS message object to a list"
  (cl:list 'BeaconInfo
    (cl:cons ':header (header msg))
    (cl:cons ':beacon_id (beacon_id msg))
    (cl:cons ':range (range msg))
    (cl:cons ':azimuth (azimuth msg))
    (cl:cons ':elevation (elevation msg))
    (cl:cons ':relative_position (relative_position msg))
    (cl:cons ':local_orientation (local_orientation msg))
    (cl:cons ':local_depth (local_depth msg))
))
