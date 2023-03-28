;; Auto-generated. Do not edit!


(when (boundp 'rover::DriveControls)
  (if (not (find-package "ROVER"))
    (make-package "ROVER"))
  (shadow 'DriveControls (find-package "ROVER")))
(unless (find-package "ROVER::DRIVECONTROLS")
  (make-package "ROVER::DRIVECONTROLS"))

(in-package "ROS")
;;//! \htmlinclude DriveControls.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rover::DriveControls
  :super ros::object
  :slots (_header _linear _angular ))

(defmethod rover::DriveControls
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:linear __linear) (instance rover::Vector3 :init))
    ((:angular __angular) (instance rover::Vector3 :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _linear __linear)
   (setq _angular __angular)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:linear
   (&rest __linear)
   (if (keywordp (car __linear))
       (send* _linear __linear)
     (progn
       (if __linear (setq _linear (car __linear)))
       _linear)))
  (:angular
   (&rest __angular)
   (if (keywordp (car __angular))
       (send* _angular __angular)
     (progn
       (if __angular (setq _angular (car __angular)))
       _angular)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; rover/Vector3 _linear
    (send _linear :serialization-length)
    ;; rover/Vector3 _angular
    (send _angular :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; rover/Vector3 _linear
       (send _linear :serialize s)
     ;; rover/Vector3 _angular
       (send _angular :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; rover/Vector3 _linear
     (send _linear :deserialize buf ptr-) (incf ptr- (send _linear :serialization-length))
   ;; rover/Vector3 _angular
     (send _angular :deserialize buf ptr-) (incf ptr- (send _angular :serialization-length))
   ;;
   self)
  )

(setf (get rover::DriveControls :md5sum-) "09119d3b0067bd05b1a6696c168cebb3")
(setf (get rover::DriveControls :datatype-) "rover/DriveControls")
(setf (get rover::DriveControls :definition-)
      "Header header
Vector3 linear
Vector3 angular
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

================================================================================
MSG: rover/Vector3
float64 x
float64 y
float64 z
")



(provide :rover/DriveControls "09119d3b0067bd05b1a6696c168cebb3")


