;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgis_sharpen_texture

(defconstant +color-matrix+ #x80B1) 
(defconstant +color-matrix-stack-depth+ #x80B2) 
(defconstant +max-color-matrix-stack-depth+ #x80B3) 
(defconstant +post-color-matrix-red-scale+ #x80B4) 
(defconstant +post-color-matrix-green-scale+ #x80B5) 
(defconstant +post-color-matrix-blue-scale+ #x80B6) 
(defconstant +post-color-matrix-alpha-scale+ #x80B7) 
(defconstant +post-color-matrix-red-bias+ #x80B8) 
(defconstant +post-color-matrix-green-bias+ #x80B9) 
(defconstant +post-color-matrix-blue-bias+ #x80BA) 
(defconstant +post-color-matrix-alpha-bias+ #x80BB) 
(defglextfun "GetSharpenTexFuncSGIS" get-sharpen-tex-func-sgis
 :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |points| :type |Float32| :direction :out :array t :size
   (|target|)))
 :category "SGIS_sharpen_texture" :deprecated nil :version "1.0") 
(defglextfun "SharpenTexFuncSGIS" sharpen-tex-func-sgis :return
 "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name \n :type |SizeI| :direction :in)
  (:name |points| :type |Float32| :direction :in :array t :size n*2))
 :category "SGIS_sharpen_texture" :deprecated nil :version "1.0") 
(make-extension-loader |SGIS_sharpen_texture|
 (("GetSharpenTexFuncSGIS" get-sharpen-tex-func-sgis :return "void"
   :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |points| :type |Float32| :direction :out :array t :size
     (|target|)))
   :category "SGIS_sharpen_texture" :deprecated nil :version "1.0")
  ("SharpenTexFuncSGIS" sharpen-tex-func-sgis :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name \n :type |SizeI| :direction :in)
    (:name |points| :type |Float32| :direction :in :array t :size
     n*2))
   :category "SGIS_sharpen_texture" :deprecated nil :version "1.0"))) 
