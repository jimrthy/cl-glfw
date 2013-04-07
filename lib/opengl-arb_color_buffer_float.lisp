;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_color_buffer_float

(defconstant +rgba-float-mode-arb+ #x8820) 
(defconstant +type-rgba-float-ati+ #x8820) 
(defconstant +writeonly-rendering-qcom+ #x8823) 
(defconstant +max-draw-buffers+ #x8824) 
(defconstant +draw-buffer0+ #x8825) 
(defconstant +draw-buffer1+ #x8826) 
(defconstant +draw-buffer2+ #x8827) 
(defconstant +draw-buffer3+ #x8828) 
(defconstant +draw-buffer4+ #x8829) 
(defconstant +draw-buffer5+ #x882A) 
(defconstant +draw-buffer6+ #x882B) 
(defconstant +draw-buffer7+ #x882C) 
(defconstant +draw-buffer8+ #x882D) 
(defconstant +draw-buffer9+ #x882E) 
(defconstant +draw-buffer10+ #x882F) 
(defconstant +draw-buffer11+ #x8830) 
(defconstant +draw-buffer12+ #x8831) 
(defconstant +draw-buffer13+ #x8832) 
(defconstant +draw-buffer14+ #x8833) 
(defconstant +draw-buffer15+ #x8834) 
(defconstant +rgba-float-mode-arb+ #x8820) 
(defconstant +clamp-vertex-color-arb+ #x891A) 
(defconstant +clamp-fragment-color-arb+ #x891B) 
(defconstant +clamp-read-color-arb+ #x891C) 
(defconstant +fixed-only-arb+ #x891D) 
(defglextfun "ClampColorARB" clamp-color-arb :return "void" :args ((:name |target| :type |ClampColorTargetARB| :direction :in) (:name |clamp| :type |ClampColorModeARB| :direction :in)) :category "ARB_color_buffer_float" :deprecated nil :version "1.5") 
(make-extension-loader |ARB_color_buffer_float| (("ClampColorARB" clamp-color-arb :return "void" :args ((:name |target| :type |ClampColorTargetARB| :direction :in) (:name |clamp| :type |ClampColorModeARB| :direction :in)) :category "ARB_color_buffer_float" :deprecated nil :version "1.5"))) 
