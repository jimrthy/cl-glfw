(defpackage #:cl-glfw-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-system)

(defsystem cl-glfw3
  :description "Common Lisp bindings for GLFW3"
  :version "0.1"
  :author "James Gatannah <james.gatannah@gmail.com>"
  :licence "Eclipse Public License"
  :depends-on (cffi #| alexandria |#)
  :components ((:module manual :serial t
			:components ((:file "glfw3-package")
				     (:file "glfw3-macros")
				     (:file "glfw3")))))
