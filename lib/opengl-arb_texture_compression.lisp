;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_texture_compression

(defconstant +compressed-alpha-arb+ #x84E9) 
(defconstant +compressed-luminance-arb+ #x84EA) 
(defconstant +compressed-luminance-alpha-arb+ #x84EB) 
(defconstant +compressed-intensity-arb+ #x84EC) 
(defconstant +compressed-rgb-arb+ #x84ED) 
(defconstant +compressed-rgba-arb+ #x84EE) 
(defconstant +texture-compression-hint-arb+ #x84EF) 
(defconstant +texture-compressed-image-size-arb+ #x86A0) 
(defconstant +texture-compressed-arb+ #x86A1) 
(defconstant +num-compressed-texture-formats-arb+ #x86A2) 
(defconstant +compressed-texture-formats-arb+ #x86A3) 
(defconstant +compressed-alpha-arb+ #x84E9) 
(defconstant +compressed-luminance-arb+ #x84EA) 
(defconstant +compressed-luminance-alpha-arb+ #x84EB) 
(defconstant +compressed-intensity-arb+ #x84EC) 
(defconstant +compressed-rgb-arb+ #x84ED) 
(defconstant +compressed-rgba-arb+ #x84EE) 
(defconstant +texture-compression-hint-arb+ #x84EF) 
(defconstant +texture-compressed-image-size-arb+ #x86A0) 
(defconstant +texture-compressed-arb+ #x86A1) 
(defconstant +num-compressed-texture-formats-arb+ #x86A2) 
(defconstant +compressed-texture-formats-arb+ #x86A3) 
(defglextfun "GetCompressedTexImageARB" get-compressed-tex-image-arb
 :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |img| :type |CompressedTextureARB| :direction :out :array t
   :size (|target| |level|)))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexSubImage1DARB"
 compressed-tex-sub-image-1d-arb :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |xoffset| :type |CheckedInt32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexSubImage2DARB"
 compressed-tex-sub-image-2d-arb :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |xoffset| :type |CheckedInt32| :direction :in)
  (:name |yoffset| :type |CheckedInt32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexSubImage3DARB"
 compressed-tex-sub-image-3d-arb :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |xoffset| :type |CheckedInt32| :direction :in)
  (:name |yoffset| :type |CheckedInt32| :direction :in)
  (:name |zoffset| :type |CheckedInt32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |depth| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexImage1DARB" compressed-tex-image-1d-arb
 :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |border| :type |CheckedInt32| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexImage2DARB" compressed-tex-image-2d-arb
 :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |border| :type |CheckedInt32| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(defglextfun "CompressedTexImage3DARB" compressed-tex-image-3d-arb
 :return "void" :args
 ((:name |target| :type |TextureTarget| :direction :in)
  (:name |level| :type |CheckedInt32| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |depth| :type |SizeI| :direction :in)
  (:name |border| :type |CheckedInt32| :direction :in)
  (:name |imageSize| :type |SizeI| :direction :in)
  (:name |data| :type |CompressedTextureARB| :direction :in :array t
   :size imagesize))
 :category "ARB_texture_compression" :deprecated nil :version "1.2") 
(make-extension-loader |ARB_texture_compression|
 (("GetCompressedTexImageARB" get-compressed-tex-image-arb :return
   "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |img| :type |CompressedTextureARB| :direction :out :array
     t :size (|target| |level|)))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexSubImage1DARB" compressed-tex-sub-image-1d-arb
   :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |xoffset| :type |CheckedInt32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexSubImage2DARB" compressed-tex-sub-image-2d-arb
   :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |xoffset| :type |CheckedInt32| :direction :in)
    (:name |yoffset| :type |CheckedInt32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexSubImage3DARB" compressed-tex-sub-image-3d-arb
   :return "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |xoffset| :type |CheckedInt32| :direction :in)
    (:name |yoffset| :type |CheckedInt32| :direction :in)
    (:name |zoffset| :type |CheckedInt32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |depth| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexImage1DARB" compressed-tex-image-1d-arb :return
   "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |border| :type |CheckedInt32| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexImage2DARB" compressed-tex-image-2d-arb :return
   "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |border| :type |CheckedInt32| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2")
  ("CompressedTexImage3DARB" compressed-tex-image-3d-arb :return
   "void" :args
   ((:name |target| :type |TextureTarget| :direction :in)
    (:name |level| :type |CheckedInt32| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |depth| :type |SizeI| :direction :in)
    (:name |border| :type |CheckedInt32| :direction :in)
    (:name |imageSize| :type |SizeI| :direction :in)
    (:name |data| :type |CompressedTextureARB| :direction :in :array
     t :size imagesize))
   :category "ARB_texture_compression" :deprecated nil :version
   "1.2"))) 
