;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_element_array

(defconstant +element-array-apple+ #x8A0C) 
(defconstant +element-array-type-apple+ #x8A0D) 
(defconstant +element-array-pointer-apple+ #x8A0E) 
(defconstant +element-array-apple+ #x8A0C) 
(defconstant +element-array-type-apple+ #x8A0D) 
(defconstant +element-array-pointer-apple+ #x8A0E) 
(defglextfun "MultiDrawRangeElementArrayAPPLE"
 multi-draw-range-element-array-apple :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |first| :type |Int32| :direction :in :array t :size
   primcount)
  (:name |count| :type |SizeI| :direction :in :array t :size
   primcount)
  (:name |primcount| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :deprecated nil :version "1.2") 
(defglextfun "MultiDrawElementArrayAPPLE"
 multi-draw-element-array-apple :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |first| :type |Int32| :direction :in :array t :size
   primcount)
  (:name |count| :type |SizeI| :direction :in :array t :size
   primcount)
  (:name |primcount| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :deprecated nil :version "1.2") 
(defglextfun "DrawRangeElementArrayAPPLE"
 draw-range-element-array-apple :return "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |start| :type |UInt32| :direction :in)
  (:name |end| :type |UInt32| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :deprecated nil :version "1.2") 
(defglextfun "DrawElementArrayAPPLE" draw-element-array-apple :return
 "void" :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in))
 :category "APPLE_element_array" :deprecated nil :version "1.2") 
(defglextfun "ElementPointerAPPLE" element-pointer-apple :return
 "void" :args
 ((:name |type| :type |ElementPointerTypeATI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size type))
 :category "APPLE_element_array" :deprecated nil :version "1.2") 
(make-extension-loader |APPLE_element_array|
 (("MultiDrawRangeElementArrayAPPLE"
   multi-draw-range-element-array-apple :return "void" :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |start| :type |UInt32| :direction :in)
    (:name |end| :type |UInt32| :direction :in)
    (:name |first| :type |Int32| :direction :in :array t :size
     primcount)
    (:name |count| :type |SizeI| :direction :in :array t :size
     primcount)
    (:name |primcount| :type |SizeI| :direction :in))
   :category "APPLE_element_array" :deprecated nil :version "1.2")
  ("MultiDrawElementArrayAPPLE" multi-draw-element-array-apple
   :return "void" :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |first| :type |Int32| :direction :in :array t :size
     primcount)
    (:name |count| :type |SizeI| :direction :in :array t :size
     primcount)
    (:name |primcount| :type |SizeI| :direction :in))
   :category "APPLE_element_array" :deprecated nil :version "1.2")
  ("DrawRangeElementArrayAPPLE" draw-range-element-array-apple
   :return "void" :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |start| :type |UInt32| :direction :in)
    (:name |end| :type |UInt32| :direction :in)
    (:name |first| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in))
   :category "APPLE_element_array" :deprecated nil :version "1.2")
  ("DrawElementArrayAPPLE" draw-element-array-apple :return "void"
   :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |first| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in))
   :category "APPLE_element_array" :deprecated nil :version "1.2")
  ("ElementPointerAPPLE" element-pointer-apple :return "void" :args
   ((:name |type| :type |ElementPointerTypeATI| :direction :in)
    (:name |pointer| :type |Void| :direction :in :array t :size
     type))
   :category "APPLE_element_array" :deprecated nil :version "1.2"))) 
