;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_fog_coord

(defconstant +fog-coordinate-source-ext+ #x8450) 
(defconstant +fog-coordinate-ext+ #x8451) 
(defconstant +fragment-depth-ext+ #x8452) 
(defconstant +current-fog-coordinate-ext+ #x8453) 
(defconstant +fog-coordinate-array-type-ext+ #x8454) 
(defconstant +fog-coordinate-array-stride-ext+ #x8455) 
(defconstant +fog-coordinate-array-pointer-ext+ #x8456) 
(defconstant +fog-coordinate-array-ext+ #x8457) 
(defconstant +color-sum+ #x8458) 
(defconstant +current-secondary-color+ #x8459) 
(defconstant +secondary-color-array-size+ #x845A) 
(defconstant +secondary-color-array-type+ #x845B) 
(defconstant +secondary-color-array-stride+ #x845C) 
(defconstant +secondary-color-array-pointer+ #x845D) 
(defconstant +secondary-color-array+ #x845E) 
(defconstant +fog-coordinate-source-ext+ #x8450) 
(defconstant +fog-coordinate-ext+ #x8451) 
(defconstant +fragment-depth-ext+ #x8452) 
(defconstant +current-fog-coordinate-ext+ #x8453) 
(defconstant +fog-coordinate-array-type-ext+ #x8454) 
(defconstant +fog-coordinate-array-stride-ext+ #x8455) 
(defconstant +fog-coordinate-array-pointer-ext+ #x8456) 
(defconstant +fog-coordinate-array-ext+ #x8457) 
(defglextfun "FogCoordPointerEXT" fog-coord-pointer-ext :return "void" :args
 ((:name |type| :type |FogPointerTypeEXT| :direction :in)
  (:name |stride| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size (|type| |stride|)
   :retained t))
 :category "EXT_fog_coord" :deprecated nil :version "1.1") 
(defglextfun "FogCoorddvEXT" fog-coord-dv-ext :return "void" :args
 ((:name |coord| :type |CoordD| :direction :in :array t :size #x1)) :category
 "EXT_fog_coord" :deprecated nil :version "1.1") 
(defglextfun "FogCoorddEXT" fog-coord-d-ext :return "void" :args
 ((:name |coord| :type |CoordD| :direction :in)) :category "EXT_fog_coord"
 :deprecated nil :version "1.1") 
(defglextfun "FogCoordfvEXT" fog-coord-fv-ext :return "void" :args
 ((:name |coord| :type |CoordF| :direction :in :array t :size #x1)) :category
 "EXT_fog_coord" :deprecated nil :version "1.1") 
(defglextfun "FogCoordfEXT" fog-coord-f-ext :return "void" :args
 ((:name |coord| :type |CoordF| :direction :in)) :category "EXT_fog_coord"
 :deprecated nil :version "1.1") 
(make-extension-loader |EXT_fog_coord|
 (("FogCoordPointerEXT" fog-coord-pointer-ext :return "void" :args
   ((:name |type| :type |FogPointerTypeEXT| :direction :in)
    (:name |stride| :type |SizeI| :direction :in)
    (:name |pointer| :type |Void| :direction :in :array t :size
     (|type| |stride|) :retained t))
   :category "EXT_fog_coord" :deprecated nil :version "1.1")
  ("FogCoorddvEXT" fog-coord-dv-ext :return "void" :args
   ((:name |coord| :type |CoordD| :direction :in :array t :size #x1)) :category
   "EXT_fog_coord" :deprecated nil :version "1.1")
  ("FogCoorddEXT" fog-coord-d-ext :return "void" :args
   ((:name |coord| :type |CoordD| :direction :in)) :category "EXT_fog_coord"
   :deprecated nil :version "1.1")
  ("FogCoordfvEXT" fog-coord-fv-ext :return "void" :args
   ((:name |coord| :type |CoordF| :direction :in :array t :size #x1)) :category
   "EXT_fog_coord" :deprecated nil :version "1.1")
  ("FogCoordfEXT" fog-coord-f-ext :return "void" :args
   ((:name |coord| :type |CoordF| :direction :in)) :category "EXT_fog_coord"
   :deprecated nil :version "1.1"))) 
