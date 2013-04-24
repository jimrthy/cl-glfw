;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; oes_single_precision

(defglextfun "GetClipPlanefOES" get-clip-planef-oes :return "void"
 :args
 ((:name |plane| :type |GLenum| :direction :in)
  (:name |equation| :type |Float32| :direction :out :array t :size
   #x4))
 :category "OES_single_precision" :deprecated nil :version "4.3") 
(defglextfun "ClearDepthfOES" clear-depthf-oes :return "void" :args
 ((:name |depth| :type |ClampedFloat64| :direction :in)) :category
 "OES_single_precision" :deprecated nil :version "4.3") 
(defglextfun "ClipPlanefOES" clip-planef-oes :return "void" :args
 ((:name |plane| :type |GLenum| :direction :in)
  (:name |equation| :type |ConstFloat32| :direction :in :array t
   :size #x4))
 :category "OES_single_precision" :deprecated nil :version "4.3") 
(defglextfun "OrthofOES" orthof-oes :return "void" :args
 ((:name \l :type |Float32| :direction :in)
  (:name \r :type |Float32| :direction :in)
  (:name |b| :type |Float32| :direction :in)
  (:name \t :type |Float32| :direction :in)
  (:name \n :type |Float32| :direction :in)
  (:name |f| :type |Float32| :direction :in))
 :category "OES_single_precision" :deprecated nil :version "4.3") 
(defglextfun "FrustumfOES" frustumf-oes :return "void" :args
 ((:name \l :type |Float32| :direction :in)
  (:name \r :type |Float32| :direction :in)
  (:name |b| :type |Float32| :direction :in)
  (:name \t :type |Float32| :direction :in)
  (:name \n :type |Float32| :direction :in)
  (:name |f| :type |Float32| :direction :in))
 :category "OES_single_precision" :deprecated nil :version "4.3") 
(defglextfun "DepthRangefOES" depth-rangef-oes :return "void" :args
 ((:name \n :type |ClampedFloat32| :direction :in)
  (:name |f| :type |ClampedFloat32| :direction :in))
 :category "OES_single_precision" :deprecated nil :version "4.3") 
(make-extension-loader |OES_single_precision|
 (("GetClipPlanefOES" get-clip-planef-oes :return "void" :args
   ((:name |plane| :type |GLenum| :direction :in)
    (:name |equation| :type |Float32| :direction :out :array t :size
     #x4))
   :category "OES_single_precision" :deprecated nil :version "4.3")
  ("ClearDepthfOES" clear-depthf-oes :return "void" :args
   ((:name |depth| :type |ClampedFloat64| :direction :in)) :category
   "OES_single_precision" :deprecated nil :version "4.3")
  ("ClipPlanefOES" clip-planef-oes :return "void" :args
   ((:name |plane| :type |GLenum| :direction :in)
    (:name |equation| :type |ConstFloat32| :direction :in :array t
     :size #x4))
   :category "OES_single_precision" :deprecated nil :version "4.3")
  ("OrthofOES" orthof-oes :return "void" :args
   ((:name \l :type |Float32| :direction :in)
    (:name \r :type |Float32| :direction :in)
    (:name |b| :type |Float32| :direction :in)
    (:name \t :type |Float32| :direction :in)
    (:name \n :type |Float32| :direction :in)
    (:name |f| :type |Float32| :direction :in))
   :category "OES_single_precision" :deprecated nil :version "4.3")
  ("FrustumfOES" frustumf-oes :return "void" :args
   ((:name \l :type |Float32| :direction :in)
    (:name \r :type |Float32| :direction :in)
    (:name |b| :type |Float32| :direction :in)
    (:name \t :type |Float32| :direction :in)
    (:name \n :type |Float32| :direction :in)
    (:name |f| :type |Float32| :direction :in))
   :category "OES_single_precision" :deprecated nil :version "4.3")
  ("DepthRangefOES" depth-rangef-oes :return "void" :args
   ((:name \n :type |ClampedFloat32| :direction :in)
    (:name |f| :type |ClampedFloat32| :direction :in))
   :category "OES_single_precision" :deprecated nil :version "4.3"))) 