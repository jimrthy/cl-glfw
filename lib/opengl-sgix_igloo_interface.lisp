;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_igloo_interface

(defglextfun "IglooInterfaceSGIX" igloo-interface-sgix :return "void"
 :args
 ((:name |pname| :type |IglooFunctionSelectSGIX| :direction :in)
  (:name |params| :type |IglooParameterSGIX| :direction :in :array t
   :size (|pname|)))
 :category "SGIX_igloo_interface" :deprecated nil :version "1.0") 
(make-extension-loader |SGIX_igloo_interface|
 (("IglooInterfaceSGIX" igloo-interface-sgix :return "void" :args
   ((:name |pname| :type |IglooFunctionSelectSGIX| :direction :in)
    (:name |params| :type |IglooParameterSGIX| :direction :in :array
     t :size (|pname|)))
   :category "SGIX_igloo_interface" :deprecated nil :version "1.0"))) 
