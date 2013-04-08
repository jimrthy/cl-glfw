;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_draw_buffers

(defconstant +max-draw-buffers-ati+ #x8824) 
(defconstant +draw-buffer0-ati+ #x8825) 
(defconstant +draw-buffer1-ati+ #x8826) 
(defconstant +draw-buffer2-ati+ #x8827) 
(defconstant +draw-buffer3-ati+ #x8828) 
(defconstant +draw-buffer4-ati+ #x8829) 
(defconstant +draw-buffer5-ati+ #x882A) 
(defconstant +draw-buffer6-ati+ #x882B) 
(defconstant +draw-buffer7-ati+ #x882C) 
(defconstant +draw-buffer8-ati+ #x882D) 
(defconstant +draw-buffer9-ati+ #x882E) 
(defconstant +draw-buffer10-ati+ #x882F) 
(defconstant +draw-buffer11-ati+ #x8830) 
(defconstant +draw-buffer12-ati+ #x8831) 
(defconstant +draw-buffer13-ati+ #x8832) 
(defconstant +draw-buffer14-ati+ #x8833) 
(defconstant +draw-buffer15-ati+ #x8834) 
(defconstant +max-draw-buffers-nv+ #x8824) 
(defconstant +draw-buffer0-nv+ #x8825) 
(defconstant +draw-buffer1-nv+ #x8826) 
(defconstant +draw-buffer2-nv+ #x8827) 
(defconstant +draw-buffer3-nv+ #x8828) 
(defconstant +draw-buffer4-nv+ #x8829) 
(defconstant +draw-buffer5-nv+ #x882A) 
(defconstant +draw-buffer6-nv+ #x882B) 
(defconstant +draw-buffer7-nv+ #x882C) 
(defconstant +draw-buffer8-nv+ #x882D) 
(defconstant +draw-buffer9-nv+ #x882E) 
(defconstant +draw-buffer10-nv+ #x882F) 
(defconstant +draw-buffer11-nv+ #x8830) 
(defconstant +draw-buffer12-nv+ #x8831) 
(defconstant +draw-buffer13-nv+ #x8832) 
(defconstant +draw-buffer14-nv+ #x8833) 
(defconstant +draw-buffer15-nv+ #x8834) 
(defconstant +color-clear-unclamped-value-ati+ #x8835) 
(defconstant +blend-equation-alpha+ #x883D) 
(defconstant +max-draw-buffers-ati+ #x8824) 
(defconstant +draw-buffer0-ati+ #x8825) 
(defconstant +draw-buffer1-ati+ #x8826) 
(defconstant +draw-buffer2-ati+ #x8827) 
(defconstant +draw-buffer3-ati+ #x8828) 
(defconstant +draw-buffer4-ati+ #x8829) 
(defconstant +draw-buffer5-ati+ #x882A) 
(defconstant +draw-buffer6-ati+ #x882B) 
(defconstant +draw-buffer7-ati+ #x882C) 
(defconstant +draw-buffer8-ati+ #x882D) 
(defconstant +draw-buffer9-ati+ #x882E) 
(defconstant +draw-buffer10-ati+ #x882F) 
(defconstant +draw-buffer11-ati+ #x8830) 
(defconstant +draw-buffer12-ati+ #x8831) 
(defconstant +draw-buffer13-ati+ #x8832) 
(defconstant +draw-buffer14-ati+ #x8833) 
(defconstant +draw-buffer15-ati+ #x8834) 
(defglextfun "DrawBuffersATI" draw-buffers-ati :return "void" :args
 ((:name \n :type |SizeI| :direction :in)
  (:name |bufs| :type |DrawBufferModeATI| :direction :in :array t
   :size n))
 :category "ATI_draw_buffers" :deprecated nil :version "1.2") 
(make-extension-loader |ATI_draw_buffers|
 (("DrawBuffersATI" draw-buffers-ati :return "void" :args
   ((:name \n :type |SizeI| :direction :in)
    (:name |bufs| :type |DrawBufferModeATI| :direction :in :array t
     :size n))
   :category "ATI_draw_buffers" :deprecated nil :version "1.2"))) 
