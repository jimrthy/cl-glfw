;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_copy_texture

(defglextfun "CopyTexSubImage3DEXT" copy-tex-sub-image-3d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name |yoffset| :type |CheckedInt32| :direction :in) (:name |zoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") 
(defglextfun "CopyTexSubImage2DEXT" copy-tex-sub-image-2d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name |yoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") 
(defglextfun "CopyTexSubImage1DEXT" copy-tex-sub-image-1d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") 
(defglextfun "CopyTexImage2DEXT" copy-tex-image-2d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |internalformat| :type |PixelInternalFormat| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |border| :type |CheckedInt32| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") 
(defglextfun "CopyTexImage1DEXT" copy-tex-image-1d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |internalformat| :type |PixelInternalFormat| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |border| :type |CheckedInt32| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") 
(make-extension-loader |EXT_copy_texture| (("CopyTexSubImage3DEXT" copy-tex-sub-image-3d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name |yoffset| :type |CheckedInt32| :direction :in) (:name |zoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") ("CopyTexSubImage2DEXT" copy-tex-sub-image-2d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name |yoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") ("CopyTexSubImage1DEXT" copy-tex-sub-image-1d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |xoffset| :type |CheckedInt32| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") ("CopyTexImage2DEXT" copy-tex-image-2d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |internalformat| :type |PixelInternalFormat| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |border| :type |CheckedInt32| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0") ("CopyTexImage1DEXT" copy-tex-image-1d-ext :return "void" :args ((:name |target| :type |TextureTarget| :direction :in) (:name |level| :type |CheckedInt32| :direction :in) (:name |internalformat| :type |PixelInternalFormat| :direction :in) (:name \x :type |WinCoord| :direction :in) (:name \y :type |WinCoord| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |border| :type |CheckedInt32| :direction :in)) :category "EXT_copy_texture" :deprecated nil :version "1.0"))) 
