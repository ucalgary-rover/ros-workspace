;; Auto-generated. Do not edit!


(when (boundp 'rover::SignalStatus)
  (if (not (find-package "ROVER"))
    (make-package "ROVER"))
  (shadow 'SignalStatus (find-package "ROVER")))
(unless (find-package "ROVER::SIGNALSTATUS")
  (make-package "ROVER::SIGNALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude SignalStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rover::SignalStatus
  :super ros::object
  :slots (_header _bit_rate _link_quality _signal _noise ))

(defmethod rover::SignalStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:bit_rate __bit_rate) "")
    ((:link_quality __link_quality) "")
    ((:signal __signal) "")
    ((:noise __noise) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _bit_rate (string __bit_rate))
   (setq _link_quality (string __link_quality))
   (setq _signal (string __signal))
   (setq _noise (string __noise))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:bit_rate
   (&optional __bit_rate)
   (if __bit_rate (setq _bit_rate __bit_rate)) _bit_rate)
  (:link_quality
   (&optional __link_quality)
   (if __link_quality (setq _link_quality __link_quality)) _link_quality)
  (:signal
   (&optional __signal)
   (if __signal (setq _signal __signal)) _signal)
  (:noise
   (&optional __noise)
   (if __noise (setq _noise __noise)) _noise)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _bit_rate
    4 (length _bit_rate)
    ;; string _link_quality
    4 (length _link_quality)
    ;; string _signal
    4 (length _signal)
    ;; string _noise
    4 (length _noise)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _bit_rate
       (write-long (length _bit_rate) s) (princ _bit_rate s)
     ;; string _link_quality
       (write-long (length _link_quality) s) (princ _link_quality s)
     ;; string _signal
       (write-long (length _signal) s) (princ _signal s)
     ;; string _noise
       (write-long (length _noise) s) (princ _noise s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _bit_rate
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _bit_rate (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _link_quality
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _link_quality (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _signal
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _signal (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _noise
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _noise (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rover::SignalStatus :md5sum-) "87e213a128d72e1b3479fb7256b106e4")
(setf (get rover::SignalStatus :datatype-) "rover/SignalStatus")
(setf (get rover::SignalStatus :definition-)
      "Header header
string bit_rate
string link_quality
string signal
string noise
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

")



(provide :rover/SignalStatus "87e213a128d72e1b3479fb7256b106e4")


