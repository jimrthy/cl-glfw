;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_transform_feedback3

(defconstant +max-transform-feedback-buffers+ #x8E70) 
(defconstant +max-vertex-streams+ #x8E71) 
(defconstant +max-vertex-streams+ :unable-to-resolve) 
(defconstant +max-transform-feedback-buffers+ #x8E70) 
(defconstant +max-vertex-streams+ #x8E71) 
(defglextfun "GetQueryIndexediv" get-query-indexed-iv :return "void"
 :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "ARB_transform_feedback3" :deprecated nil :version "1.2") 
(defglextfun "EndQueryIndexed" end-query-indexed :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in))
 :category "ARB_transform_feedback3" :deprecated nil :version "1.2") 
(defglextfun "BeginQueryIndexed" begin-query-indexed :return "void"
 :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |id| :type |UInt32| :direction :in))
 :category "ARB_transform_feedback3" :deprecated nil :version "1.2") 
(defglextfun "DrawTransformFeedbackStream"
 draw-transform-feedback-stream :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |id| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in))
 :category "ARB_transform_feedback3" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_transform_feedback3|
 (("GetQueryIndexediv" get-query-indexed-iv :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "ARB_transform_feedback3" :deprecated nil :version
   "1.2")
  ("EndQueryIndexed" end-query-indexed :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in))
   :category "ARB_transform_feedback3" :deprecated nil :version
   "1.2")
  ("BeginQueryIndexed" begin-query-indexed :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |id| :type |UInt32| :direction :in))
   :category "ARB_transform_feedback3" :deprecated nil :version
   "1.2")
  ("DrawTransformFeedbackStream" draw-transform-feedback-stream
   :return "void" :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |id| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in))
   :category "ARB_transform_feedback3" :deprecated nil :version
   "1.2"))) 