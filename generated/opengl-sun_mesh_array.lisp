;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sun_mesh_array

(defconstant +quad-mesh-sun+ #x8614) 
(defconstant +triangle-mesh-sun+ #x8615) 
(defglextfun "DrawMeshArraysSUN" draw-mesh-arrays-sun :return "void"
 :args
 ((:name |mode| :type |BeginMode| :direction :in)
  (:name |first| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |width| :type |SizeI| :direction :in))
 :category "SUN_mesh_array" :deprecated nil :version "1.1") 
(make-extension-loader |SUN_mesh_array|
 (("DrawMeshArraysSUN" draw-mesh-arrays-sun :return "void" :args
   ((:name |mode| :type |BeginMode| :direction :in)
    (:name |first| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |width| :type |SizeI| :direction :in))
   :category "SUN_mesh_array" :deprecated nil :version "1.1"))) 