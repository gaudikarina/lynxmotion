
(cl:in-package :asdf)

(defsystem "lynxmotion-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "CD" :depends-on ("_package_CD"))
    (:file "_package_CD" :depends-on ("_package"))
  ))