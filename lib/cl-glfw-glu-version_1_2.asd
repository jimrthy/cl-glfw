(defpackage #:cl-glfw-glu-version_1_2-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-glu-version_1_2-system)
 
(defsystem cl-glfw-glu-version_1_2
  :description "Common Lisp bindings for GLFW - GLU 1.2 Extension Package"
  :version "0.1"
  :author "William Robinson <airbaggins@users.sf.net>"
  :licence "Public Domain"
  :depends-on (cl-glfw)
  :components ((:file "glu-version_1_2")))
