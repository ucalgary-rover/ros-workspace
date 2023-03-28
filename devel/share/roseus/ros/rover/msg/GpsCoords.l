;; Auto-generated. Do not edit!


(when (boundp 'rover::GpsCoords)
  (if (not (find-package "ROVER"))
    (make-package "ROVER"))
  (shadow 'GpsCoords (find-package "ROVER")))
(unless (find-package "ROVER::GPSCOORDS")
  (make-package "ROVER::GPSCOORDS"))

(in-package "ROS")
;;//! \htmlinclude GpsCoords.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass rover::GpsCoords
  :super ros::object
  :slots (_header _valid _latitude _longitude _altitude _ground_speed _satellites _direction ))

(defmethod rover::GpsCoords
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:valid __valid) nil)
    ((:latitude __latitude) 0.0)
    ((:longitude __longitude) 0.0)
    ((:altitude __altitude) 0.0)
    ((:ground_speed __ground_speed) 0.0)
    ((:satellites __satellites) 0)
    ((:direction __direction) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _valid __valid)
   (setq _latitude (float __latitude))
   (setq _longitude (float __longitude))
   (setq _altitude (float __altitude))
   (setq _ground_speed (float __ground_speed))
   (setq _satellites (round __satellites))
   (setq _direction (string __direction))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:valid
   (&optional __valid)
   (if __valid (setq _valid __valid)) _valid)
  (:latitude
   (&optional __latitude)
   (if __latitude (setq _latitude __latitude)) _latitude)
  (:longitude
   (&optional __longitude)
   (if __longitude (setq _longitude __longitude)) _longitude)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:ground_speed
   (&optional __ground_speed)
   (if __ground_speed (setq _ground_speed __ground_speed)) _ground_speed)
  (:satellites
   (&optional __satellites)
   (if __satellites (setq _satellites __satellites)) _satellites)
  (:direction
   (&optional __direction)
   (if __direction (setq _direction __direction)) _direction)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; bool _valid
    1
    ;; float64 _latitude
    8
    ;; float64 _longitude
    8
    ;; float64 _altitude
    8
    ;; float64 _ground_speed
    8
    ;; int32 _satellites
    4
    ;; string _direction
    4 (length _direction)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; bool _valid
       (if _valid (write-byte -1 s) (write-byte 0 s))
     ;; float64 _latitude
       (sys::poke _latitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _longitude
       (sys::poke _longitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ground_speed
       (sys::poke _ground_speed (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; int32 _satellites
       (write-long _satellites s)
     ;; string _direction
       (write-long (length _direction) s) (princ _direction s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; bool _valid
     (setq _valid (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float64 _latitude
     (setq _latitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _longitude
     (setq _longitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ground_speed
     (setq _ground_speed (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; int32 _satellites
     (setq _satellites (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; string _direction
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _direction (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get rover::GpsCoords :md5sum-) "3e7c7f9e823463c916e06e27876cc312")
(setf (get rover::GpsCoords :datatype-) "rover/GpsCoords")
(setf (get rover::GpsCoords :definition-)
      "Header header
bool valid
float64 latitude
float64 longitude
float64 altitude
float64 ground_speed
int32 satellites
string direction
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



(provide :rover/GpsCoords "3e7c7f9e823463c916e06e27876cc312")


