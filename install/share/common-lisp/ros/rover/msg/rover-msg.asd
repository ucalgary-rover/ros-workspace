
(cl:in-package :asdf)

(defsystem "rover-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :std_msgs-msg
)
  :components ((:file "_package")
    (:file "DriveControls" :depends-on ("_package_DriveControls"))
    (:file "_package_DriveControls" :depends-on ("_package"))
    (:file "GpsCoords" :depends-on ("_package_GpsCoords"))
    (:file "_package_GpsCoords" :depends-on ("_package"))
    (:file "MotorState" :depends-on ("_package_MotorState"))
    (:file "_package_MotorState" :depends-on ("_package"))
    (:file "SignalStatus" :depends-on ("_package_SignalStatus"))
    (:file "_package_SignalStatus" :depends-on ("_package"))
    (:file "Vector3" :depends-on ("_package_Vector3"))
    (:file "_package_Vector3" :depends-on ("_package"))
  ))