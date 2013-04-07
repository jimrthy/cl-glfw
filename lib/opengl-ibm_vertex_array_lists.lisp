;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ibm_vertex_array_lists

(defconstant +vertex-array-list-ibm+ #x1929E) 
(defconstant +normal-array-list-ibm+ #x1929F) 
(defconstant +color-array-list-ibm+ #x192A0) 
(defconstant +index-array-list-ibm+ #x192A1) 
(defconstant +texture-coord-array-list-ibm+ #x192A2) 
(defconstant +edge-flag-array-list-ibm+ #x192A3) 
(defconstant +fog-coordinate-array-list-ibm+ #x192A4) 
(defconstant +secondary-color-array-list-ibm+ #x192A5) 
(defconstant +vertex-array-list-stride-ibm+ #x192A8) 
(defconstant +normal-array-list-stride-ibm+ #x192A9) 
(defconstant +color-array-list-stride-ibm+ #x192AA) 
(defconstant +index-array-list-stride-ibm+ #x192AB) 
(defconstant +texture-coord-array-list-stride-ibm+ #x192AC) 
(defconstant +edge-flag-array-list-stride-ibm+ #x192AD) 
(defconstant +fog-coordinate-array-list-stride-ibm+ #x192AE) 
(defconstant +secondary-color-array-list-stride-ibm+ #x192AF) 
(defglextfun "VertexPointerListIBM" vertex-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |VertexPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "TexCoordPointerListIBM" tex-coord-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |TexCoordPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "NormalPointerListIBM" normal-pointer-list-ibm :return "void" :args ((:name |type| :type |NormalPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "IndexPointerListIBM" index-pointer-list-ibm :return "void" :args ((:name |type| :type |IndexPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "FogCoordPointerListIBM" fog-coord-pointer-list-ibm :return "void" :args ((:name |type| :type |FogPointerTypeIBM| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "EdgeFlagPointerListIBM" edge-flag-pointer-list-ibm :return "void" :args ((:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |BooleanPointer| :direction :in :array t :size (|stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "SecondaryColorPointerListIBM" secondary-color-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |SecondaryColorPointerTypeIBM| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(defglextfun "ColorPointerListIBM" color-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |ColorPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") 
(make-extension-loader |IBM_vertex_array_lists| (("VertexPointerListIBM" vertex-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |VertexPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("TexCoordPointerListIBM" tex-coord-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |TexCoordPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("NormalPointerListIBM" normal-pointer-list-ibm :return "void" :args ((:name |type| :type |NormalPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("IndexPointerListIBM" index-pointer-list-ibm :return "void" :args ((:name |type| :type |IndexPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("FogCoordPointerListIBM" fog-coord-pointer-list-ibm :return "void" :args ((:name |type| :type |FogPointerTypeIBM| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("EdgeFlagPointerListIBM" edge-flag-pointer-list-ibm :return "void" :args ((:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |BooleanPointer| :direction :in :array t :size (|stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("SecondaryColorPointerListIBM" secondary-color-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |SecondaryColorPointerTypeIBM| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1") ("ColorPointerListIBM" color-pointer-list-ibm :return "void" :args ((:name |size| :type |Int32| :direction :in) (:name |type| :type |ColorPointerType| :direction :in) (:name |stride| :type |Int32| :direction :in) (:name |pointer| :type |VoidPointer| :direction :in :array t :size (|size| |type| |stride|) :retained t) (:name |ptrstride| :type |Int32| :direction :in)) :category "IBM_vertex_array_lists" :deprecated nil :version "1.1"))) 
