;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_framebuffer_no_attachments

(defconstant +framebuffer-default-width+ #x9310) 
(defconstant +framebuffer-default-height+ #x9311) 
(defconstant +framebuffer-default-layers+ #x9312) 
(defconstant +framebuffer-default-samples+ #x9313) 
(defconstant +framebuffer-default-fixed-sample-locations+ #x9314) 
(defconstant +max-framebuffer-width+ #x9315) 
(defconstant +max-framebuffer-height+ #x9316) 
(defconstant +max-framebuffer-layers+ #x9317) 
(defconstant +max-framebuffer-samples+ #x9318) 
(defconstant +framebuffer-default-width+ #x9310) 
(defconstant +framebuffer-default-height+ #x9311) 
(defconstant +framebuffer-default-layers+ #x9312) 
(defconstant +framebuffer-default-samples+ #x9313) 
(defconstant +framebuffer-default-fixed-sample-locations+ #x9314) 
(defconstant +max-framebuffer-width+ #x9315) 
(defconstant +max-framebuffer-height+ #x9316) 
(defconstant +max-framebuffer-layers+ #x9317) 
(defconstant +max-framebuffer-samples+ #x9318) 
(defglextfun "GetNamedFramebufferParameterivEXT" get-named-framebuffer-parameter-iv-ext :return "void" :args ((:name |framebuffer| :type |UInt32| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") 
(defglextfun "NamedFramebufferParameteriEXT" named-framebuffer-parameter-i-ext :return "void" :args ((:name |framebuffer| :type |UInt32| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") 
(defglextfun "GetFramebufferParameteriv" get-framebuffer-parameter-iv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") 
(defglextfun "FramebufferParameteri" framebuffer-parameter-i :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") 
(make-extension-loader |ARB_framebuffer_no_attachments| (("GetNamedFramebufferParameterivEXT" get-named-framebuffer-parameter-iv-ext :return "void" :args ((:name |framebuffer| :type |UInt32| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") ("NamedFramebufferParameteriEXT" named-framebuffer-parameter-i-ext :return "void" :args ((:name |framebuffer| :type |UInt32| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") ("GetFramebufferParameteriv" get-framebuffer-parameter-iv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3") ("FramebufferParameteri" framebuffer-parameter-i :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "ARB_framebuffer_no_attachments" :deprecated nil :version "4.3"))) 
