;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgis_texture_color_mask

(defconstant +texture-color-writemask-sgis+ #x81EF) 
(defconstant +texture-color-writemask-sgis+ #x81EF) 
(defglextfun "TextureColorMaskSGIS" texture-color-mask-sgis :return "void" :args ((:name |red| :type |Boolean| :direction :in) (:name |green| :type |Boolean| :direction :in) (:name |blue| :type |Boolean| :direction :in) (:name |alpha| :type |Boolean| :direction :in)) :category "SGIS_texture_color_mask" :deprecated nil :version "1.1") 
(make-extension-loader |SGIS_texture_color_mask| (("TextureColorMaskSGIS" texture-color-mask-sgis :return "void" :args ((:name |red| :type |Boolean| :direction :in) (:name |green| :type |Boolean| :direction :in) (:name |blue| :type |Boolean| :direction :in) (:name |alpha| :type |Boolean| :direction :in)) :category "SGIS_texture_color_mask" :deprecated nil :version "1.1"))) 
