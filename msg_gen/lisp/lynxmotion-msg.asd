
(cl:in-package :asdf)

(defsystem "lynxmotion-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "commData" :depends-on ("_package_commData"))
    (:file "_package_commData" :depends-on ("_package"))
    (:file "motores" :depends-on ("_package_motores"))
    (:file "_package_motores" :depends-on ("_package"))
    (:file "posiciones" :depends-on ("_package_posiciones"))
    (:file "_package_posiciones" :depends-on ("_package"))
    (:file "angulos" :depends-on ("_package_angulos"))
    (:file "_package_angulos" :depends-on ("_package"))
    (:file "aceleracion" :depends-on ("_package_aceleracion"))
    (:file "_package_aceleracion" :depends-on ("_package"))
  ))