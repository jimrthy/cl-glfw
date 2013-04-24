;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_transpose_matrix

(defconstant +transpose-modelview-matrix-arb+ #x84E3) 
(defconstant +transpose-projection-matrix-arb+ #x84E4) 
(defconstant +transpose-texture-matrix-arb+ #x84E5) 
(defconstant +transpose-color-matrix-arb+ #x84E6) 
(defconstant +subtract+ #x84E7) 
(defconstant +transpose-modelview-matrix-arb+ #x84E3) 
(defconstant +transpose-projection-matrix-arb+ #x84E4) 
(defconstant +transpose-texture-matrix-arb+ #x84E5) 
(defconstant +transpose-color-matrix-arb+ #x84E6) 
(defglextfun "MultTransposeMatrixdARB" mult-transpose-matrix-d-arb
 :return "void" :args
 ((:name \m :type |Float64| :direction :in :array t :size #x10))
 :category "ARB_transpose_matrix" :deprecated nil :version "1.2") 
(defglextfun "MultTransposeMatrixfARB" mult-transpose-matrix-f-arb
 :return "void" :args
 ((:name \m :type |Float32| :direction :in :array t :size #x10))
 :category "ARB_transpose_matrix" :deprecated nil :version "1.2") 
(defglextfun "LoadTransposeMatrixdARB" load-transpose-matrix-d-arb
 :return "void" :args
 ((:name \m :type |Float64| :direction :in :array t :size #x10))
 :category "ARB_transpose_matrix" :deprecated nil :version "1.2") 
(defglextfun "LoadTransposeMatrixfARB" load-transpose-matrix-f-arb
 :return "void" :args
 ((:name \m :type |Float32| :direction :in :array t :size #x10))
 :category "ARB_transpose_matrix" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_transpose_matrix|
 (("MultTransposeMatrixdARB" mult-transpose-matrix-d-arb :return
   "void" :args
   ((:name \m :type |Float64| :direction :in :array t :size #x10))
   :category "ARB_transpose_matrix" :deprecated nil :version "1.2")
  ("MultTransposeMatrixfARB" mult-transpose-matrix-f-arb :return
   "void" :args
   ((:name \m :type |Float32| :direction :in :array t :size #x10))
   :category "ARB_transpose_matrix" :deprecated nil :version "1.2")
  ("LoadTransposeMatrixdARB" load-transpose-matrix-d-arb :return
   "void" :args
   ((:name \m :type |Float64| :direction :in :array t :size #x10))
   :category "ARB_transpose_matrix" :deprecated nil :version "1.2")
  ("LoadTransposeMatrixfARB" load-transpose-matrix-f-arb :return
   "void" :args
   ((:name \m :type |Float32| :direction :in :array t :size #x10))
   :category "ARB_transpose_matrix" :deprecated nil :version "1.2"))) 