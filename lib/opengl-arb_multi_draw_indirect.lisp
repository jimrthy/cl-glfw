;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_multi_draw_indirect

(defglextfun "MultiDrawElementsIndirect" multi-draw-elements-indirect
 :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |type| :type |GLenum| :direction :in)
  (:name |indirect| :type |void| :direction :in :array t :size
   (|drawcount| |stride|))
  (:name |drawcount| :type |SizeI| :direction :in)
  (:name |stride| :type |SizeI| :direction :in))
 :category "ARB_multi_draw_indirect" :deprecated nil :version "4.3") 
(defglextfun "MultiDrawArraysIndirect" multi-draw-arrays-indirect
 :return "void" :args
 ((:name |mode| :type |GLenum| :direction :in)
  (:name |indirect| :type |void| :direction :in :array t :size
   (|drawcount| |stride|))
  (:name |drawcount| :type |SizeI| :direction :in)
  (:name |stride| :type |SizeI| :direction :in))
 :category "ARB_multi_draw_indirect" :deprecated nil :version "4.3") 
(make-extension-loader |ARB_multi_draw_indirect|
 (("MultiDrawElementsIndirect" multi-draw-elements-indirect :return
   "void" :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |type| :type |GLenum| :direction :in)
    (:name |indirect| :type |void| :direction :in :array t :size
     (|drawcount| |stride|))
    (:name |drawcount| :type |SizeI| :direction :in)
    (:name |stride| :type |SizeI| :direction :in))
   :category "ARB_multi_draw_indirect" :deprecated nil :version
   "4.3")
  ("MultiDrawArraysIndirect" multi-draw-arrays-indirect :return
   "void" :args
   ((:name |mode| :type |GLenum| :direction :in)
    (:name |indirect| :type |void| :direction :in :array t :size
     (|drawcount| |stride|))
    (:name |drawcount| :type |SizeI| :direction :in)
    (:name |stride| :type |SizeI| :direction :in))
   :category "ARB_multi_draw_indirect" :deprecated nil :version
   "4.3"))) 
