;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_index_material

(defconstant +index-material-ext+ #x81B8) 
(defconstant +index-material-parameter-ext+ #x81B9) 
(defconstant +index-material-face-ext+ #x81BA) 
(defconstant +index-material-ext+ #x81B8) 
(defconstant +index-material-parameter-ext+ #x81B9) 
(defconstant +index-material-face-ext+ #x81BA) 
(defglextfun "IndexMaterialEXT" index-material-ext :return "void"
 :args
 ((:name |face| :type |MaterialFace| :direction :in)
  (:name |mode| :type |IndexMaterialParameterEXT| :direction :in))
 :category "EXT_index_material" :deprecated nil :version "1.1") 
(make-extension-loader |EXT_index_material|
 (("IndexMaterialEXT" index-material-ext :return "void" :args
   ((:name |face| :type |MaterialFace| :direction :in)
    (:name |mode| :type |IndexMaterialParameterEXT| :direction :in))
   :category "EXT_index_material" :deprecated nil :version "1.1"))) 
