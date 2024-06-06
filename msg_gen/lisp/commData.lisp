; Auto-generated. Do not edit!


(cl:in-package lynxmotion-msg)


;//! \htmlinclude commData.msg.html

(cl:defclass <commData> (roslisp-msg-protocol:ros-message)
  ((data
    :reader data
    :initarg :data
    :type cl:integer
    :initform 0))
)

(cl:defclass commData (<commData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <commData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'commData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lynxmotion-msg:<commData> is deprecated: use lynxmotion-msg:commData instead.")))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <commData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lynxmotion-msg:data-val is deprecated.  Use lynxmotion-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <commData>) ostream)
  "Serializes a message object of type '<commData>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <commData>) istream)
  "Deserializes a message object of type '<commData>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'data)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<commData>)))
  "Returns string type for a message object of type '<commData>"
  "lynxmotion/commData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'commData)))
  "Returns string type for a message object of type 'commData"
  "lynxmotion/commData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<commData>)))
  "Returns md5sum for a message object of type '<commData>"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'commData)))
  "Returns md5sum for a message object of type 'commData"
  "1bf77f25acecdedba0e224b162199717")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<commData>)))
  "Returns full string definition for message of type '<commData>"
  (cl:format cl:nil "char data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'commData)))
  "Returns full string definition for message of type 'commData"
  (cl:format cl:nil "char data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <commData>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <commData>))
  "Converts a ROS message object to a list"
  (cl:list 'commData
    (cl:cons ':data (data msg))
))
