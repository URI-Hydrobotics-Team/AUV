; Auto-generated. Do not edit!


(cl:in-package stonefish_mvp-srv)


;//! \htmlinclude SonarSettings2-request.msg.html

(cl:defclass <SonarSettings2-request> (roslisp-msg-protocol:ros-message)
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
   (rotation_min
    :reader rotation_min
    :initarg :rotation_min
    :type cl:float
    :initform 0.0)
   (rotation_max
    :reader rotation_max
    :initarg :rotation_max
    :type cl:float
    :initform 0.0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:float
    :initform 0.0))
)

(cl:defclass SonarSettings2-request (<SonarSettings2-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarSettings2-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarSettings2-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_mvp-srv:<SonarSettings2-request> is deprecated: use stonefish_mvp-srv:SonarSettings2-request instead.")))

(cl:ensure-generic-function 'range_min-val :lambda-list '(m))
(cl:defmethod range_min-val ((m <SonarSettings2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:range_min-val is deprecated.  Use stonefish_mvp-srv:range_min instead.")
  (range_min m))

(cl:ensure-generic-function 'range_max-val :lambda-list '(m))
(cl:defmethod range_max-val ((m <SonarSettings2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:range_max-val is deprecated.  Use stonefish_mvp-srv:range_max instead.")
  (range_max m))

(cl:ensure-generic-function 'rotation_min-val :lambda-list '(m))
(cl:defmethod rotation_min-val ((m <SonarSettings2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:rotation_min-val is deprecated.  Use stonefish_mvp-srv:rotation_min instead.")
  (rotation_min m))

(cl:ensure-generic-function 'rotation_max-val :lambda-list '(m))
(cl:defmethod rotation_max-val ((m <SonarSettings2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:rotation_max-val is deprecated.  Use stonefish_mvp-srv:rotation_max instead.")
  (rotation_max m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <SonarSettings2-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:gain-val is deprecated.  Use stonefish_mvp-srv:gain instead.")
  (gain m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarSettings2-request>) ostream)
  "Serializes a message object of type '<SonarSettings2-request>"
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
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation_min))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'rotation_max))))
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarSettings2-request>) istream)
  "Deserializes a message object of type '<SonarSettings2-request>"
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
    (cl:setf (cl:slot-value msg 'rotation_min) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'rotation_max) (roslisp-utils:decode-double-float-bits bits)))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarSettings2-request>)))
  "Returns string type for a service object of type '<SonarSettings2-request>"
  "stonefish_mvp/SonarSettings2Request")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings2-request)))
  "Returns string type for a service object of type 'SonarSettings2-request"
  "stonefish_mvp/SonarSettings2Request")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarSettings2-request>)))
  "Returns md5sum for a message object of type '<SonarSettings2-request>"
  "77368ba160f8f6dd31453146bbd4b728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarSettings2-request)))
  "Returns md5sum for a message object of type 'SonarSettings2-request"
  "77368ba160f8f6dd31453146bbd4b728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarSettings2-request>)))
  "Returns full string definition for message of type '<SonarSettings2-request>"
  (cl:format cl:nil "float64 range_min~%float64 range_max~%float64 rotation_min~%float64 rotation_max~%float64 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarSettings2-request)))
  "Returns full string definition for message of type 'SonarSettings2-request"
  (cl:format cl:nil "float64 range_min~%float64 range_max~%float64 rotation_min~%float64 rotation_max~%float64 gain~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarSettings2-request>))
  (cl:+ 0
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarSettings2-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarSettings2-request
    (cl:cons ':range_min (range_min msg))
    (cl:cons ':range_max (range_max msg))
    (cl:cons ':rotation_min (rotation_min msg))
    (cl:cons ':rotation_max (rotation_max msg))
    (cl:cons ':gain (gain msg))
))
;//! \htmlinclude SonarSettings2-response.msg.html

(cl:defclass <SonarSettings2-response> (roslisp-msg-protocol:ros-message)
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

(cl:defclass SonarSettings2-response (<SonarSettings2-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarSettings2-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarSettings2-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name stonefish_mvp-srv:<SonarSettings2-response> is deprecated: use stonefish_mvp-srv:SonarSettings2-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <SonarSettings2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:success-val is deprecated.  Use stonefish_mvp-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'message-val :lambda-list '(m))
(cl:defmethod message-val ((m <SonarSettings2-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader stonefish_mvp-srv:message-val is deprecated.  Use stonefish_mvp-srv:message instead.")
  (message m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarSettings2-response>) ostream)
  "Serializes a message object of type '<SonarSettings2-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'message))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'message))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarSettings2-response>) istream)
  "Deserializes a message object of type '<SonarSettings2-response>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarSettings2-response>)))
  "Returns string type for a service object of type '<SonarSettings2-response>"
  "stonefish_mvp/SonarSettings2Response")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings2-response)))
  "Returns string type for a service object of type 'SonarSettings2-response"
  "stonefish_mvp/SonarSettings2Response")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarSettings2-response>)))
  "Returns md5sum for a message object of type '<SonarSettings2-response>"
  "77368ba160f8f6dd31453146bbd4b728")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarSettings2-response)))
  "Returns md5sum for a message object of type 'SonarSettings2-response"
  "77368ba160f8f6dd31453146bbd4b728")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarSettings2-response>)))
  "Returns full string definition for message of type '<SonarSettings2-response>"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarSettings2-response)))
  "Returns full string definition for message of type 'SonarSettings2-response"
  (cl:format cl:nil "bool success~%string message~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarSettings2-response>))
  (cl:+ 0
     1
     4 (cl:length (cl:slot-value msg 'message))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarSettings2-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarSettings2-response
    (cl:cons ':success (success msg))
    (cl:cons ':message (message msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SonarSettings2)))
  'SonarSettings2-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SonarSettings2)))
  'SonarSettings2-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarSettings2)))
  "Returns string type for a service object of type '<SonarSettings2>"
  "stonefish_mvp/SonarSettings2")