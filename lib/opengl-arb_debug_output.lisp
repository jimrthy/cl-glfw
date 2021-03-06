;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_debug_output

(defconstant +debug-output-synchronous-arb+ #x8242) 
(defconstant +debug-next-logged-message-length-arb+ #x8243) 
(defconstant +debug-callback-function-arb+ #x8244) 
(defconstant +debug-callback-user-param-arb+ #x8245) 
(defconstant +debug-source-api-arb+ #x8246) 
(defconstant +debug-source-window-system-arb+ #x8247) 
(defconstant +debug-source-shader-compiler-arb+ #x8248) 
(defconstant +debug-source-third-party-arb+ #x8249) 
(defconstant +debug-source-application-arb+ #x824A) 
(defconstant +debug-source-other-arb+ #x824B) 
(defconstant +debug-type-error-arb+ #x824C) 
(defconstant +debug-type-deprecated-behavior-arb+ #x824D) 
(defconstant +debug-type-undefined-behavior-arb+ #x824E) 
(defconstant +debug-type-portability-arb+ #x824F) 
(defconstant +debug-type-performance-arb+ #x8250) 
(defconstant +debug-type-other-arb+ #x8251) 
(defconstant +debug-output-synchronous-arb+ #x8242) 
(defconstant +debug-next-logged-message-length-arb+ #x8243) 
(defconstant +debug-callback-function-arb+ #x8244) 
(defconstant +debug-callback-user-param-arb+ #x8245) 
(defconstant +debug-source-api-arb+ #x8246) 
(defconstant +debug-source-window-system-arb+ #x8247) 
(defconstant +debug-source-shader-compiler-arb+ #x8248) 
(defconstant +debug-source-third-party-arb+ #x8249) 
(defconstant +debug-source-application-arb+ #x824A) 
(defconstant +debug-source-other-arb+ #x824B) 
(defconstant +debug-type-error-arb+ #x824C) 
(defconstant +debug-type-deprecated-behavior-arb+ #x824D) 
(defconstant +debug-type-undefined-behavior-arb+ #x824E) 
(defconstant +debug-type-portability-arb+ #x824F) 
(defconstant +debug-type-performance-arb+ #x8250) 
(defconstant +debug-type-other-arb+ #x8251) 
(defconstant +max-debug-message-length-arb+ #x9143) 
(defconstant +max-debug-logged-messages-arb+ #x9144) 
(defconstant +debug-logged-messages-arb+ #x9145) 
(defconstant +debug-severity-high-arb+ #x9146) 
(defconstant +debug-severity-medium-arb+ #x9147) 
(defconstant +debug-severity-low-arb+ #x9148) 
(defglextfun "GetDebugMessageLogARB" get-debug-message-log-arb :return "UInt32"
 :args
 ((:name |count| :type |UInt32| :direction :in)
  (:name |bufsize| :type |SizeI| :direction :in)
  (:name |sources| :type |GLenum| :direction :out :array t :size count)
  (:name |types| :type |GLenum| :direction :out :array t :size count)
  (:name |ids| :type |UInt32| :direction :out :array t :size count)
  (:name |severities| :type |GLenum| :direction :out :array t :size count)
  (:name |lengths| :type |SizeI| :direction :out :array t :size count)
  (:name |messageLog| :type |Char| :direction :out :array t :size (|lengths|)))
 :category "ARB_debug_output" :deprecated nil :version "4.1") 
(defglextfun "DebugMessageCallbackARB" debug-message-callback-arb :return
 "void" :args
 ((:name |callback| :type gldebugprocarb :direction :in)
  (:name |userParam| :type |Void| :direction :in :array t :size (|callback|)))
 :category "ARB_debug_output" :deprecated nil :version "4.1") 
(defglextfun "DebugMessageInsertARB" debug-message-insert-arb :return "void"
 :args
 ((:name |source| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |id| :type |UInt32| :direction :in)
  (:name |severity| :type |GLenum| :direction :in)
  (:name |length| :type |SizeI| :direction :in)
  (:name |buf| :type |Char| :direction :in :array t :size length))
 :category "ARB_debug_output" :deprecated nil :version "4.1") 
(defglextfun "DebugMessageControlARB" debug-message-control-arb :return "void"
 :args
 ((:name |source| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |severity| :type |GLenum| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |ids| :type |UInt32| :direction :in :array t :size count)
  (:name |enabled| :type |Boolean| :direction :in))
 :category "ARB_debug_output" :deprecated nil :version "4.1") 
(make-extension-loader |ARB_debug_output|
 (("GetDebugMessageLogARB" get-debug-message-log-arb :return "UInt32" :args
   ((:name |count| :type |UInt32| :direction :in)
    (:name |bufsize| :type |SizeI| :direction :in)
    (:name |sources| :type |GLenum| :direction :out :array t :size count)
    (:name |types| :type |GLenum| :direction :out :array t :size count)
    (:name |ids| :type |UInt32| :direction :out :array t :size count)
    (:name |severities| :type |GLenum| :direction :out :array t :size count)
    (:name |lengths| :type |SizeI| :direction :out :array t :size count)
    (:name |messageLog| :type |Char| :direction :out :array t :size
     (|lengths|)))
   :category "ARB_debug_output" :deprecated nil :version "4.1")
  ("DebugMessageCallbackARB" debug-message-callback-arb :return "void" :args
   ((:name |callback| :type gldebugprocarb :direction :in)
    (:name |userParam| :type |Void| :direction :in :array t :size
     (|callback|)))
   :category "ARB_debug_output" :deprecated nil :version "4.1")
  ("DebugMessageInsertARB" debug-message-insert-arb :return "void" :args
   ((:name |source| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |id| :type |UInt32| :direction :in)
    (:name |severity| :type |GLenum| :direction :in)
    (:name |length| :type |SizeI| :direction :in)
    (:name |buf| :type |Char| :direction :in :array t :size length))
   :category "ARB_debug_output" :deprecated nil :version "4.1")
  ("DebugMessageControlARB" debug-message-control-arb :return "void" :args
   ((:name |source| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |severity| :type |GLenum| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |ids| :type |UInt32| :direction :in :array t :size count)
    (:name |enabled| :type |Boolean| :direction :in))
   :category "ARB_debug_output" :deprecated nil :version "4.1"))) 
