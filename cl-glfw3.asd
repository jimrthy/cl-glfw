(defpackage #:cl-glfw-system
  (:use #:asdf #:cl))

(in-package #:cl-glfw-system)

(defsystem cl-glfw3
  :description "Common Lisp bindings for GLFW3"
  :version "0.1"
  :author "James Gatannah <james.gatannah@gmail.com>"
  :licence "Eclipse Public License"
  :long-description "Minimalist wrapper around the GLFW3 library"
  :depends-on (cffi #| alexandria |#)
  :serial t
  :components ((:module manual
			:components ((:file "glfw3-package")
				     (:file "glfw-macros")
				     (:file "glfw3"
					    :depends-on ("glfw3-package" "glfw-macros"))))))

