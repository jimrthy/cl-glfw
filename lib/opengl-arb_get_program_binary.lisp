;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_get_program_binary

(defconstant +num-program-binary-formats+ #x87FE) 
(defconstant +program-binary-formats+ #x87FF) 
(defconstant +stencil-back-func+ #x8800) 
(defconstant +stencil-back-fail+ #x8801) 
(defconstant +stencil-back-pass-depth-fail+ #x8802) 
(defconstant +stencil-back-pass-depth-pass+ #x8803) 
(defconstant +stencil-back-fail-ati+ #x8801) 
(defconstant +program-binary-retrievable-hint+ #x8257) 
(defconstant +program-binary-length+ #x8741) 
(defconstant +num-program-binary-formats+ #x87FE) 
(defconstant +program-binary-formats+ #x87FF) 
(defglextfun "ProgramParameteri" program-parameter-i :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |pname| :type |ProgramParameterPName| :direction :in)
  (:name |value| :type |Int32| :direction :in))
 :category "ARB_get_program_binary" :deprecated nil :version "3.0") 
(defglextfun "ProgramBinary" program-binary :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |binaryFormat| :type |GLenum| :direction :in)
  (:name |binary| :type |Void| :direction :in :array t :size length)
  (:name |length| :type |SizeI| :direction :in))
 :category "ARB_get_program_binary" :deprecated nil :version "4.1") 
(defglextfun "GetProgramBinary" get-program-binary :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |bufSize| :type |SizeI| :direction :in)
  (:name |length| :type |SizeI| :direction :out :array t :size #x1)
  (:name |binaryFormat| :type |GLenum| :direction :out :array t :size
   #x1)
  (:name |binary| :type |Void| :direction :out :array t :size
   (|length|)))
 :category "ARB_get_program_binary" :deprecated nil :version "4.1") 
(make-extension-loader |ARB_get_program_binary|
 (("ProgramParameteri" program-parameter-i :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |pname| :type |ProgramParameterPName| :direction :in)
    (:name |value| :type |Int32| :direction :in))
   :category "ARB_get_program_binary" :deprecated nil :version "3.0")
  ("ProgramBinary" program-binary :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |binaryFormat| :type |GLenum| :direction :in)
    (:name |binary| :type |Void| :direction :in :array t :size
     length)
    (:name |length| :type |SizeI| :direction :in))
   :category "ARB_get_program_binary" :deprecated nil :version "4.1")
  ("GetProgramBinary" get-program-binary :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |bufSize| :type |SizeI| :direction :in)
    (:name |length| :type |SizeI| :direction :out :array t :size #x1)
    (:name |binaryFormat| :type |GLenum| :direction :out :array t
     :size #x1)
    (:name |binary| :type |Void| :direction :out :array t :size
     (|length|)))
   :category "ARB_get_program_binary" :deprecated nil :version
   "4.1"))) 
