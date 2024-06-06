; Auto-generated. Do not edit!


(cl:in-package lynxmotion-msg)


;//! \htmlinclude posiciones.msg.html

(cl:defclass <posiciones> (roslisp-msg-protocol:ros-message)
  ((X
    :reader X
    :initarg :X
    :type cl:float
    :initform 0.0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:float
    :initform 0.0)
   (Z
    :reader Z
    :initarg :Z
    :type cl:float
    :initform 0.0))
)

(cl:defclass posiciones (<posiciones>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <posiciones>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'posiciones)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-msg:<posiciones> is deprecated: use lynxmotion-msg:posiciones instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <posiciones>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:X-val is deprecated.  Use lynxmotion-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <posiciones>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:Y-val is deprecated.  Use lynxmotion-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'Z-val :lambda-list '(m))
(cl:defmethod Z-val ((m <posiciones>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:Z-val is deprecated.  Use lynxmotion-msg:Z instead.")
  (Z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <posiciones>) ostream)
  "Serializes a message object of type '<posiciones>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'X))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <posiciones>) istream)
  "Deserializes a message object of type '<posiciones>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'X) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<posiciones>)))
  "Returns string type for a message object of type '<posiciones>"
  "lynxmotion/posiciones")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'posiciones)))
  "Returns string type for a message object of type 'posiciones"
  "lynxmotion/posiciones")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<posiciones>)))
  "Returns md5sum for a message object of type '<posiciones>"
  "a1dfb8f61d81d8e9fe291bc0d86a2f48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'posiciones)))
  "Returns md5sum for a message object of type 'posiciones"
  "a1dfb8f61d81d8e9fe291bc0d86a2f48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<posiciones>)))
  "Returns full string definition for message of type '<posiciones>"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'posiciones)))
  "Returns full string definition for message of type 'posiciones"
  (cl:format cl:nil "float32 X~%float32 Y~%float32 Z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <posiciones>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <posiciones>))
  "Converts a ROS message object to a list"
  (cl:list 'posiciones
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':Z (Z msg))
))
