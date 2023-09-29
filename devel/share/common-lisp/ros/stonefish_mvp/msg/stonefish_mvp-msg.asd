
(cl:in-package :asdf)

(defsystem "stonefish_mvp-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "BeaconInfo" :depends-on ("_package_BeaconInfo"))
    (:file "_package_BeaconInfo" :depends-on ("_package"))
    (:file "Int32Stamped" :depends-on ("_package_Int32Stamped"))
    (:file "_package_Int32Stamped" :depends-on ("_package"))
    (:file "ThrusterState" :depends-on ("_package_ThrusterState"))
    (:file "_package_ThrusterState" :depends-on ("_package"))
  ))