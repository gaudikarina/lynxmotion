; Auto-generated. Do not edit!


(cl:in-package lynxmotion-msg)


;//! \htmlinclude aceleracion.msg.html

(cl:defclass <aceleracion> (roslisp-msg-protocol:ros-message)
  ((aX
    :reader aX
    :initarg :aX
    :type cl:float
    :initform 0.0)
   (aY
    :reader aY
    :initarg :aY
    :type cl:float
    :initform 0.0)
   (aZ
    :reader aZ
    :initarg :aZ
    :type cl:float
    :initform 0.0)
   (aX0
    :reader aX0
    :initarg :aX0
    :type cl:float
    :initform 0.0)
   (aY0
    :reader aY0
    :initarg :aY0
    :type cl:float
    :initform 0.0)
   (aZ0
    :reader aZ0
    :initarg :aZ0
    :type cl:float
    :initform 0.0))
)

(cl:defclass aceleracion (<aceleracion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <aceleracion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'aceleracion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-msg:<aceleracion> is deprecated: use lynxmotion-msg:aceleracion instead.")))

(cl:ensure-generic-function 'aX-val :lambda-list '(m))
(cl:defmethod aX-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aX-val is deprecated.  Use lynxmotion-msg:aX instead.")
  (aX m))

(cl:ensure-generic-function 'aY-val :lambda-list '(m))
(cl:defmethod aY-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aY-val is deprecated.  Use lynxmotion-msg:aY instead.")
  (aY m))

(cl:ensure-generic-function 'aZ-val :lambda-list '(m))
(cl:defmethod aZ-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aZ-val is deprecated.  Use lynxmotion-msg:aZ instead.")
  (aZ m))

(cl:ensure-generic-function 'aX0-val :lambda-list '(m))
(cl:defmethod aX0-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aX0-val is deprecated.  Use lynxmotion-msg:aX0 instead.")
  (aX0 m))

(cl:ensure-generic-function 'aY0-val :lambda-list '(m))
(cl:defmethod aY0-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aY0-val is deprecated.  Use lynxmotion-msg:aY0 instead.")
  (aY0 m))

(cl:ensure-generic-function 'aZ0-val :lambda-list '(m))
(cl:defmethod aZ0-val ((m <aceleracion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:aZ0-val is deprecated.  Use lynxmotion-msg:aZ0 instead.")
  (aZ0 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <aceleracion>) ostream)
  "Serializes a message object of type '<aceleracion>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aX))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aY))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aZ))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aX0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aY0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'aZ0))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <aceleracion>) istream)
  "Deserializes a message object of type '<aceleracion>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aX) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aY) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aZ) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aX0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aY0) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'aZ0) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<aceleracion>)))
  "Returns string type for a message object of type '<aceleracion>"
  "lynxmotion/aceleracion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'aceleracion)))
  "Returns string type for a message object of type 'aceleracion"
  "lynxmotion/aceleracion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<aceleracion>)))
  "Returns md5sum for a message object of type '<aceleracion>"
  "50bfd313ab91fdbcdfc22f6f4506e689")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'aceleracion)))
  "Returns md5sum for a message object of type 'aceleracion"
  "50bfd313ab91fdbcdfc22f6f4506e689")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<aceleracion>)))
  "Returns full string definition for message of type '<aceleracion>"
  (cl:format cl:nil "float64 aX~%float64 aY~%float64 aZ~%float64 aX0~%float64 aY0~%float64 aZ0~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'aceleracion)))
  "Returns full string definition for message of type 'aceleracion"
  (cl:format cl:nil "float64 aX~%float64 aY~%float64 aZ~%float64 aX0~%float64 aY0~%float64 aZ0~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <aceleracion>))
  (cl:+ 0
     8
     8
     8
     8
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <aceleracion>))
  "Converts a ROS message object to a list"
  (cl:list 'aceleracion
    (cl:cons ':aX (aX msg))
    (cl:cons ':aY (aY msg))
    (cl:cons ':aZ (aZ msg))
    (cl:cons ':aX0 (aX0 msg))
    (cl:cons ':aY0 (aY0 msg))
    (cl:cons ':aZ0 (aZ0 msg))
))
