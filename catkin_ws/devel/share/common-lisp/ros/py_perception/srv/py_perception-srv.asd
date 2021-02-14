
(cl:in-package :asdf)

(defsystem "py_perception-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :sensor_msgs-msg
)
  :components ((:file "_package")
    (:file "FilterCloud" :depends-on ("_package_FilterCloud"))
    (:file "_package_FilterCloud" :depends-on ("_package"))
  ))