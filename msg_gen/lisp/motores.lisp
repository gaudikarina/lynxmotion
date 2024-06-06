; Auto-generated. Do not edit!


(cl:in-package lynxmotion-msg)


;//! \htmlinclude motores.msg.html

(cl:defclass <motores> (roslisp-msg-protocol:ros-message)
  ((q1
    :reader q1
    :initarg :q1
    :type cl:float
    :initform 0.0)
   (q2
    :reader q2
    :initarg :q2
    :type cl:float
    :initform 0.0)
   (q3
    :reader q3
    :initarg :q3
    :type cl:float
    :initform 0.0)
   (q4
    :reader q4
    :initarg :q4
    :type cl:float
    :initform 0.0)
   (q5
    :reader q5
    :initarg :q5
    :type cl:float
    :initform 0.0))
)

(cl:defclass motores (<motores>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <motores>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'motores)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-msg:<motores> is deprecated: use lynxmotion-msg:motores instead.")))

(cl:ensure-generic-function 'q1-val :lambda-list '(m))
(cl:defmethod q1-val ((m <motores>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:q1-val is deprecated.  Use lynxmotion-msg:q1 instead.")
  (q1 m))

(cl:ensure-generic-function 'q2-val :lambda-list '(m))
(cl:defmethod q2-val ((m <motores>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:q2-val is deprecated.  Use lynxmotion-msg:q2 instead.")
  (q2 m))

(cl:ensure-generic-function 'q3-val :lambda-list '(m))
(cl:defmethod q3-val ((m <motores>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:q3-val is deprecated.  Use lynxmotion-msg:q3 instead.")
  (q3 m))

(cl:ensure-generic-function 'q4-val :lambda-list '(m))
(cl:defmethod q4-val ((m <motores>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:q4-val is deprecated.  Use lynxmotion-msg:q4 instead.")
  (q4 m))

(cl:ensure-generic-function 'q5-val :lambda-list '(m))
(cl:defmethod q5-val ((m <motores>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:q5-val is deprecated.  Use lynxmotion-msg:q5 instead.")
  (q5 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <motores>) ostream)
  "Serializes a message object of type '<motores>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q1))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q2))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q3))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q4))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'q5))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <motores>) istream)
  "Deserializes a message object of type '<motores>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q1) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q2) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q3) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q4) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'q5) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<motores>)))
  "Returns string type for a message object of type '<motores>"
  "lynxmotion/motores")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'motores)))
  "Returns string type for a message object of type 'motores"
  "lynxmotion/motores")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<motores>)))
  "Returns md5sum for a message object of type '<motores>"
  "b62a1c74640995c39e75f3dbdb456df4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'motores)))
  "Returns md5sum for a message object of type 'motores"
  "b62a1c74640995c39e75f3dbdb456df4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<motores>)))
  "Returns full string definition for message of type '<motores>"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%float32 q4~%float32 q5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'motores)))
  "Returns full string definition for message of type 'motores"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%float32 q4~%float32 q5~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <motores>))
  (cl:+ 0
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <motores>))
  "Converts a ROS message object to a list"
  (cl:list 'motores
    (cl:cons ':q1 (q1 msg))
    (cl:cons ':q2 (q2 msg))
    (cl:cons ':q3 (q3 msg))
    (cl:cons ':q4 (q4 msg))
    (cl:cons ':q5 (q5 msg))
))
