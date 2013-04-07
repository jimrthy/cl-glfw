;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_texture_storage

(defconstant +texture-immutable-format+ #x912F) 
(defconstant +sgx-program-binary-img+ #x9130) 
(defconstant +renderbuffer-samples-img+ #x9133) 
(defconstant +framebuffer-incomplete-multisample-img+ #x9134) 
(defconstant +max-samples-img+ #x9135) 
(defconstant +texture-samples-img+ #x9136) 
(defconstant +texture-immutable-format+ #x912F) 
(defglextfun "TextureStorage3DEXT" texture-storage-3d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |depth| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(defglextfun "TextureStorage2DEXT" texture-storage-2d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(defglextfun "TextureStorage1DEXT" texture-storage-1d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(defglextfun "TexStorage3D" tex-storage-3d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |depth| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(defglextfun "TexStorage2D" tex-storage-2d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(defglextfun "TexStorage1D" tex-storage-1d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") 
(make-extension-loader |ARB_texture_storage| (("TextureStorage3DEXT" texture-storage-3d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |depth| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") ("TextureStorage2DEXT" texture-storage-2d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") ("TextureStorage1DEXT" texture-storage-1d-ext :return "void" :args ((:name |texture| :type |UInt32| :direction :in) (:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") ("TexStorage3D" tex-storage-3d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in) (:name |depth| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") ("TexStorage2D" tex-storage-2d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in) (:name |height| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2") ("TexStorage1D" tex-storage-1d :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |levels| :type |SizeI| :direction :in) (:name |internalformat| :type |GLenum| :direction :in) (:name |width| :type |SizeI| :direction :in)) :category "ARB_texture_storage" :deprecated nil :version "4.2"))) 
