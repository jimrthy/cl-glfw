;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; apple_fence

(defconstant +draw-pixels-apple+ #x8A0A) 
(defconstant +fence-apple+ #x8A0B) 
(defconstant +draw-pixels-apple+ #x8A0A) 
(defconstant +fence-apple+ #x8A0B) 
(defglextfun "FinishObjectAPPLE" finish-object-apple :return "void" :args
 ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
  (:name |name| :type |Int32| :direction :in))
 :category "APPLE_fence" :deprecated nil :version "1.2") 
(defglextfun "TestObjectAPPLE" test-object-apple :return "Boolean" :args
 ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
  (:name |name| :type |UInt32| :direction :in))
 :category "APPLE_fence" :deprecated nil :version "1.2") 
(defglextfun "FinishFenceAPPLE" finish-fence-apple :return "void" :args
 ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
 :deprecated nil :version "1.2") 
(defglextfun "TestFenceAPPLE" test-fence-apple :return "Boolean" :args
 ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
 :deprecated nil :version "1.2") 
(defglextfun "IsFenceAPPLE" is-fence-apple :return "Boolean" :args
 ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
 :deprecated nil :version "1.2") 
(defglextfun "SetFenceAPPLE" set-fence-apple :return "void" :args
 ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
 :deprecated nil :version "1.2") 
(defglextfun "DeleteFencesAPPLE" delete-fences-apple :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |fences| :type |FenceNV| :direction :in :array t :size n))
 :category "APPLE_fence" :deprecated nil :version "1.2") 
(defglextfun "GenFencesAPPLE" gen-fences-apple :return "void" :args
 ((:name |n| :type |SizeI| :direction :in)
  (:name |fences| :type |FenceNV| :direction :out :array t :size n))
 :category "APPLE_fence" :deprecated nil :version "1.2") 
(make-extension-loader |APPLE_fence|
 (("FinishObjectAPPLE" finish-object-apple :return "void" :args
   ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
    (:name |name| :type |Int32| :direction :in))
   :category "APPLE_fence" :deprecated nil :version "1.2")
  ("TestObjectAPPLE" test-object-apple :return "Boolean" :args
   ((:name |object| :type |ObjectTypeAPPLE| :direction :in)
    (:name |name| :type |UInt32| :direction :in))
   :category "APPLE_fence" :deprecated nil :version "1.2")
  ("FinishFenceAPPLE" finish-fence-apple :return "void" :args
   ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
   :deprecated nil :version "1.2")
  ("TestFenceAPPLE" test-fence-apple :return "Boolean" :args
   ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
   :deprecated nil :version "1.2")
  ("IsFenceAPPLE" is-fence-apple :return "Boolean" :args
   ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
   :deprecated nil :version "1.2")
  ("SetFenceAPPLE" set-fence-apple :return "void" :args
   ((:name |fence| :type |FenceNV| :direction :in)) :category "APPLE_fence"
   :deprecated nil :version "1.2")
  ("DeleteFencesAPPLE" delete-fences-apple :return "void" :args
   ((:name |n| :type |SizeI| :direction :in)
    (:name |fences| :type |FenceNV| :direction :in :array t :size n))
   :category "APPLE_fence" :deprecated nil :version "1.2")
  ("GenFencesAPPLE" gen-fences-apple :return "void" :args
   ((:name |n| :type |SizeI| :direction :in)
    (:name |fences| :type |FenceNV| :direction :out :array t :size n))
   :category "APPLE_fence" :deprecated nil :version "1.2"))) 
