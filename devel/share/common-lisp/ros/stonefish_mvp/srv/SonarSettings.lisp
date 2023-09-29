; Auto-generated. Do not edit!


(cl:in-package stonefish_mvp-srv)


;//! \htmlinclude SonarSettings-request.msg.html

(cl:defclass <SonarSettings-request> (roslisp-msg-protocol:ros-message)
  ((range_min
    :reader range_min
    :initarg :range_min
    :type cl:float
    :initform 0.0)
   (range_max
    :reader range_max
    :initarg :range_max
    :type cl:float
    :initform 0.0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass SonarSettings-request (<SonarSettings-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarSettings-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarSettings-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_mvp-srv:<SonarSettings-request> is deprecated: use stonefish_mvp-srv:SonarSettings-request instead.")))

(cl:ensure-generic-function 'range_min-val :lambda-list '(m))
(cl:defmethod range_min-val ((m <SonarSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:range_min-val is deprecated.  Use stonefish_mvp-srv:range_min instead.")
  (range_min m))

(cl:ensure-generic-function 'range_max-val :lambda-list '(m))
(cl:defmethod range_max-val ((m <SonarSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:range_max-val is deprecated.  Use stonefish_mvp-srv:range_max instead.")
  (range_max m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <SonarSettings-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:gain-val is deprecated.  Use stonefish_mvp-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarSettings-request>) ostream)
  "Serializes a message object of type '<SonarSettings-request>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'range_max))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarSettings-request>) istream)
  "Deserializes a message object of type '<SonarSettings-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'range_max) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarSettings-request>)))
  "Returns string type for a service object of type '<SonarSettings-request>"
  "stonefish_mvp/SonarSettingsRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings-request)))
  "Returns string type for a service object of type 'SonarSettings-request"
  "stonefish_mvp/SonarSettingsRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarSettings-request>)))
  "Returns md5sum for a message object of type '<SonarSettings-request>"
  "3dd7b67bb9c281a0e1f972514667dae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarSettings-request)))
  "Returns md5sum for a message object of type 'SonarSettings-request"
  "3dd7b67bb9c281a0e1f972514667dae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarSettings-request>)))
  "Returns full string definition for message of type '<SonarSettings-request>"
  (cl:format cl:nil "float64 range_min~%float64 range_max~%float64 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarSettings-request)))
  "Returns full string definition for message of type 'SonarSettings-request"
  (cl:format cl:nil "float64 range_min~%float64 range_max~%float64 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarSettings-request>))
  (cl:+ 0
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarSettings-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarSettings-request
    (cl:cons ':range_min (range_min msg))
    (cl:cons ':range_max (range_max msg))
    (cl:cons ':gain (gain msg))
))
;//! \htmlinclude SonarSettings-response.msg.html

(cl:defclass <SonarSettings-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (message
    :reader message
    :initarg :message
    :type cl:string
    :initform ""))
)

(cl:defclass SonarSettings-response (<SonarSettings-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarSettings-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarSettings-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_mvp-srv:<SonarSettings-response> is deprecated: use stonefish_mvp-srv:SonarSettings-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SonarSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:success-val is deprecated.  Use stonefish_mvp-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SonarSettings-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:message-val is deprecated.  Use stonefish_mvp-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarSettings-response>) ostream)
  "Serializes a message object of type '<SonarSettings-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarSettings-response>) istream)
  "Deserializes a message object of type '<SonarSettings-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'message) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'message) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarSettings-response>)))
  "Returns string type for a service object of type '<SonarSettings-response>"
  "stonefish_mvp/SonarSettingsResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings-response)))
  "Returns string type for a service object of type 'SonarSettings-response"
  "stonefish_mvp/SonarSettingsResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarSettings-response>)))
  "Returns md5sum for a message object of type '<SonarSettings-response>"
  "3dd7b67bb9c281a0e1f972514667dae6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarSettings-response)))
  "Returns md5sum for a message object of type 'SonarSettings-response"
  "3dd7b67bb9c281a0e1f972514667dae6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarSettings-response>)))
  "Returns full string definition for message of type '<SonarSettings-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarSettings-response)))
  "Returns full string definition for message of type 'SonarSettings-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarSettings-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarSettings-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarSettings-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SonarSettings)))
  'SonarSettings-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SonarSettings)))
  'SonarSettings-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings)))
  "Returns string type for a service object of type '<SonarSettings>"
  "stonefish_mvp/SonarSettings")