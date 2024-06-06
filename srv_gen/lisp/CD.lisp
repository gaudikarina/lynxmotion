; Auto-generated. Do not edit!


(cl:in-package lynxmotion-srv)


;//! \htmlinclude CD-request.msg.html

(cl:defclass <CD-request> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:float
    :initform 0.0)
   (y
    :reader y
    :initarg :y
    :type cl:float
    :initform 0.0)
   (z
    :reader z
    :initarg :z
    :type cl:float
    :initform 0.0))
)

(cl:defclass CD-request (<CD-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CD-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CD-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-srv:<CD-request> is deprecated: use lynxmotion-srv:CD-request instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <CD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:x-val is deprecated.  Use lynxmotion-srv:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <CD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:y-val is deprecated.  Use lynxmotion-srv:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <CD-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:z-val is deprecated.  Use lynxmotion-srv:z instead.")
  (z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CD-request>) ostream)
  "Serializes a message object of type '<CD-request>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'x))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'y))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'z))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CD-request>) istream)
  "Deserializes a message object of type '<CD-request>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'x) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'y) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'z) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CD-request>)))
  "Returns string type for a service object of type '<CD-request>"
  "lynxmotion/CDRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CD-request)))
  "Returns string type for a service object of type 'CD-request"
  "lynxmotion/CDRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CD-request>)))
  "Returns md5sum for a message object of type '<CD-request>"
  "bd98cbe154fb7c1b765088be4cc6964e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CD-request)))
  "Returns md5sum for a message object of type 'CD-request"
  "bd98cbe154fb7c1b765088be4cc6964e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CD-request>)))
  "Returns full string definition for message of type '<CD-request>"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CD-request)))
  "Returns full string definition for message of type 'CD-request"
  (cl:format cl:nil "float32 x~%float32 y~%float32 z~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CD-request>))
  (cl:+ 0
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CD-request>))
  "Converts a ROS message object to a list"
  (cl:list 'CD-request
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
))
;//! \htmlinclude CD-response.msg.html

(cl:defclass <CD-response> (roslisp-msg-protocol:ros-message)
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
    :initform 0.0))
)

(cl:defclass CD-response (<CD-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CD-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CD-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-srv:<CD-response> is deprecated: use lynxmotion-srv:CD-response instead.")))

(cl:ensure-generic-function 'q1-val :lambda-list '(m))
(cl:defmethod q1-val ((m <CD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:q1-val is deprecated.  Use lynxmotion-srv:q1 instead.")
  (q1 m))

(cl:ensure-generic-function 'q2-val :lambda-list '(m))
(cl:defmethod q2-val ((m <CD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:q2-val is deprecated.  Use lynxmotion-srv:q2 instead.")
  (q2 m))

(cl:ensure-generic-function 'q3-val :lambda-list '(m))
(cl:defmethod q3-val ((m <CD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:q3-val is deprecated.  Use lynxmotion-srv:q3 instead.")
  (q3 m))

(cl:ensure-generic-function 'q4-val :lambda-list '(m))
(cl:defmethod q4-val ((m <CD-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-srv:q4-val is deprecated.  Use lynxmotion-srv:q4 instead.")
  (q4 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CD-response>) ostream)
  "Serializes a message object of type '<CD-response>"
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CD-response>) istream)
  "Deserializes a message object of type '<CD-response>"
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CD-response>)))
  "Returns string type for a service object of type '<CD-response>"
  "lynxmotion/CDResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CD-response)))
  "Returns string type for a service object of type 'CD-response"
  "lynxmotion/CDResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CD-response>)))
  "Returns md5sum for a message object of type '<CD-response>"
  "bd98cbe154fb7c1b765088be4cc6964e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CD-response)))
  "Returns md5sum for a message object of type 'CD-response"
  "bd98cbe154fb7c1b765088be4cc6964e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CD-response>)))
  "Returns full string definition for message of type '<CD-response>"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%float32 q4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CD-response)))
  "Returns full string definition for message of type 'CD-response"
  (cl:format cl:nil "float32 q1~%float32 q2~%float32 q3~%float32 q4~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CD-response>))
  (cl:+ 0
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CD-response>))
  "Converts a ROS message object to a list"
  (cl:list 'CD-response
    (cl:cons ':q1 (q1 msg))
    (cl:cons ':q2 (q2 msg))
    (cl:cons ':q3 (q3 msg))
    (cl:cons ':q4 (q4 msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'CD)))
  'CD-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'CD)))
  'CD-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CD)))
  "Returns string type for a service object of type '<CD>"
  "lynxmotion/CD")