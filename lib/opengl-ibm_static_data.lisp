;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ibm_static_data

(defconstant +all-static-data-ibm+ #x19294) 
(defconstant +static-vertex-array-ibm+ #x19295) 
(defconstant +vertex-array-list-ibm+ #x1929E) 
(defconstant +normal-array-list-ibm+ #x1929F) 
(defconstant +color-array-list-ibm+ #x192A0) 
(defconstant +index-array-list-ibm+ #x192A1) 
(defconstant +texture-coord-array-list-ibm+ #x192A2) 
(defconstant +edge-flag-array-list-ibm+ #x192A3) 
(defconstant +fog-coordinate-array-list-ibm+ #x192A4) 
(defconstant +secondary-color-array-list-ibm+ #x192A5) 
(defconstant +vertex-array-list-stride-ibm+ #x192A8) 
(defconstant +normal-array-list-stride-ibm+ #x192A9) 
(defconstant +color-array-list-stride-ibm+ #x192AA) 
(defconstant +index-array-list-stride-ibm+ #x192AB) 
(defconstant +texture-coord-array-list-stride-ibm+ #x192AC) 
(defconstant +edge-flag-array-list-stride-ibm+ #x192AD) 
(defconstant +fog-coordinate-array-list-stride-ibm+ #x192AE) 
(defconstant +secondary-color-array-list-stride-ibm+ #x192AF) 
(defconstant +all-static-data-ibm+ #x19294) 
(defconstant +static-vertex-array-ibm+ #x19295) 
(defglextfun "FlushStaticDataIBM" flush-static-data-ibm :return
 "void" :args ((:name |target| :type |GLenum| :direction :in))
 :category "IBM_static_data" :deprecated nil :version "1.0") 
(make-extension-loader |IBM_static_data|
 (("FlushStaticDataIBM" flush-static-data-ibm :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)) :category
   "IBM_static_data" :deprecated nil :version "1.0"))) 