
(cl:in-package :asdf)

(defsystem "stonefish_mvp-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SonarSettings" :depends-on ("_package_SonarSettings"))
    (:file "_package_SonarSettings" :depends-on ("_package"))
    (:file "SonarSettings2" :depends-on ("_package_SonarSettings2"))
    (:file "_package_SonarSettings2" :depends-on ("_package"))
  ))