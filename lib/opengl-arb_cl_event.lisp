;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_cl_event

(defconstant +sync-cl-event-arb+ #x8240) 
(defconstant +sync-cl-event-complete-arb+ #x8241) 
(defconstant +sync-cl-event-arb+ #x8240) 
(defconstant +sync-cl-event-complete-arb+ #x8241) 
(defglextfun "CreateSyncFromCLeventARB" create-sync-from-clevent-arb
 :return "sync" :args
 ((:name |context| :type |cl_context| :direction :in)
  (:name |event| :type |cl_event| :direction :in)
  (:name |flags| :type |GLbitfield| :direction :in))
 :category "ARB_cl_event" :deprecated nil :version "4.1") 
(make-extension-loader |ARB_cl_event|
 (("CreateSyncFromCLeventARB" create-sync-from-clevent-arb :return
   "sync" :args
   ((:name |context| :type |cl_context| :direction :in)
    (:name |event| :type |cl_event| :direction :in)
    (:name |flags| :type |GLbitfield| :direction :in))
   :category "ARB_cl_event" :deprecated nil :version "4.1"))) 
