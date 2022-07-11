; Auto-generated. Do not edit!


(cl:in-package rover-msg)


;//! \htmlinclude DriveControls.msg.html

(cl:defclass <DriveControls> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (linear
    :reader linear
    :initarg :linear
    :type rover-msg:Vector3
    :initform (cl:make-instance 'rover-msg:Vector3))
   (angular
    :reader angular
    :initarg :angular
    :type rover-msg:Vector3
    :initform (cl:make-instance 'rover-msg:Vector3)))
)

(cl:defclass DriveControls (<DriveControls>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DriveControls>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DriveControls)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover-msg:<DriveControls> is deprecated: use rover-msg:DriveControls instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DriveControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:header-val is deprecated.  Use rover-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'linear-val :lambda-list '(m))
(cl:defmethod linear-val ((m <DriveControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:linear-val is deprecated.  Use rover-msg:linear instead.")
  (linear m))

(cl:ensure-generic-function 'angular-val :lambda-list '(m))
(cl:defmethod angular-val ((m <DriveControls>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:angular-val is deprecated.  Use rover-msg:angular instead.")
  (angular m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DriveControls>) ostream)
  "Serializes a message object of type '<DriveControls>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'linear) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'angular) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DriveControls>) istream)
  "Deserializes a message object of type '<DriveControls>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'linear) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'angular) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DriveControls>)))
  "Returns string type for a message object of type '<DriveControls>"
  "rover/DriveControls")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DriveControls)))
  "Returns string type for a message object of type 'DriveControls"
  "rover/DriveControls")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DriveControls>)))
  "Returns md5sum for a message object of type '<DriveControls>"
  "09119d3b0067bd05b1a6696c168cebb3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DriveControls)))
  "Returns md5sum for a message object of type 'DriveControls"
  "09119d3b0067bd05b1a6696c168cebb3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DriveControls>)))
  "Returns full string definition for message of type '<DriveControls>"
  (cl:format cl:nil "Header header~%Vector3 linear~%Vector3 angular~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rover/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DriveControls)))
  "Returns full string definition for message of type 'DriveControls"
  (cl:format cl:nil "Header header~%Vector3 linear~%Vector3 angular~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: rover/Vector3~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DriveControls>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'linear))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'angular))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DriveControls>))
  "Converts a ROS message object to a list"
  (cl:list 'DriveControls
    (cl:cons ':header (header msg))
    (cl:cons ':linear (linear msg))
    (cl:cons ':angular (angular msg))
))
