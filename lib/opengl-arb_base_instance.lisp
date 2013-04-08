;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_base_instance

(defglextfun "DrawElementsInstancedBaseVertexBaseInstance"
 draw-elements-instanced-base-vertex-base-instance :return "void"
 :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |indices| :type |void| :direction :in :array t :size count)
  (:name |instancecount| :type |SizeI| :direction :in)
  (:name |basevertex| :type |Int32| :direction :in)
  (:name |baseinstance| :type |UInt32| :direction :in))
 :category "ARB_base_instance" :deprecated nil :version "4.2") 
(defglextfun "DrawElementsInstancedBaseInstance"
 draw-elements-instanced-base-instance :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |indices| :type |void| :direction :in :array t :size count)
  (:name |instancecount| :type |SizeI| :direction :in)
  (:name |baseinstance| :type |UInt32| :direction :in))
 :category "ARB_base_instance" :deprecated nil :version "4.2") 
(defglextfun "DrawArraysInstancedBaseInstance"
 draw-arrays-instanced-base-instance :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |instancecount| :type |SizeI| :direction :in)
  (:name |baseinstance| :type |UInt32| :direction :in))
 :category "ARB_base_instance" :deprecated nil :version "4.2") 
(make-extension-loader |ARB_base_instance|
 (("DrawElementsInstancedBaseVertexBaseInstance"
   draw-elements-instanced-base-vertex-base-instance :return "void"
   :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |indices| :type |void| :direction :in :array t :size
     count)
    (:name |instancecount| :type |SizeI| :direction :in)
    (:name |basevertex| :type |Int32| :direction :in)
    (:name |baseinstance| :type |UInt32| :direction :in))
   :category "ARB_base_instance" :deprecated nil :version "4.2")
  ("DrawElementsInstancedBaseInstance"
   draw-elements-instanced-base-instance :return "void" :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |indices| :type |void| :direction :in :array t :size
     count)
    (:name |instancecount| :type |SizeI| :direction :in)
    (:name |baseinstance| :type |UInt32| :direction :in))
   :category "ARB_base_instance" :deprecated nil :version "4.2")
  ("DrawArraysInstancedBaseInstance"
   draw-arrays-instanced-base-instance :return "void" :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |first| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |instancecount| :type |SizeI| :direction :in)
    (:name |baseinstance| :type |UInt32| :direction :in))
   :category "ARB_base_instance" :deprecated nil :version "4.2"))) 
