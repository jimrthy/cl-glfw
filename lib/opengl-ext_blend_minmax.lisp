;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_blend_minmax

(defconstant +func-add+ #x8006) 
(defconstant +min+ #x8007) 
(defconstant +max+ #x8008) 
(defconstant +blend-equation+ #x8009) 
(defconstant +blend-equation-rgb+ #x8009) 
(defconstant +blend-equation-rgb-ext+ #x8009) 
(defconstant +blend-equation-rgb-oes+ #x8009) 
(defglextfun "BlendEquationEXT" blend-equation-ext :return "void" :args
 ((:name |mode| :type |BlendEquationModeEXT| :direction :in)) :category
 "EXT_blend_minmax" :deprecated nil :version "1.0") 
(make-extension-loader |EXT_blend_minmax|
 (("BlendEquationEXT" blend-equation-ext :return "void" :args
   ((:name |mode| :type |BlendEquationModeEXT| :direction :in)) :category
   "EXT_blend_minmax" :deprecated nil :version "1.0"))) 
