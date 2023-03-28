; Auto-generated. Do not edit!


(cl:in-package rover-msg)


;//! \htmlinclude SignalStatus.msg.html

(cl:defclass <SignalStatus> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (bit_rate
    :reader bit_rate
    :initarg :bit_rate
    :type cl:string
    :initform "")
   (link_quality
    :reader link_quality
    :initarg :link_quality
    :type cl:string
    :initform "")
   (signal
    :reader signal
    :initarg :signal
    :type cl:string
    :initform "")
   (noise
    :reader noise
    :initarg :noise
    :type cl:string
    :initform ""))
)

(cl:defclass SignalStatus (<SignalStatus>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SignalStatus>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SignalStatus)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rover-msg:<SignalStatus> is deprecated: use rover-msg:SignalStatus instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:header-val is deprecated.  Use rover-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'bit_rate-val :lambda-list '(m))
(cl:defmethod bit_rate-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:bit_rate-val is deprecated.  Use rover-msg:bit_rate instead.")
  (bit_rate m))

(cl:ensure-generic-function 'link_quality-val :lambda-list '(m))
(cl:defmethod link_quality-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:link_quality-val is deprecated.  Use rover-msg:link_quality instead.")
  (link_quality m))

(cl:ensure-generic-function 'signal-val :lambda-list '(m))
(cl:defmethod signal-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:signal-val is deprecated.  Use rover-msg:signal instead.")
  (signal m))

(cl:ensure-generic-function 'noise-val :lambda-list '(m))
(cl:defmethod noise-val ((m <SignalStatus>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rover-msg:noise-val is deprecated.  Use rover-msg:noise instead.")
  (noise m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SignalStatus>) ostream)
  "Serializes a message object of type '<SignalStatus>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'bit_rate))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'bit_rate))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'link_quality))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'link_quality))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'signal))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'signal))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'noise))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'noise))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SignalStatus>) istream)
  "Deserializes a message object of type '<SignalStatus>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'bit_rate) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'bit_rate) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'link_quality) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'link_quality) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'signal) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'signal) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'noise) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'noise) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SignalStatus>)))
  "Returns string type for a message object of type '<SignalStatus>"
  "rover/SignalStatus")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SignalStatus)))
  "Returns string type for a message object of type 'SignalStatus"
  "rover/SignalStatus")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SignalStatus>)))
  "Returns md5sum for a message object of type '<SignalStatus>"
  "87e213a128d72e1b3479fb7256b106e4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SignalStatus)))
  "Returns md5sum for a message object of type 'SignalStatus"
  "87e213a128d72e1b3479fb7256b106e4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SignalStatus>)))
  "Returns full string definition for message of type '<SignalStatus>"
  (cl:format cl:nil "Header header~%string bit_rate~%string link_quality~%string signal~%string noise~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SignalStatus)))
  "Returns full string definition for message of type 'SignalStatus"
  (cl:format cl:nil "Header header~%string bit_rate~%string link_quality~%string signal~%string noise~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SignalStatus>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'bit_rate))
     4 (cl:length (cl:slot-value msg 'link_quality))
     4 (cl:length (cl:slot-value msg 'signal))
     4 (cl:length (cl:slot-value msg 'noise))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SignalStatus>))
  "Converts a ROS message object to a list"
  (cl:list 'SignalStatus
    (cl:cons ':header (header msg))
    (cl:cons ':bit_rate (bit_rate msg))
    (cl:cons ':link_quality (link_quality msg))
    (cl:cons ':signal (signal msg))
    (cl:cons ':noise (noise msg))
))
