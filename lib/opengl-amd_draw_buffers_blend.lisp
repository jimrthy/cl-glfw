;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; amd_draw_buffers_blend

(defglextfun "BlendEquationSeparateIndexedAMD"
 blend-equation-separate-indexed-amd :return "void" :args
 ((:name |buf| :type |UInt32| :direction :in)
  (:name |modeRGB| :type |GLenum| :direction :in)
  (:name |modeAlpha| :type |GLenum| :direction :in))
 :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0") 
(defglextfun "BlendEquationIndexedAMD" blend-equation-indexed-amd :return
 "void" :args
 ((:name |buf| :type |UInt32| :direction :in)
  (:name |mode| :type |GLenum| :direction :in))
 :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0") 
(defglextfun "BlendFuncSeparateIndexedAMD" blend-func-separate-indexed-amd
 :return "void" :args
 ((:name |buf| :type |UInt32| :direction :in)
  (:name |srcRGB| :type |GLenum| :direction :in)
  (:name |dstRGB| :type |GLenum| :direction :in)
  (:name |srcAlpha| :type |GLenum| :direction :in)
  (:name |dstAlpha| :type |GLenum| :direction :in))
 :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0") 
(defglextfun "BlendFuncIndexedAMD" blend-func-indexed-amd :return "void" :args
 ((:name |buf| :type |UInt32| :direction :in)
  (:name |src| :type |GLenum| :direction :in)
  (:name |dst| :type |GLenum| :direction :in))
 :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0") 
(make-extension-loader |AMD_draw_buffers_blend|
 (("BlendEquationSeparateIndexedAMD" blend-equation-separate-indexed-amd
   :return "void" :args
   ((:name |buf| :type |UInt32| :direction :in)
    (:name |modeRGB| :type |GLenum| :direction :in)
    (:name |modeAlpha| :type |GLenum| :direction :in))
   :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0")
  ("BlendEquationIndexedAMD" blend-equation-indexed-amd :return "void" :args
   ((:name |buf| :type |UInt32| :direction :in)
    (:name |mode| :type |GLenum| :direction :in))
   :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0")
  ("BlendFuncSeparateIndexedAMD" blend-func-separate-indexed-amd :return "void"
   :args
   ((:name |buf| :type |UInt32| :direction :in)
    (:name |srcRGB| :type |GLenum| :direction :in)
    (:name |dstRGB| :type |GLenum| :direction :in)
    (:name |srcAlpha| :type |GLenum| :direction :in)
    (:name |dstAlpha| :type |GLenum| :direction :in))
   :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0")
  ("BlendFuncIndexedAMD" blend-func-indexed-amd :return "void" :args
   ((:name |buf| :type |UInt32| :direction :in)
    (:name |src| :type |GLenum| :direction :in)
    (:name |dst| :type |GLenum| :direction :in))
   :category "AMD_draw_buffers_blend" :deprecated nil :version "2.0"))) 
