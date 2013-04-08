;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_texture_multisample

(defconstant +texture-coverage-samples-nv+ #x9045) 
(defconstant +texture-color-samples-nv+ #x9046) 
(defconstant +texture-coverage-samples-nv+ #x9045) 
(defconstant +texture-color-samples-nv+ #x9046) 
(defglextfun "TextureImage3DMultisampleCoverageNV"
 texture-image-3dmultisample-coverage-nv :return "void" :args
 ((:name |texture| :type |UInt32| :direction :in)
  (:name |target| :type |GLenum| :direction :in)
  (:name |coverageSamples| :type |SizeI| :direction :in)
  (:name |colorSamples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |depth| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(defglextfun "TextureImage2DMultisampleCoverageNV"
 texture-image-2dmultisample-coverage-nv :return "void" :args
 ((:name |texture| :type |UInt32| :direction :in)
  (:name |target| :type |GLenum| :direction :in)
  (:name |coverageSamples| :type |SizeI| :direction :in)
  (:name |colorSamples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(defglextfun "TextureImage3DMultisampleNV"
 texture-image-3dmultisample-nv :return "void" :args
 ((:name |texture| :type |UInt32| :direction :in)
  (:name |target| :type |GLenum| :direction :in)
  (:name |samples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |depth| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(defglextfun "TextureImage2DMultisampleNV"
 texture-image-2dmultisample-nv :return "void" :args
 ((:name |texture| :type |UInt32| :direction :in)
  (:name |target| :type |GLenum| :direction :in)
  (:name |samples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(defglextfun "TexImage3DMultisampleCoverageNV"
 tex-image-3dmultisample-coverage-nv :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |coverageSamples| :type |SizeI| :direction :in)
  (:name |colorSamples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |depth| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(defglextfun "TexImage2DMultisampleCoverageNV"
 tex-image-2dmultisample-coverage-nv :return "void" :args
 ((:name |target| :type |GLenum| :direction :in)
  (:name |coverageSamples| :type |SizeI| :direction :in)
  (:name |colorSamples| :type |SizeI| :direction :in)
  (:name |internalFormat| :type |Int32| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |fixedSampleLocations| :type |Boolean| :direction :in))
 :category "NV_texture_multisample" :deprecated nil :version "4.1") 
(make-extension-loader |NV_texture_multisample|
 (("TextureImage3DMultisampleCoverageNV"
   texture-image-3dmultisample-coverage-nv :return "void" :args
   ((:name |texture| :type |UInt32| :direction :in)
    (:name |target| :type |GLenum| :direction :in)
    (:name |coverageSamples| :type |SizeI| :direction :in)
    (:name |colorSamples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |depth| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version "4.1")
  ("TextureImage2DMultisampleCoverageNV"
   texture-image-2dmultisample-coverage-nv :return "void" :args
   ((:name |texture| :type |UInt32| :direction :in)
    (:name |target| :type |GLenum| :direction :in)
    (:name |coverageSamples| :type |SizeI| :direction :in)
    (:name |colorSamples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version "4.1")
  ("TextureImage3DMultisampleNV" texture-image-3dmultisample-nv
   :return "void" :args
   ((:name |texture| :type |UInt32| :direction :in)
    (:name |target| :type |GLenum| :direction :in)
    (:name |samples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |depth| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version "4.1")
  ("TextureImage2DMultisampleNV" texture-image-2dmultisample-nv
   :return "void" :args
   ((:name |texture| :type |UInt32| :direction :in)
    (:name |target| :type |GLenum| :direction :in)
    (:name |samples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version "4.1")
  ("TexImage3DMultisampleCoverageNV"
   tex-image-3dmultisample-coverage-nv :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |coverageSamples| :type |SizeI| :direction :in)
    (:name |colorSamples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |depth| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version "4.1")
  ("TexImage2DMultisampleCoverageNV"
   tex-image-2dmultisample-coverage-nv :return "void" :args
   ((:name |target| :type |GLenum| :direction :in)
    (:name |coverageSamples| :type |SizeI| :direction :in)
    (:name |colorSamples| :type |SizeI| :direction :in)
    (:name |internalFormat| :type |Int32| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |fixedSampleLocations| :type |Boolean| :direction :in))
   :category "NV_texture_multisample" :deprecated nil :version
   "4.1"))) 
