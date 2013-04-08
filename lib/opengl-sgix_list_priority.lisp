;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_list_priority

(defglextfun "ListParameterivSGIX" list-parameter-iv-sgix :return
 "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :in :array t :size
   (|pname|)))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(defglextfun "ListParameteriSGIX" list-parameter-i-sgix :return
 "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |param| :type |CheckedInt32| :direction :in))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(defglextfun "ListParameterfvSGIX" list-parameter-fv-sgix :return
 "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :in :array t
   :size (|pname|)))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(defglextfun "ListParameterfSGIX" list-parameter-f-sgix :return
 "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |param| :type |CheckedFloat32| :direction :in))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(defglextfun "GetListParameterivSGIX" get-list-parameter-iv-sgix
 :return "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |params| :type |CheckedInt32| :direction :out :array t :size
   (|pname|)))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(defglextfun "GetListParameterfvSGIX" get-list-parameter-fv-sgix
 :return "void" :args
 ((:name |list| :type |List| :direction :in)
  (:name |pname| :type |ListParameterName| :direction :in)
  (:name |params| :type |CheckedFloat32| :direction :out :array t
   :size (|pname|)))
 :category "SGIX_list_priority" :deprecated nil :version "1.0") 
(make-extension-loader |SGIX_list_priority|
 (("ListParameterivSGIX" list-parameter-iv-sgix :return "void" :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |params| :type |CheckedInt32| :direction :in :array t
     :size (|pname|)))
   :category "SGIX_list_priority" :deprecated nil :version "1.0")
  ("ListParameteriSGIX" list-parameter-i-sgix :return "void" :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |param| :type |CheckedInt32| :direction :in))
   :category "SGIX_list_priority" :deprecated nil :version "1.0")
  ("ListParameterfvSGIX" list-parameter-fv-sgix :return "void" :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |params| :type |CheckedFloat32| :direction :in :array t
     :size (|pname|)))
   :category "SGIX_list_priority" :deprecated nil :version "1.0")
  ("ListParameterfSGIX" list-parameter-f-sgix :return "void" :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |param| :type |CheckedFloat32| :direction :in))
   :category "SGIX_list_priority" :deprecated nil :version "1.0")
  ("GetListParameterivSGIX" get-list-parameter-iv-sgix :return "void"
   :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |params| :type |CheckedInt32| :direction :out :array t
     :size (|pname|)))
   :category "SGIX_list_priority" :deprecated nil :version "1.0")
  ("GetListParameterfvSGIX" get-list-parameter-fv-sgix :return "void"
   :args
   ((:name |list| :type |List| :direction :in)
    (:name |pname| :type |ListParameterName| :direction :in)
    (:name |params| :type |CheckedFloat32| :direction :out :array t
     :size (|pname|)))
   :category "SGIX_list_priority" :deprecated nil :version "1.0"))) 
