;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_primitive_restart

(defconstant +primitive-restart-nv+ #x8558) 
(defconstant +primitive-restart-index-nv+ #x8559) 
(defconstant +primitive-restart-nv+ #x8558) 
(defconstant +primitive-restart-index-nv+ #x8559) 
(defglextfun "PrimitiveRestartIndexNV" primitive-restart-index-nv :return "void" :args ((:name |index| :type |UInt32| :direction :in)) :category "NV_primitive_restart" :deprecated nil :version "1.2") 
(defglextfun "PrimitiveRestartNV" primitive-restart-nv :return "void" :args nil :category "NV_primitive_restart" :deprecated nil :version "1.2") 
(make-extension-loader |NV_primitive_restart| (("PrimitiveRestartIndexNV" primitive-restart-index-nv :return "void" :args ((:name |index| :type |UInt32| :direction :in)) :category "NV_primitive_restart" :deprecated nil :version "1.2") ("PrimitiveRestartNV" primitive-restart-nv :return "void" :args nil :category "NV_primitive_restart" :deprecated nil :version "1.2"))) 
