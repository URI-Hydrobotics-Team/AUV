
(cl:in-package :asdf)

(defsystem "mvp_msgs-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :mvp_msgs-msg
)
  :components ((:file "_package")
    (:file "ChangeState" :depends-on ("_package_ChangeState"))
    (:file "_package_ChangeState" :depends-on ("_package"))
    (:file "GetControlMode" :depends-on ("_package_GetControlMode"))
    (:file "_package_GetControlMode" :depends-on ("_package"))
    (:file "GetControlModes" :depends-on ("_package_GetControlModes"))
    (:file "_package_GetControlModes" :depends-on ("_package"))
    (:file "GetState" :depends-on ("_package_GetState"))
    (:file "_package_GetState" :depends-on ("_package"))
    (:file "GetStates" :depends-on ("_package_GetStates"))
    (:file "_package_GetStates" :depends-on ("_package"))
    (:file "SetControlPoint" :depends-on ("_package_SetControlPoint"))
    (:file "_package_SetControlPoint" :depends-on ("_package"))
  ))