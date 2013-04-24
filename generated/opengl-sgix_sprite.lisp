;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_sprite

(defconstant +sprite-axial-sgix+ #x814C) 
(defconstant +sprite-object-aligned-sgix+ #x814D) 
(defconstant +sprite-eye-aligned-sgix+ #x814E) 
(defconstant +constant-border+ #x8151) 
(defconstant +replicate-border+ #x8153) 
(defconstant +convolution-border-color+ #x8154) 
(defconstant +sprite-axial-sgix+ #x814C) 
(defconstant +sprite-object-aligned-sgix+ #x814D) 
(defconstant +sprite-eye-aligned-sgix+ #x814E) 
(defglextfun "SpriteParameterivSGIX" sprite-parameter-iv-sgix :return
 "void" :args
 ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_sprite" :deprecated nil :version "1.0") 
(defglextfun "SpriteParameteriSGIX" sprite-parameter-i-sgix :return
 "void" :args
 ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_sprite" :deprecated nil :version "1.0") 
(defglextfun "SpriteParameterfvSGIX" sprite-parameter-fv-sgix :return
 "void" :args
 ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t
   :size (|pname|)))
 :category "SGIX_sprite" :deprecated nil :version "1.0") 
(defglextfun "SpriteParameterfSGIX" sprite-parameter-f-sgix :return
 "void" :args
 ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "SGIX_sprite" :deprecated nil :version "1.0") 
(make-extension-loader |SGIX_sprite|
 (("SpriteParameterivSGIX" sprite-parameter-iv-sgix :return "void"
   :args
   ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
    (:name |params| :type |CheckedInt32| :direction :in :array t
     :size (|pname|)))
   :category "SGIX_sprite" :deprecated nil :version "1.0")
  ("SpriteParameteriSGIX" sprite-parameter-i-sgix :return "void"
   :args
   ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
    (:name |param| :type |CheckedInt32| :direction :in))
   :category "SGIX_sprite" :deprecated nil :version "1.0")
  ("SpriteParameterfvSGIX" sprite-parameter-fv-sgix :return "void"
   :args
   ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
    (:name |params| :type |CheckedFloat32| :direction :in :array t
     :size (|pname|)))
   :category "SGIX_sprite" :deprecated nil :version "1.0")
  ("SpriteParameterfSGIX" sprite-parameter-f-sgix :return "void"
   :args
   ((:name |pname| :type |SpriteParameterNameSGIX| :direction :in)
    (:name |param| :type |CheckedFloat32| :direction :in))
   :category "SGIX_sprite" :deprecated nil :version "1.0"))) 