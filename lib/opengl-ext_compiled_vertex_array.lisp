;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_compiled_vertex_array

(defconstant +array-element-lock-first-ext+ #x81A8) 
(defconstant +array-element-lock-count-ext+ #x81A9) 
(defconstant +array-element-lock-first-ext+ #x81A8) 
(defconstant +array-element-lock-count-ext+ #x81A9) 
(defglextfun "UnlockArraysEXT" unlock-arrays-ext :return "void" :args
 nil :category "EXT_compiled_vertex_array" :deprecated nil :version
 "1.1") 
(defglextfun "LockArraysEXT" lock-arrays-ext :return "void" :args
 ((:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "EXT_compiled_vertex_array" :deprecated nil :version "1.1") 
(make-extension-loader |EXT_compiled_vertex_array|
 (("UnlockArraysEXT" unlock-arrays-ext :return "void" :args nil
   :category "EXT_compiled_vertex_array" :deprecated nil :version
   "1.1")
  ("LockArraysEXT" lock-arrays-ext :return "void" :args
   ((:name |first| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in))
   :category "EXT_compiled_vertex_array" :deprecated nil :version
   "1.1"))) 
