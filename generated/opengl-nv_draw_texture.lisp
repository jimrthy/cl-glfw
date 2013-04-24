;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_draw_texture

(defglextfun "DrawTextureNV" draw-texture-nv :return "void" :args
 ((:name |texture| :type |UInt32| :direction :in)
  (:name |sampler| :type |UInt32| :direction :in)
  (:name \x0 :type |Float32| :direction :in)
  (:name \y0 :type |Float32| :direction :in)
  (:name \x1 :type |Float32| :direction :in)
  (:name \y1 :type |Float32| :direction :in)
  (:name \z :type |Float32| :direction :in)
  (:name \s0 :type |Float32| :direction :in)
  (:name \t0 :type |Float32| :direction :in)
  (:name \s1 :type |Float32| :direction :in)
  (:name \t1 :type |Float32| :direction :in))
 :category "NV_draw_texture" :deprecated nil :version "4.3") 
(make-extension-loader |NV_draw_texture|
 (("DrawTextureNV" draw-texture-nv :return "void" :args
   ((:name |texture| :type |UInt32| :direction :in)
    (:name |sampler| :type |UInt32| :direction :in)
    (:name \x0 :type |Float32| :direction :in)
    (:name \y0 :type |Float32| :direction :in)
    (:name \x1 :type |Float32| :direction :in)
    (:name \y1 :type |Float32| :direction :in)
    (:name \z :type |Float32| :direction :in)
    (:name \s0 :type |Float32| :direction :in)
    (:name \t0 :type |Float32| :direction :in)
    (:name \s1 :type |Float32| :direction :in)
    (:name \t1 :type |Float32| :direction :in))
   :category "NV_draw_texture" :deprecated nil :version "4.3"))) 