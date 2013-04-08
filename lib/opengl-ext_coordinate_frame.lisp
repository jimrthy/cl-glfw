;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_coordinate_frame

(defconstant +tangent-array-ext+ #x8439) 
(defconstant +binormal-array-ext+ #x843A) 
(defconstant +current-tangent-ext+ #x843B) 
(defconstant +current-binormal-ext+ #x843C) 
(defconstant +tangent-array-type-ext+ #x843E) 
(defconstant +tangent-array-stride-ext+ #x843F) 
(defconstant +binormal-array-type-ext+ #x8440) 
(defconstant +binormal-array-stride-ext+ #x8441) 
(defconstant +tangent-array-pointer-ext+ #x8442) 
(defconstant +binormal-array-pointer-ext+ #x8443) 
(defconstant +map1-tangent-ext+ #x8444) 
(defconstant +map2-tangent-ext+ #x8445) 
(defconstant +map1-binormal-ext+ #x8446) 
(defconstant +map2-binormal-ext+ #x8447) 
(defglextfun "BinormalPointerEXT" binormal-pointer-ext :return "void"
 :args
 ((:name |type| :type |BinormalPointerTypeEXT| :direction :in)
  (:name |stride| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size
   (|type| |stride|) :retained t))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "TangentPointerEXT" tangent-pointer-ext :return "void"
 :args
 ((:name |type| :type |TangentPointerTypeEXT| :direction :in)
  (:name |stride| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size
   (|type| |stride|) :retained t))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3svEXT" binormal-3sv-ext :return "void" :args
 ((:name \v :type |Int16| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3sEXT" binormal-3s-ext :return "void" :args
 ((:name |bx| :type |Int16| :direction :in)
  (:name |by| :type |Int16| :direction :in)
  (:name |bz| :type |Int16| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3ivEXT" binormal-3iv-ext :return "void" :args
 ((:name \v :type |Int32| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3iEXT" binormal-3i-ext :return "void" :args
 ((:name |bx| :type |Int32| :direction :in)
  (:name |by| :type |Int32| :direction :in)
  (:name |bz| :type |Int32| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3fvEXT" binormal-3fv-ext :return "void" :args
 ((:name \v :type |CoordF| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3fEXT" binormal-3f-ext :return "void" :args
 ((:name |bx| :type |CoordF| :direction :in)
  (:name |by| :type |CoordF| :direction :in)
  (:name |bz| :type |CoordF| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3dvEXT" binormal-3dv-ext :return "void" :args
 ((:name \v :type |CoordD| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3dEXT" binormal-3d-ext :return "void" :args
 ((:name |bx| :type |CoordD| :direction :in)
  (:name |by| :type |CoordD| :direction :in)
  (:name |bz| :type |CoordD| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3bvEXT" binormal-3bv-ext :return "void" :args
 ((:name \v :type |Int8| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Binormal3bEXT" binormal-3b-ext :return "void" :args
 ((:name |bx| :type |Int8| :direction :in)
  (:name |by| :type |Int8| :direction :in)
  (:name |bz| :type |Int8| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3svEXT" tangent-3sv-ext :return "void" :args
 ((:name \v :type |Int16| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3sEXT" tangent-3s-ext :return "void" :args
 ((:name |tx| :type |Int16| :direction :in)
  (:name |ty| :type |Int16| :direction :in)
  (:name |tz| :type |Int16| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3ivEXT" tangent-3iv-ext :return "void" :args
 ((:name \v :type |Int32| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3iEXT" tangent-3i-ext :return "void" :args
 ((:name |tx| :type |Int32| :direction :in)
  (:name |ty| :type |Int32| :direction :in)
  (:name |tz| :type |Int32| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3fvEXT" tangent-3fv-ext :return "void" :args
 ((:name \v :type |CoordF| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3fEXT" tangent-3f-ext :return "void" :args
 ((:name |tx| :type |CoordF| :direction :in)
  (:name |ty| :type |CoordF| :direction :in)
  (:name |tz| :type |CoordF| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3dvEXT" tangent-3dv-ext :return "void" :args
 ((:name \v :type |CoordD| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3dEXT" tangent-3d-ext :return "void" :args
 ((:name |tx| :type |CoordD| :direction :in)
  (:name |ty| :type |CoordD| :direction :in)
  (:name |tz| :type |CoordD| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3bvEXT" tangent-3bv-ext :return "void" :args
 ((:name \v :type |Int8| :direction :in :array t :size #x3))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(defglextfun "Tangent3bEXT" tangent-3b-ext :return "void" :args
 ((:name |tx| :type |Int8| :direction :in)
  (:name |ty| :type |Int8| :direction :in)
  (:name |tz| :type |Int8| :direction :in))
 :category "EXT_coordinate_frame" :deprecated nil :version "1.1") 
(make-extension-loader |EXT_coordinate_frame|
 (("BinormalPointerEXT" binormal-pointer-ext :return "void" :args
   ((:name |type| :type |BinormalPointerTypeEXT| :direction :in)
    (:name |stride| :type |SizeI| :direction :in)
    (:name |pointer| :type |Void| :direction :in :array t :size
     (|type| |stride|) :retained t))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("TangentPointerEXT" tangent-pointer-ext :return "void" :args
   ((:name |type| :type |TangentPointerTypeEXT| :direction :in)
    (:name |stride| :type |SizeI| :direction :in)
    (:name |pointer| :type |Void| :direction :in :array t :size
     (|type| |stride|) :retained t))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3svEXT" binormal-3sv-ext :return "void" :args
   ((:name \v :type |Int16| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3sEXT" binormal-3s-ext :return "void" :args
   ((:name |bx| :type |Int16| :direction :in)
    (:name |by| :type |Int16| :direction :in)
    (:name |bz| :type |Int16| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3ivEXT" binormal-3iv-ext :return "void" :args
   ((:name \v :type |Int32| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3iEXT" binormal-3i-ext :return "void" :args
   ((:name |bx| :type |Int32| :direction :in)
    (:name |by| :type |Int32| :direction :in)
    (:name |bz| :type |Int32| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3fvEXT" binormal-3fv-ext :return "void" :args
   ((:name \v :type |CoordF| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3fEXT" binormal-3f-ext :return "void" :args
   ((:name |bx| :type |CoordF| :direction :in)
    (:name |by| :type |CoordF| :direction :in)
    (:name |bz| :type |CoordF| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3dvEXT" binormal-3dv-ext :return "void" :args
   ((:name \v :type |CoordD| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3dEXT" binormal-3d-ext :return "void" :args
   ((:name |bx| :type |CoordD| :direction :in)
    (:name |by| :type |CoordD| :direction :in)
    (:name |bz| :type |CoordD| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3bvEXT" binormal-3bv-ext :return "void" :args
   ((:name \v :type |Int8| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Binormal3bEXT" binormal-3b-ext :return "void" :args
   ((:name |bx| :type |Int8| :direction :in)
    (:name |by| :type |Int8| :direction :in)
    (:name |bz| :type |Int8| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3svEXT" tangent-3sv-ext :return "void" :args
   ((:name \v :type |Int16| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3sEXT" tangent-3s-ext :return "void" :args
   ((:name |tx| :type |Int16| :direction :in)
    (:name |ty| :type |Int16| :direction :in)
    (:name |tz| :type |Int16| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3ivEXT" tangent-3iv-ext :return "void" :args
   ((:name \v :type |Int32| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3iEXT" tangent-3i-ext :return "void" :args
   ((:name |tx| :type |Int32| :direction :in)
    (:name |ty| :type |Int32| :direction :in)
    (:name |tz| :type |Int32| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3fvEXT" tangent-3fv-ext :return "void" :args
   ((:name \v :type |CoordF| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3fEXT" tangent-3f-ext :return "void" :args
   ((:name |tx| :type |CoordF| :direction :in)
    (:name |ty| :type |CoordF| :direction :in)
    (:name |tz| :type |CoordF| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3dvEXT" tangent-3dv-ext :return "void" :args
   ((:name \v :type |CoordD| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3dEXT" tangent-3d-ext :return "void" :args
   ((:name |tx| :type |CoordD| :direction :in)
    (:name |ty| :type |CoordD| :direction :in)
    (:name |tz| :type |CoordD| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3bvEXT" tangent-3bv-ext :return "void" :args
   ((:name \v :type |Int8| :direction :in :array t :size #x3))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1")
  ("Tangent3bEXT" tangent-3b-ext :return "void" :args
   ((:name |tx| :type |Int8| :direction :in)
    (:name |ty| :type |Int8| :direction :in)
    (:name |tz| :type |Int8| :direction :in))
   :category "EXT_coordinate_frame" :deprecated nil :version "1.1"))) 
