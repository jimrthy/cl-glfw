;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_program_interface_query

(defconstant +uniform+ #x92E1) 
(defconstant +uniform-block+ #x92E2) 
(defconstant +program-input+ #x92E3) 
(defconstant +program-output+ #x92E4) 
(defconstant +buffer-variable+ #x92E5) 
(defconstant +shader-storage-block+ #x92E6) 
(defconstant +is-per-patch+ #x92E7) 
(defconstant +vertex-subroutine+ #x92E8) 
(defconstant +tess-control-subroutine+ #x92E9) 
(defconstant +tess-evaluation-subroutine+ #x92EA) 
(defconstant +geometry-subroutine+ #x92EB) 
(defconstant +fragment-subroutine+ #x92EC) 
(defconstant +compute-subroutine+ #x92ED) 
(defconstant +vertex-subroutine-uniform+ #x92EE) 
(defconstant +tess-control-subroutine-uniform+ #x92EF) 
(defconstant +tess-evaluation-subroutine-uniform+ #x92F0) 
(defconstant +geometry-subroutine-uniform+ #x92F1) 
(defconstant +fragment-subroutine-uniform+ #x92F2) 
(defconstant +compute-subroutine-uniform+ #x92F3) 
(defconstant +transform-feedback-varying+ #x92F4) 
(defconstant +active-resources+ #x92F5) 
(defconstant +max-name-length+ #x92F6) 
(defconstant +max-num-active-variables+ #x92F7) 
(defconstant +max-num-compatible-subroutines+ #x92F8) 
(defconstant +name-length+ #x92F9) 
(defconstant +type+ #x92FA) 
(defconstant +array-size+ #x92FB) 
(defconstant +offset+ #x92FC) 
(defconstant +block-index+ #x92FD) 
(defconstant +array-stride+ #x92FE) 
(defconstant +matrix-stride+ #x92FF) 
(defconstant +is-row-major+ #x9300) 
(defconstant +atomic-counter-buffer-index+ #x9301) 
(defconstant +buffer-binding+ #x9302) 
(defconstant +buffer-data-size+ #x9303) 
(defconstant +num-active-variables+ #x9304) 
(defconstant +active-variables+ #x9305) 
(defconstant +referenced-by-vertex-shader+ #x9306) 
(defconstant +referenced-by-tess-control-shader+ #x9307) 
(defconstant +referenced-by-tess-evaluation-shader+ #x9308) 
(defconstant +referenced-by-geometry-shader+ #x9309) 
(defconstant +referenced-by-fragment-shader+ #x930A) 
(defconstant +referenced-by-compute-shader+ #x930B) 
(defconstant +top-level-array-size+ #x930C) 
(defconstant +top-level-array-stride+ #x930D) 
(defconstant +location+ #x930E) 
(defconstant +location-index+ #x930F) 
(defconstant +uniform+ #x92E1) 
(defconstant +uniform-block+ #x92E2) 
(defconstant +program-input+ #x92E3) 
(defconstant +program-output+ #x92E4) 
(defconstant +buffer-variable+ #x92E5) 
(defconstant +shader-storage-block+ #x92E6) 
(defconstant +atomic-counter-buffer+ #x92C0) 
(defconstant +vertex-subroutine+ #x92E8) 
(defconstant +tess-control-subroutine+ #x92E9) 
(defconstant +tess-evaluation-subroutine+ #x92EA) 
(defconstant +geometry-subroutine+ #x92EB) 
(defconstant +fragment-subroutine+ #x92EC) 
(defconstant +compute-subroutine+ #x92ED) 
(defconstant +vertex-subroutine-uniform+ #x92EE) 
(defconstant +tess-control-subroutine-uniform+ #x92EF) 
(defconstant +tess-evaluation-subroutine-uniform+ #x92F0) 
(defconstant +geometry-subroutine-uniform+ #x92F1) 
(defconstant +fragment-subroutine-uniform+ #x92F2) 
(defconstant +compute-subroutine-uniform+ #x92F3) 
(defconstant +transform-feedback-varying+ #x92F4) 
(defconstant +active-resources+ #x92F5) 
(defconstant +max-name-length+ #x92F6) 
(defconstant +max-num-active-variables+ #x92F7) 
(defconstant +max-num-compatible-subroutines+ #x92F8) 
(defconstant +name-length+ #x92F9) 
(defconstant +type+ #x92FA) 
(defconstant +array-size+ #x92FB) 
(defconstant +offset+ #x92FC) 
(defconstant +block-index+ #x92FD) 
(defconstant +array-stride+ #x92FE) 
(defconstant +matrix-stride+ #x92FF) 
(defconstant +is-row-major+ #x9300) 
(defconstant +atomic-counter-buffer-index+ #x9301) 
(defconstant +buffer-binding+ #x9302) 
(defconstant +buffer-data-size+ #x9303) 
(defconstant +num-active-variables+ #x9304) 
(defconstant +active-variables+ #x9305) 
(defconstant +referenced-by-vertex-shader+ #x9306) 
(defconstant +referenced-by-tess-control-shader+ #x9307) 
(defconstant +referenced-by-tess-evaluation-shader+ #x9308) 
(defconstant +referenced-by-geometry-shader+ #x9309) 
(defconstant +referenced-by-fragment-shader+ #x930A) 
(defconstant +referenced-by-compute-shader+ #x930B) 
(defconstant +top-level-array-size+ #x930C) 
(defconstant +top-level-array-stride+ #x930D) 
(defconstant +location+ #x930E) 
(defconstant +location-index+ #x930F) 
(defconstant +is-per-patch+ #x92E7) 
(defconstant +num-compatible-subroutines+ #x8E4A) 
(defconstant +compatible-subroutines+ #x8E4B) 
(defglextfun "GetProgramResourceLocationIndex"
 get-program-resource-location-index :return "Int32" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |name| :type |Char| :direction :in :array t :size (|name|)))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(defglextfun "GetProgramResourceLocation"
 get-program-resource-location :return "Int32" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |name| :type |Char| :direction :in :array t :size (|name|)))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(defglextfun "GetProgramResourceiv" get-program-resource-iv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |propCount| :type |SizeI| :direction :in)
  (:name |props| :type |GLenum| :direction :in :array t :size
   propcount)
  (:name |bufSize| :type |SizeI| :direction :in)
  ("length" "SizeI" "out" "reference")
  (:name |params| :type |Int32| :direction :out :array t :size
   bufsize))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(defglextfun "GetProgramResourceName" get-program-resource-name
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |index| :type |UInt32| :direction :in)
  (:name |bufSize| :type |SizeI| :direction :in)
  ("length" "SizeI" "out" "reference")
  (:name |name| :type |Char| :direction :out :array t :size bufsize))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(defglextfun "GetProgramResourceIndex" get-program-resource-index
 :return "UInt32" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |name| :type |Char| :direction :in :array t :size (|name|)))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(defglextfun "GetProgramInterfaceiv" get-program-interface-iv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |programInterface| :type |GLenum| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "ARB_program_interface_query" :deprecated nil :version
 "4.3") 
(make-extension-loader |ARB_program_interface_query|
 (("GetProgramResourceLocationIndex"
   get-program-resource-location-index :return "Int32" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |name| :type |Char| :direction :in :array t :size
     (|name|)))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3")
  ("GetProgramResourceLocation" get-program-resource-location :return
   "Int32" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |name| :type |Char| :direction :in :array t :size
     (|name|)))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3")
  ("GetProgramResourceiv" get-program-resource-iv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |propCount| :type |SizeI| :direction :in)
    (:name |props| :type |GLenum| :direction :in :array t :size
     propcount)
    (:name |bufSize| :type |SizeI| :direction :in)
    ("length" "SizeI" "out" "reference")
    (:name |params| :type |Int32| :direction :out :array t :size
     bufsize))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3")
  ("GetProgramResourceName" get-program-resource-name :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |index| :type |UInt32| :direction :in)
    (:name |bufSize| :type |SizeI| :direction :in)
    ("length" "SizeI" "out" "reference")
    (:name |name| :type |Char| :direction :out :array t :size
     bufsize))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3")
  ("GetProgramResourceIndex" get-program-resource-index :return
   "UInt32" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |name| :type |Char| :direction :in :array t :size
     (|name|)))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3")
  ("GetProgramInterfaceiv" get-program-interface-iv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |programInterface| :type |GLenum| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "ARB_program_interface_query" :deprecated nil :version
   "4.3"))) 