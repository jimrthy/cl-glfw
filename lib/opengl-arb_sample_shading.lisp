;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_sample_shading

(defconstant +sample-shading-arb+ #x8C36) 
(defconstant +min-sample-shading-value-arb+ #x8C37) 
(defconstant +sample-shading-arb+ #x8C36) 
(defconstant +min-sample-shading-value-arb+ #x8C37) 
(defglextfun "MinSampleShadingARB" min-sample-shading-arb :return "void" :args ((:name |value| :type |ColorF| :direction :in)) :category "ARB_sample_shading" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_sample_shading| (("MinSampleShadingARB" min-sample-shading-arb :return "void" :args ((:name |value| :type |ColorF| :direction :in)) :category "ARB_sample_shading" :deprecated nil :version "1.2"))) 
