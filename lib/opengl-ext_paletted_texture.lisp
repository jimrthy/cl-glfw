;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_paletted_texture

(defconstant +color-index1-ext+ #x80E2) 
(defconstant +color-index2-ext+ #x80E3) 
(defconstant +color-index4-ext+ #x80E4) 
(defconstant +color-index8-ext+ #x80E5) 
(defconstant +color-index12-ext+ #x80E6) 
(defconstant +color-index16-ext+ #x80E7) 
(defconstant +texture-index-size-ext+ #x80ED) 
(defconstant +color-index1-ext+ #x80E2) 
(defconstant +color-index2-ext+ #x80E3) 
(defconstant +color-index4-ext+ #x80E4) 
(defconstant +color-index8-ext+ #x80E5) 
(defconstant +color-index12-ext+ #x80E6) 
(defconstant +color-index16-ext+ #x80E7) 
(defconstant +texture-index-size-ext+ #x80ED) 
(defglextfun "GetColorTableParameterfvEXT"
 get-color-table-parameter-fv-ext :return "void" :args
 ((:name |target| :type |ColorTableTarget| :direction :in)
  (:name |pname| :type |GetColorTableParameterPName| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_paletted_texture" :deprecated nil :version "1.1") 
(defglextfun "GetColorTableParameterivEXT"
 get-color-table-parameter-iv-ext :return "void" :args
 ((:name |target| :type |ColorTableTarget| :direction :in)
  (:name |pname| :type |GetColorTableParameterPName| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_paletted_texture" :deprecated nil :version "1.1") 
(defglextfun "GetColorTableEXT" get-color-table-ext :return "void"
 :args
 ((:name |target| :type |ColorTableTarget| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |data| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_paletted_texture" :deprecated nil :version "1.1") 
(defglextfun "ColorTableEXT" color-table-ext :return "void" :args
 ((:name |target| :type |ColorTableTarget| :direction :in)
  (:name |internalFormat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |table| :type |Void| :direction :in :array t :size
   (|format| |type| |width|)))
 :category "EXT_paletted_texture" :deprecated nil :version "1.1") 
(make-extension-loader |EXT_paletted_texture|
 (("GetColorTableParameterfvEXT" get-color-table-parameter-fv-ext
   :return "void" :args
   ((:name |target| :type |ColorTableTarget| :direction :in)
    (:name |pname| :type |GetColorTableParameterPName| :direction
     :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_paletted_texture" :deprecated nil :version "1.1")
  ("GetColorTableParameterivEXT" get-color-table-parameter-iv-ext
   :return "void" :args
   ((:name |target| :type |ColorTableTarget| :direction :in)
    (:name |pname| :type |GetColorTableParameterPName| :direction
     :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_paletted_texture" :deprecated nil :version "1.1")
  ("GetColorTableEXT" get-color-table-ext :return "void" :args
   ((:name |target| :type |ColorTableTarget| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |data| :type |Void| :direction :out :array t :size
     (|target| |format| |type|)))
   :category "EXT_paletted_texture" :deprecated nil :version "1.1")
  ("ColorTableEXT" color-table-ext :return "void" :args
   ((:name |target| :type |ColorTableTarget| :direction :in)
    (:name |internalFormat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |table| :type |Void| :direction :in :array t :size
     (|format| |type| |width|)))
   :category "EXT_paletted_texture" :deprecated nil :version "1.1"))) 
