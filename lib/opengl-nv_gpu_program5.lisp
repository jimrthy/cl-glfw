;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_gpu_program5

(defconstant +max-geometry-program-invocations-nv+ #x8E5A) 
(defconstant +min-fragment-interpolation-offset-nv+ #x8E5B) 
(defconstant +max-fragment-interpolation-offset-nv+ #x8E5C) 
(defconstant +fragment-program-interpolation-offset-bits-nv+ #x8E5D) 
(defconstant +min-program-texture-gather-offset-nv+ #x8E5E) 
(defconstant +max-program-texture-gather-offset-nv+ #x8E5F) 
(defconstant +max-geometry-program-invocations-nv+ #x8E5A) 
(defconstant +min-fragment-interpolation-offset-nv+ #x8E5B) 
(defconstant +max-fragment-interpolation-offset-nv+ #x8E5C) 
(defconstant +fragment-program-interpolation-offset-bits-nv+ #x8E5D) 
(defconstant +min-program-texture-gather-offset-nv+ #x8E5E) 
(defconstant +max-program-texture-gather-offset-nv+ #x8E5F) 
(defconstant +max-program-subroutine-parameters-nv+ #x8F44) 
(defconstant +max-program-subroutine-num-nv+ #x8F45) 
(defglextfun "GetProgramSubroutineParameteruivNV" get-program-subroutine-parameter-uiv-nv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |index| :type |UInt32| :direction :in) (:name |param| :type |UInt32| :direction :out :array t :size (|target|))) :category "NV_gpu_program5" :deprecated nil :version "4.1") 
(defglextfun "ProgramSubroutineParametersuivNV" program-subroutine-parameters-uiv-nv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |params| :type |UInt32| :direction :in :array t :size count)) :category "NV_gpu_program5" :deprecated nil :version "4.1") 
(make-extension-loader |NV_gpu_program5| (("GetProgramSubroutineParameteruivNV" get-program-subroutine-parameter-uiv-nv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |index| :type |UInt32| :direction :in) (:name |param| :type |UInt32| :direction :out :array t :size (|target|))) :category "NV_gpu_program5" :deprecated nil :version "4.1") ("ProgramSubroutineParametersuivNV" program-subroutine-parameters-uiv-nv :return "void" :args ((:name |target| :type |GLenum| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |params| :type |UInt32| :direction :in :array t :size count)) :category "NV_gpu_program5" :deprecated nil :version "4.1"))) 
