;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_histogram

(defconstant +histogram-luminance-size+ #x802C) 
(defconstant +unsigned-byte-3-3-2+ #x8032) 
(defconstant +unsigned-short-4-4-4-4+ #x8033) 
(defconstant +unsigned-short-5-5-5-1+ #x8034) 
(defconstant +unsigned-int-8-8-8-8+ #x8035) 
(defconstant +unsigned-int-10-10-10-2+ #x8036) 
(defconstant +unsigned-byte-2-3-3-rev+ #x8362) 
(defconstant +unsigned-short-5-6-5+ #x8363) 
(defconstant +unsigned-short-5-6-5-rev+ #x8364) 
(defconstant +unsigned-short-4-4-4-4-rev+ #x8365) 
(defconstant +unsigned-short-1-5-5-5-rev+ #x8366) 
(defconstant +unsigned-int-8-8-8-8-rev+ #x8367) 
(defconstant +unsigned-int-2-10-10-10-rev+ #x8368) 
(defglextfun "ResetMinmaxEXT" reset-minmax-ext :return "void" :args
 ((:name |target| :type |MinmaxTargetEXT| :direction :in)) :category
 "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "ResetHistogramEXT" reset-histogram-ext :return "void"
 :args ((:name |target| :type |HistogramTargetEXT| :direction :in))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "MinmaxEXT" minmax-ext :return "void" :args
 ((:name |target| :type |MinmaxTargetEXT| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |sink| :type |Boolean| :direction :in))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "HistogramEXT" histogram-ext :return "void" :args
 ((:name |target| :type |HistogramTargetEXT| :direction :in)
  (:name |width| :type |SizeI| :direction :in)
  (:name |internalformat| :type |PixelInternalFormat| :direction :in)
  (:name |sink| :type |Boolean| :direction :in))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetMinmaxParameterivEXT" get-minmax-parameter-iv-ext
 :return "void" :args
 ((:name |target| :type |MinmaxTargetEXT| :direction :in)
  (:name |pname| :type |GetMinmaxParameterPNameEXT| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetMinmaxParameterfvEXT" get-minmax-parameter-fv-ext
 :return "void" :args
 ((:name |target| :type |MinmaxTargetEXT| :direction :in)
  (:name |pname| :type |GetMinmaxParameterPNameEXT| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetMinmaxEXT" get-minmax-ext :return "void" :args
 ((:name |target| :type |MinmaxTargetEXT| :direction :in)
  (:name |reset| :type |Boolean| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |values| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetHistogramParameterivEXT"
 get-histogram-parameter-iv-ext :return "void" :args
 ((:name |target| :type |HistogramTargetEXT| :direction :in)
  (:name |pname| :type |GetHistogramParameterPNameEXT| :direction
   :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetHistogramParameterfvEXT"
 get-histogram-parameter-fv-ext :return "void" :args
 ((:name |target| :type |HistogramTargetEXT| :direction :in)
  (:name |pname| :type |GetHistogramParameterPNameEXT| :direction
   :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   (|pname|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(defglextfun "GetHistogramEXT" get-histogram-ext :return "void" :args
 ((:name |target| :type |HistogramTargetEXT| :direction :in)
  (:name |reset| :type |Boolean| :direction :in)
  (:name |format| :type |PixelFormat| :direction :in)
  (:name |type| :type |PixelType| :direction :in)
  (:name |values| :type |Void| :direction :out :array t :size
   (|target| |format| |type|)))
 :category "EXT_histogram" :deprecated nil :version "1.0") 
(make-extension-loader |EXT_histogram|
 (("ResetMinmaxEXT" reset-minmax-ext :return "void" :args
   ((:name |target| :type |MinmaxTargetEXT| :direction :in))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("ResetHistogramEXT" reset-histogram-ext :return "void" :args
   ((:name |target| :type |HistogramTargetEXT| :direction :in))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("MinmaxEXT" minmax-ext :return "void" :args
   ((:name |target| :type |MinmaxTargetEXT| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |sink| :type |Boolean| :direction :in))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("HistogramEXT" histogram-ext :return "void" :args
   ((:name |target| :type |HistogramTargetEXT| :direction :in)
    (:name |width| :type |SizeI| :direction :in)
    (:name |internalformat| :type |PixelInternalFormat| :direction
     :in)
    (:name |sink| :type |Boolean| :direction :in))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetMinmaxParameterivEXT" get-minmax-parameter-iv-ext :return
   "void" :args
   ((:name |target| :type |MinmaxTargetEXT| :direction :in)
    (:name |pname| :type |GetMinmaxParameterPNameEXT| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetMinmaxParameterfvEXT" get-minmax-parameter-fv-ext :return
   "void" :args
   ((:name |target| :type |MinmaxTargetEXT| :direction :in)
    (:name |pname| :type |GetMinmaxParameterPNameEXT| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetMinmaxEXT" get-minmax-ext :return "void" :args
   ((:name |target| :type |MinmaxTargetEXT| :direction :in)
    (:name |reset| :type |Boolean| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |values| :type |Void| :direction :out :array t :size
     (|target| |format| |type|)))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetHistogramParameterivEXT" get-histogram-parameter-iv-ext
   :return "void" :args
   ((:name |target| :type |HistogramTargetEXT| :direction :in)
    (:name |pname| :type |GetHistogramParameterPNameEXT| :direction
     :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetHistogramParameterfvEXT" get-histogram-parameter-fv-ext
   :return "void" :args
   ((:name |target| :type |HistogramTargetEXT| :direction :in)
    (:name |pname| :type |GetHistogramParameterPNameEXT| :direction
     :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     (|pname|)))
   :category "EXT_histogram" :deprecated nil :version "1.0")
  ("GetHistogramEXT" get-histogram-ext :return "void" :args
   ((:name |target| :type |HistogramTargetEXT| :direction :in)
    (:name |reset| :type |Boolean| :direction :in)
    (:name |format| :type |PixelFormat| :direction :in)
    (:name |type| :type |PixelType| :direction :in)
    (:name |values| :type |Void| :direction :out :array t :size
     (|target| |format| |type|)))
   :category "EXT_histogram" :deprecated nil :version "1.0"))) 
