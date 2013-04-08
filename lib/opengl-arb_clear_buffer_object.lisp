;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_clear_buffer_object

(defglextfun "ClearNamedBufferSubDataEXT"
 clear-named-buffer-sub-data-ext :return "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |offset| :type |BufferSize| :direction :in)
  (:name |size| :type |BufferSize| :direction :in)
  (:name |format| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |data| :type |void| :direction :in :array t :size
   (|format| |type|)))
 :category "ARB_clear_buffer_object" :deprecated nil :version "4.3") 
(defglextfun "ClearNamedBufferDataEXT" clear-named-buffer-data-ext
 :return "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |format| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |data| :type |void| :direction :in :array t :size
   (|format| |type|)))
 :category "ARB_clear_buffer_object" :deprecated nil :version "4.3") 
(defglextfun "ClearBufferSubData" clear-buffer-sub-data :return
 "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |offset| :type |BufferOffset| :direction :in)
  (:name |size| :type |BufferSize| :direction :in)
  (:name |format| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |data| :type |void| :direction :in :array t :size
   (|format| |type|)))
 :category "ARB_clear_buffer_object" :deprecated nil :version "4.3") 
(defglextfun "ClearBufferData" clear-buffer-data :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |internalformat| :type |GLenum| :direction :in)
  (:name |format| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |data| :type |void| :direction :in :array t :size
   (|format| |type|)))
 :category "ARB_clear_buffer_object" :deprecated nil :version "4.3") 
(make-extension-loader |ARB_clear_buffer_object|
 (("ClearNamedBufferSubDataEXT" clear-named-buffer-sub-data-ext
   :return "void" :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |internalformat| :type |GLenum| :direction :in)
    (:name |offset| :type |BufferSize| :direction :in)
    (:name |size| :type |BufferSize| :direction :in)
    (:name |format| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |data| :type |void| :direction :in :array t :size
     (|format| |type|)))
   :category "ARB_clear_buffer_object" :deprecated nil :version
   "4.3")
  ("ClearNamedBufferDataEXT" clear-named-buffer-data-ext :return
   "void" :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |internalformat| :type |GLenum| :direction :in)
    (:name |format| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |data| :type |void| :direction :in :array t :size
     (|format| |type|)))
   :category "ARB_clear_buffer_object" :deprecated nil :version
   "4.3")
  ("ClearBufferSubData" clear-buffer-sub-data :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |internalformat| :type |GLenum| :direction :in)
    (:name |offset| :type |BufferOffset| :direction :in)
    (:name |size| :type |BufferSize| :direction :in)
    (:name |format| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |data| :type |void| :direction :in :array t :size
     (|format| |type|)))
   :category "ARB_clear_buffer_object" :deprecated nil :version
   "4.3")
  ("ClearBufferData" clear-buffer-data :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |internalformat| :type |GLenum| :direction :in)
    (:name |format| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |data| :type |void| :direction :in :array t :size
     (|format| |type|)))
   :category "ARB_clear_buffer_object" :deprecated nil :version
   "4.3"))) 
