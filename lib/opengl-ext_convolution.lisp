;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_convolution

(defconstant +histogram+ #x8024) 
(defconstant +proxy-histogram+ #x8025) 
(defconstant +histogram-width+ #x8026) 
(defconstant +histogram-format+ #x8027) 
(defconstant +histogram-red-size+ #x8028) 
(defconstant +histogram-green-size+ #x8029) 
(defconstant +histogram-blue-size+ #x802A) 
(defconstant +histogram-alpha-size+ #x802B) 
(defconstant +histogram-sink+ #x802D) 
(defconstant +minmax+ #x802E) 
(defconstant +minmax-format+ #x802F) 
(defconstant +minmax-sink+ #x8030) 
(defconstant +table-too-large+ #x8031) 
(defglextfun "SeparableFilter2DEXT" separable-filter-2d-ext :return
 "void" :args
 ((:name |target| :type |SeparableTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |row| :type |Void| :direction :in :array t :size
   (|target| |format| |type| |width|))
  (:name |column| :type |Void| :direction :in :array t :size
   (|target| |format| |type| |height|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetSeparableFilterEXT" get-separable-filter-ext :return
 "void" :args
 ((:name |target| :type |SeparableTargetEXT| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |row| :type |Void| :direction :out :array t :size
   (|target| |format| |type|))
  (:name |column| :type |Void| :direction :out :array t :size
   (|target| |format| |type|))
  (:name |span| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionParameterivEXT"
 get-convolution-parameter-iv-ext :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionParameterfvEXT"
 get-convolution-parameter-fv-ext :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "GetConvolutionFilterEXT" get-convolution-filter-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "CopyConvolutionFilter2DEXT"
 copy-convolution-filter-2d-ext :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name \x :type |WinCoord| :direction :in)
  (:name \y :type |WinCoord| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "CopyConvolutionFilter1DEXT"
 copy-convolution-filter-1d-ext :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name \x :type |WinCoord| :direction :in)
  (:name \y :type |WinCoord| :direction :in)
  (:name |width| :type |SizeI| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterivEXT" convolution-parameter-iv-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameteriEXT" convolution-parameter-i-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterfvEXT" convolution-parameter-fv-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t
   :size (|pname|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionParameterfEXT" convolution-parameter-f-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionFilter2DEXT" convolution-filter-2d-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |height| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :in :array t :size
   (|format| |type| |width| |height|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(defglextfun "ConvolutionFilter1DEXT" convolution-filter-1d-ext
 :return "void" :args
 ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |image| :type |Void| :direction :in :array t :size
   (|format| |type| |width|)))
 :category "EXT_convolution" :deprecated nil :version "1.0") 
(make-extension-loader |EXT_convolution|
 (("SeparableFilter2DEXT" separable-filter-2d-ext :return "void"
   :args
   ((:name |target| :type |SeparableTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |row| :type |Void| :direction :in :array t :size
     (|target| |format| |type| |width|))
    (:name |column| :type |Void| :direction :in :array t :size
     (|target| |format| |type| |height|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("GetSeparableFilterEXT" get-separable-filter-ext :return "void"
   :args
   ((:name |target| :type |SeparableTargetEXT| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |row| :type |Void| :direction :out :array t :size
     (|target| |format| |type|))
    (:name |column| :type |Void| :direction :out :array t :size
     (|target| |format| |type|))
    (:name |span| :type |Void| :direction :out :array t :size
     (|target| |format| |type|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("GetConvolutionParameterivEXT" get-convolution-parameter-iv-ext
   :return "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("GetConvolutionParameterfvEXT" get-convolution-parameter-fv-ext
   :return "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("GetConvolutionFilterEXT" get-convolution-filter-ext :return
   "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |image| :type |Void| :direction :out :array t :size
     (|target| |format| |type|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("CopyConvolutionFilter2DEXT" copy-convolution-filter-2d-ext
   :return "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name \x :type |WinCoord| :direction :in)
    (:name \y :type |WinCoord| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("CopyConvolutionFilter1DEXT" copy-convolution-filter-1d-ext
   :return "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name \x :type |WinCoord| :direction :in)
    (:name \y :type |WinCoord| :direction :in)
    (:name |width| :type |SizeI| :direction :in))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionParameterivEXT" convolution-parameter-iv-ext :return
   "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |CheckedInt32| :direction :in :array t
     :size (|pname|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionParameteriEXT" convolution-parameter-i-ext :return
   "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |CheckedInt32| :direction :in))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionParameterfvEXT" convolution-parameter-fv-ext :return
   "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |CheckedFloat32| :direction :in :array t
     :size (|pname|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionParameterfEXT" convolution-parameter-f-ext :return
   "void" :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |pname| :type |ConvolutionParameterEXT| :direction :in)
    (:name |params| :type |CheckedFloat32| :direction :in))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionFilter2DEXT" convolution-filter-2d-ext :return "void"
   :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |height| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |image| :type |Void| :direction :in :array t :size
     (|format| |type| |width| |height|)))
   :category "EXT_convolution" :deprecated nil :version "1.0")
  ("ConvolutionFilter1DEXT" convolution-filter-1d-ext :return "void"
   :args
   ((:name |target| :type |ConvolutionTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |image| :type |Void| :direction :in :array t :size
     (|format| |type| |width|)))
   :category "EXT_convolution" :deprecated nil :version "1.0"))) 
