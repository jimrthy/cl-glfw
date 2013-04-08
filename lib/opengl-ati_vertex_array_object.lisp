;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_vertex_array_object

(defconstant +static-ati+ #x8760) 
(defconstant +dynamic-ati+ #x8761) 
(defconstant +preserve-ati+ #x8762) 
(defconstant +discard-ati+ #x8763) 
(defconstant +object-buffer-size-ati+ #x8764) 
(defconstant +object-buffer-usage-ati+ #x8765) 
(defconstant +array-object-buffer-ati+ #x8766) 
(defconstant +array-object-offset-ati+ #x8767) 
(defconstant +buffer-size+ #x8764) 
(defconstant +buffer-usage+ #x8765) 
(defconstant +buffer-size-arb+ #x8764) 
(defconstant +buffer-usage-arb+ #x8765) 
(defconstant +static-ati+ #x8760) 
(defconstant +dynamic-ati+ #x8761) 
(defconstant +preserve-ati+ #x8762) 
(defconstant +discard-ati+ #x8763) 
(defconstant +object-buffer-size-ati+ #x8764) 
(defconstant +object-buffer-usage-ati+ #x8765) 
(defconstant +array-object-buffer-ati+ #x8766) 
(defconstant +array-object-offset-ati+ #x8767) 
(defglextfun "GetVariantArrayObjectivATI"
 get-variant-array-object-iv-ati :return "void" :args
 ((:name |id| :type |UInt32| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "GetVariantArrayObjectfvATI"
 get-variant-array-object-fv-ati :return "void" :args
 ((:name |id| :type |UInt32| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "VariantArrayObjectATI" variant-array-object-ati :return
 "void" :args
 ((:name |id| :type |UInt32| :direction :in)
  (:name |type| :type |ScalarType| :direction :in)
  (:name |stride| :type |SizeI| :direction :in)
  (:name |buffer| :type |UInt32| :direction :in)
  (:name |offset| :type |UInt32| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "GetArrayObjectivATI" get-array-object-iv-ati :return
 "void" :args
 ((:name |array| :type |EnableCap| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "GetArrayObjectfvATI" get-array-object-fv-ati :return
 "void" :args
 ((:name |array| :type |EnableCap| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "ArrayObjectATI" array-object-ati :return "void" :args
 ((:name |array| :type |EnableCap| :direction :in)
  (:name |size| :type |Int32| :direction :in)
  (:name |type| :type |ScalarType| :direction :in)
  (:name |stride| :type |SizeI| :direction :in)
  (:name |buffer| :type |UInt32| :direction :in)
  (:name |offset| :type |UInt32| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "FreeObjectBufferATI" free-object-buffer-ati :return
 "void" :args ((:name |buffer| :type |UInt32| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "GetObjectBufferivATI" get-object-buffer-iv-ati :return
 "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "GetObjectBufferfvATI" get-object-buffer-fv-ati :return
 "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   #x1))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "UpdateObjectBufferATI" update-object-buffer-ati :return
 "void" :args
 ((:name |buffer| :type |UInt32| :direction :in)
  (:name |offset| :type |UInt32| :direction :in)
  (:name |size| :type |SizeI| :direction :in)
  (:name |pointer| :type |ConstVoid| :direction :in :array t :size
   size)
  (:name |preserve| :type |PreserveModeATI| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "IsObjectBufferATI" is-object-buffer-ati :return
 "Boolean" :args ((:name |buffer| :type |UInt32| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(defglextfun "NewObjectBufferATI" new-object-buffer-ati :return
 "UInt32" :args
 ((:name |size| :type |SizeI| :direction :in)
  (:name |pointer| :type |ConstVoid| :direction :in :array t :size
   size)
  (:name |usage| :type |ArrayObjectUsageATI| :direction :in))
 :category "ATI_vertex_array_object" :deprecated nil :version "1.2") 
(make-extension-loader |ATI_vertex_array_object|
 (("GetVariantArrayObjectivATI" get-variant-array-object-iv-ati
   :return "void" :args
   ((:name |id| :type |UInt32| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("GetVariantArrayObjectfvATI" get-variant-array-object-fv-ati
   :return "void" :args
   ((:name |id| :type |UInt32| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("VariantArrayObjectATI" variant-array-object-ati :return "void"
   :args
   ((:name |id| :type |UInt32| :direction :in)
    (:name |type| :type |ScalarType| :direction :in)
    (:name |stride| :type |SizeI| :direction :in)
    (:name |buffer| :type |UInt32| :direction :in)
    (:name |offset| :type |UInt32| :direction :in))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("GetArrayObjectivATI" get-array-object-iv-ati :return "void" :args
   ((:name |array| :type |EnableCap| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("GetArrayObjectfvATI" get-array-object-fv-ati :return "void" :args
   ((:name |array| :type |EnableCap| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("ArrayObjectATI" array-object-ati :return "void" :args
   ((:name |array| :type |EnableCap| :direction :in)
    (:name |size| :type |Int32| :direction :in)
    (:name |type| :type |ScalarType| :direction :in)
    (:name |stride| :type |SizeI| :direction :in)
    (:name |buffer| :type |UInt32| :direction :in)
    (:name |offset| :type |UInt32| :direction :in))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("FreeObjectBufferATI" free-object-buffer-ati :return "void" :args
   ((:name |buffer| :type |UInt32| :direction :in)) :category
   "ATI_vertex_array_object" :deprecated nil :version "1.2")
  ("GetObjectBufferivATI" get-object-buffer-iv-ati :return "void"
   :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("GetObjectBufferfvATI" get-object-buffer-fv-ati :return "void"
   :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |pname| :type |ArrayObjectPNameATI| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     #x1))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("UpdateObjectBufferATI" update-object-buffer-ati :return "void"
   :args
   ((:name |buffer| :type |UInt32| :direction :in)
    (:name |offset| :type |UInt32| :direction :in)
    (:name |size| :type |SizeI| :direction :in)
    (:name |pointer| :type |ConstVoid| :direction :in :array t :size
     size)
    (:name |preserve| :type |PreserveModeATI| :direction :in))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2")
  ("IsObjectBufferATI" is-object-buffer-ati :return "Boolean" :args
   ((:name |buffer| :type |UInt32| :direction :in)) :category
   "ATI_vertex_array_object" :deprecated nil :version "1.2")
  ("NewObjectBufferATI" new-object-buffer-ati :return "UInt32" :args
   ((:name |size| :type |SizeI| :direction :in)
    (:name |pointer| :type |ConstVoid| :direction :in :array t :size
     size)
    (:name |usage| :type |ArrayObjectUsageATI| :direction :in))
   :category "ATI_vertex_array_object" :deprecated nil :version
   "1.2"))) 
