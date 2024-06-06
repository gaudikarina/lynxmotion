; Auto-generated. Do not edit!


(cl:in-package lynxmotion-msg)


;//! \htmlinclude angulos.msg.html

(cl:defclass <angulos> (roslisp-msg-protocol:ros-message)
  ((Roll
    :reader Roll
    :initarg :Roll
    :type cl:float
    :initform 0.0)
   (Pitch
    :reader Pitch
    :initarg :Pitch
    :type cl:float
    :initform 0.0))
)

(cl:defclass angulos (<angulos>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <angulos>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'angulos)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-msg:<angulos> is deprecated: use lynxmotion-msg:angulos instead.")))

(cl:ensure-generic-function 'Roll-val :lambda-list '(m))
(cl:defmethod Roll-val ((m <angulos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:Roll-val is deprecated.  Use lynxmotion-msg:Roll instead.")
  (Roll m))

(cl:ensure-generic-function 'Pitch-val :lambda-list '(m))
(cl:defmethod Pitch-val ((m <angulos>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:Pitch-val is deprecated.  Use lynxmotion-msg:Pitch instead.")
  (Pitch m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <angulos>) ostream)
  "Serializes a message object of type '<angulos>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Roll))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'Pitch))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <angulos>) istream)
  "Deserializes a message object of type '<angulos>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Roll) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'Pitch) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<angulos>)))
  "Returns string type for a message object of type '<angulos>"
  "lynxmotion/angulos")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'angulos)))
  "Returns string type for a message object of type 'angulos"
  "lynxmotion/angulos")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<angulos>)))
  "Returns md5sum for a message object of type '<angulos>"
  "4dc8074cd743b9ac988e29a3793a37de")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'angulos)))
  "Returns md5sum for a message object of type 'angulos"
  "4dc8074cd743b9ac988e29a3793a37de")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<angulos>)))
  "Returns full string definition for message of type '<angulos>"
  (cl:format cl:nil "float32 Roll~%float32 Pitch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'angulos)))
  "Returns full string definition for message of type 'angulos"
  (cl:format cl:nil "float32 Roll~%float32 Pitch~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <angulos>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <angulos>))
  "Converts a ROS message object to a list"
  (cl:list 'angulos
    (cl:cons ':Roll (Roll msg))
    (cl:cons ':Pitch (Pitch msg))
))
