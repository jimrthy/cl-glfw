;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_vertex_array_range

(defconstant +vertex-array-range-nv+ #x851D) 
(defconstant +vertex-array-range-length-nv+ #x851E) 
(defconstant +vertex-array-range-valid-nv+ #x851F) 
(defconstant +max-vertex-array-range-element-nv+ #x8520) 
(defconstant +vertex-array-range-pointer-nv+ #x8521) 
(defconstant +vertex-array-range-nv+ #x851D) 
(defconstant +vertex-array-range-length-nv+ #x851E) 
(defconstant +vertex-array-range-valid-nv+ #x851F) 
(defconstant +max-vertex-array-range-element-nv+ #x8520) 
(defconstant +vertex-array-range-pointer-nv+ #x8521) 
(defglextfun "VertexArrayRangeNV" vertex-array-range-nv :return
 "void" :args
 ((:name |length| :type |SizeI| :direction :in)
  (:name |pointer| :type |Void| :direction :in :array t :size
   (|length|) :retained t))
 :category "NV_vertex_array_range" :deprecated nil :version "1.1") 
(defglextfun "FlushVertexArrayRangeNV" flush-vertex-array-range-nv
 :return "void" :args nil :category "NV_vertex_array_range"
 :deprecated nil :version "1.1") 
(make-extension-loader |NV_vertex_array_range|
 (("VertexArrayRangeNV" vertex-array-range-nv :return "void" :args
   ((:name |length| :type |SizeI| :direction :in)
    (:name |pointer| :type |Void| :direction :in :array t :size
     (|length|) :retained t))
   :category "NV_vertex_array_range" :deprecated nil :version "1.1")
  ("FlushVertexArrayRangeNV" flush-vertex-array-range-nv :return
   "void" :args nil :category "NV_vertex_array_range" :deprecated nil
   :version "1.1"))) 