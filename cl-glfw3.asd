(defpackage #:cl-glfw-system
  (:use #:asdf #:cl #:alexandria))
(in-package #:cl-glfw-system)

(defsystem cl-glfw3
  :description "Common Lisp bindings for GLFW3"
  :version "0.1"
  :author "James Ashley <james.ashley@gmail.com>"
  :licence "Eclipse Public License"
  :depends-on (cffi alexandria)
  :components ((:module manual) :serial t
	       :components ((:file "glfw-package"
				   "glfw3"))))
