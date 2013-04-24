;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_gpu_shader5

(defconstant +patches+ #xE) 
(defconstant +int64-nv+ #x140E) 
(defconstant +unsigned-int64-nv+ #x140F) 
(defconstant +int8-nv+ #x8FE0) 
(defconstant +int8-vec2-nv+ #x8FE1) 
(defconstant +int8-vec3-nv+ #x8FE2) 
(defconstant +int8-vec4-nv+ #x8FE3) 
(defconstant +int16-nv+ #x8FE4) 
(defconstant +int16-vec2-nv+ #x8FE5) 
(defconstant +int16-vec3-nv+ #x8FE6) 
(defconstant +int16-vec4-nv+ #x8FE7) 
(defconstant +int64-vec2-nv+ #x8FE9) 
(defconstant +int64-vec3-nv+ #x8FEA) 
(defconstant +int64-vec4-nv+ #x8FEB) 
(defconstant +unsigned-int8-nv+ #x8FEC) 
(defconstant +unsigned-int8-vec2-nv+ #x8FED) 
(defconstant +unsigned-int8-vec3-nv+ #x8FEE) 
(defconstant +unsigned-int8-vec4-nv+ #x8FEF) 
(defconstant +unsigned-int16-nv+ #x8FF0) 
(defconstant +unsigned-int16-vec2-nv+ #x8FF1) 
(defconstant +unsigned-int16-vec3-nv+ #x8FF2) 
(defconstant +unsigned-int16-vec4-nv+ #x8FF3) 
(defconstant +unsigned-int64-vec2-nv+ #x8FF5) 
(defconstant +unsigned-int64-vec3-nv+ #x8FF6) 
(defconstant +unsigned-int64-vec4-nv+ #x8FF7) 
(defconstant +float16-nv+ #x8FF8) 
(defconstant +float16-vec2-nv+ #x8FF9) 
(defconstant +float16-vec3-nv+ #x8FFA) 
(defconstant +float16-vec4-nv+ #x8FFB) 
(defconstant +double-vec2+ #x8FFC) 
(defconstant +double-vec3+ #x8FFD) 
(defconstant +double-vec4+ #x8FFE) 
(defconstant +int64-nv+ #x140E) 
(defconstant +unsigned-int64-nv+ #x140F) 
(defconstant +int8-nv+ #x8FE0) 
(defconstant +int8-vec2-nv+ #x8FE1) 
(defconstant +int8-vec3-nv+ #x8FE2) 
(defconstant +int8-vec4-nv+ #x8FE3) 
(defconstant +int16-nv+ #x8FE4) 
(defconstant +int16-vec2-nv+ #x8FE5) 
(defconstant +int16-vec3-nv+ #x8FE6) 
(defconstant +int16-vec4-nv+ #x8FE7) 
(defconstant +int64-vec2-nv+ #x8FE9) 
(defconstant +int64-vec3-nv+ #x8FEA) 
(defconstant +int64-vec4-nv+ #x8FEB) 
(defconstant +unsigned-int8-nv+ #x8FEC) 
(defconstant +unsigned-int8-vec2-nv+ #x8FED) 
(defconstant +unsigned-int8-vec3-nv+ #x8FEE) 
(defconstant +unsigned-int8-vec4-nv+ #x8FEF) 
(defconstant +unsigned-int16-nv+ #x8FF0) 
(defconstant +unsigned-int16-vec2-nv+ #x8FF1) 
(defconstant +unsigned-int16-vec3-nv+ #x8FF2) 
(defconstant +unsigned-int16-vec4-nv+ #x8FF3) 
(defconstant +unsigned-int64-vec2-nv+ #x8FF5) 
(defconstant +unsigned-int64-vec3-nv+ #x8FF6) 
(defconstant +unsigned-int64-vec4-nv+ #x8FF7) 
(defconstant +float16-nv+ #x8FF8) 
(defconstant +float16-vec2-nv+ #x8FF9) 
(defconstant +float16-vec3-nv+ #x8FFA) 
(defconstant +float16-vec4-nv+ #x8FFB) 
(defconstant +patches+ #xE) 
(defglextfun "ProgramUniform4ui64vNV" program-uniform-4ui-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |4|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform3ui64vNV" program-uniform-3ui-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |3|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform2ui64vNV" program-uniform-2ui-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |2|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform1ui64vNV" program-uniform-1ui-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   count))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform4ui64NV" program-uniform-4ui-64-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in)
  (:name \z :type |UInt64EXT| :direction :in)
  (:name \w :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform3ui64NV" program-uniform-3ui-64-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in)
  (:name \z :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform2ui64NV" program-uniform-2ui-64-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform1ui64NV" program-uniform-1ui-64-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform4i64vNV" program-uniform-4i-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |4|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform3i64vNV" program-uniform-3i-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |3|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform2i64vNV" program-uniform-2i-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |2|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform1i64vNV" program-uniform-1i-64v-nv
 :return "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   count))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform4i64NV" program-uniform-4i-64-nv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in)
  (:name \z :type |Int64EXT| :direction :in)
  (:name \w :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform3i64NV" program-uniform-3i-64-nv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in)
  (:name \z :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform2i64NV" program-uniform-2i-64-nv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "ProgramUniform1i64NV" program-uniform-1i-64-nv :return
 "void" :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "GetUniformi64vNV" get-uniformi-64v-nv :return "void"
 :args
 ((:name |program| :type |UInt32| :direction :in)
  (:name |location| :type |Int32| :direction :in)
  (:name |params| :type |Int64EXT| :direction :out :array t :size
   (|location|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform4ui64vNV" uniform-4ui-64v-nv :return "void"
 :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |4|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform3ui64vNV" uniform-3ui-64v-nv :return "void"
 :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |3|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform2ui64vNV" uniform-2ui-64v-nv :return "void"
 :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   (|count| |2|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform1ui64vNV" uniform-1ui-64v-nv :return "void"
 :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |UInt64EXT| :direction :in :array t :size
   count))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform4ui64NV" uniform-4ui-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in)
  (:name \z :type |UInt64EXT| :direction :in)
  (:name \w :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform3ui64NV" uniform-3ui-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in)
  (:name \z :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform2ui64NV" uniform-2ui-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in)
  (:name \y :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform1ui64NV" uniform-1ui-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |UInt64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform4i64vNV" uniform-4i-64v-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |4|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform3i64vNV" uniform-3i-64v-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |3|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform2i64vNV" uniform-2i-64v-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   (|count| |2|)))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform1i64vNV" uniform-1i-64v-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name |count| :type |SizeI| :direction :in)
  (:name |value| :type |Int64EXT| :direction :in :array t :size
   count))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform4i64NV" uniform-4i-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in)
  (:name \z :type |Int64EXT| :direction :in)
  (:name \w :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform3i64NV" uniform-3i-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in)
  (:name \z :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform2i64NV" uniform-2i-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in)
  (:name \y :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(defglextfun "Uniform1i64NV" uniform-1i-64-nv :return "void" :args
 ((:name |location| :type |Int32| :direction :in)
  (:name \x :type |Int64EXT| :direction :in))
 :category "NV_gpu_shader5" :deprecated nil :version "4.1") 
(make-extension-loader |NV_gpu_shader5|
 (("ProgramUniform4ui64vNV" program-uniform-4ui-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |4|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform3ui64vNV" program-uniform-3ui-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |3|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform2ui64vNV" program-uniform-2ui-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |2|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform1ui64vNV" program-uniform-1ui-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     count))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform4ui64NV" program-uniform-4ui-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in)
    (:name \z :type |UInt64EXT| :direction :in)
    (:name \w :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform3ui64NV" program-uniform-3ui-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in)
    (:name \z :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform2ui64NV" program-uniform-2ui-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform1ui64NV" program-uniform-1ui-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform4i64vNV" program-uniform-4i-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |4|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform3i64vNV" program-uniform-3i-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |3|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform2i64vNV" program-uniform-2i-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |2|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform1i64vNV" program-uniform-1i-64v-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     count))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform4i64NV" program-uniform-4i-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in)
    (:name \z :type |Int64EXT| :direction :in)
    (:name \w :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform3i64NV" program-uniform-3i-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in)
    (:name \z :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform2i64NV" program-uniform-2i-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("ProgramUniform1i64NV" program-uniform-1i-64-nv :return "void"
   :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("GetUniformi64vNV" get-uniformi-64v-nv :return "void" :args
   ((:name |program| :type |UInt32| :direction :in)
    (:name |location| :type |Int32| :direction :in)
    (:name |params| :type |Int64EXT| :direction :out :array t :size
     (|location|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform4ui64vNV" uniform-4ui-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |4|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform3ui64vNV" uniform-3ui-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |3|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform2ui64vNV" uniform-2ui-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     (|count| |2|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform1ui64vNV" uniform-1ui-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |UInt64EXT| :direction :in :array t :size
     count))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform4ui64NV" uniform-4ui-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in)
    (:name \z :type |UInt64EXT| :direction :in)
    (:name \w :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform3ui64NV" uniform-3ui-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in)
    (:name \z :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform2ui64NV" uniform-2ui-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in)
    (:name \y :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform1ui64NV" uniform-1ui-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |UInt64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform4i64vNV" uniform-4i-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |4|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform3i64vNV" uniform-3i-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |3|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform2i64vNV" uniform-2i-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     (|count| |2|)))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform1i64vNV" uniform-1i-64v-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name |count| :type |SizeI| :direction :in)
    (:name |value| :type |Int64EXT| :direction :in :array t :size
     count))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform4i64NV" uniform-4i-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in)
    (:name \z :type |Int64EXT| :direction :in)
    (:name \w :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform3i64NV" uniform-3i-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in)
    (:name \z :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform2i64NV" uniform-2i-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in)
    (:name \y :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1")
  ("Uniform1i64NV" uniform-1i-64-nv :return "void" :args
   ((:name |location| :type |Int32| :direction :in)
    (:name \x :type |Int64EXT| :direction :in))
   :category "NV_gpu_shader5" :deprecated nil :version "4.1"))) 