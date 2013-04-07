;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_bindless_texture

(defglextfun "IsImageHandleResidentNV" is-image-handle-resident-nv :return "Boolean" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "IsTextureHandleResidentNV" is-texture-handle-resident-nv :return "Boolean" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "ProgramUniformHandleui64vNV" program-uniform-handleui-64v-nv :return "void" :args ((:name |program| :type |UInt32| :direction :in) (:name |location| :type |Int32| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |values| :type |UInt64| :direction :in :array t :size count)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "ProgramUniformHandleui64NV" program-uniform-handleui-64-nv :return "void" :args ((:name |program| :type |UInt32| :direction :in) (:name |location| :type |Int32| :direction :in) (:name |value| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "UniformHandleui64vNV" uniform-handleui-64v-nv :return "void" :args ((:name |location| :type |Int32| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |value| :type |UInt64| :direction :in :array t :size count)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "UniformHandleui64NV" uniform-handleui-64-nv :return "void" :args ((:name |location| :type |Int32| :direction :in) (:name |value| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "MakeImageHandleNonResidentNV" make-image-handle-non-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "MakeImageHandleResidentNV" make-image-handle-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in) (:name |access| :type |GLenum| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "GetImageHandleNV" get-image-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in) (:name |level| :type |Int32| :direction :in) (:name |layered| :type |Boolean| :direction :in) (:name |layer| :type |Int32| :direction :in) (:name |format| :type |GLenum| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "MakeTextureHandleNonResidentNV" make-texture-handle-non-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "MakeTextureHandleResidentNV" make-texture-handle-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "GetTextureSamplerHandleNV" get-texture-sampler-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in) (:name |sampler| :type |UInt32| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(defglextfun "GetTextureHandleNV" get-texture-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") 
(make-extension-loader |NV_bindless_texture| (("IsImageHandleResidentNV" is-image-handle-resident-nv :return "Boolean" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("IsTextureHandleResidentNV" is-texture-handle-resident-nv :return "Boolean" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("ProgramUniformHandleui64vNV" program-uniform-handleui-64v-nv :return "void" :args ((:name |program| :type |UInt32| :direction :in) (:name |location| :type |Int32| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |values| :type |UInt64| :direction :in :array t :size count)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("ProgramUniformHandleui64NV" program-uniform-handleui-64-nv :return "void" :args ((:name |program| :type |UInt32| :direction :in) (:name |location| :type |Int32| :direction :in) (:name |value| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("UniformHandleui64vNV" uniform-handleui-64v-nv :return "void" :args ((:name |location| :type |Int32| :direction :in) (:name |count| :type |SizeI| :direction :in) (:name |value| :type |UInt64| :direction :in :array t :size count)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("UniformHandleui64NV" uniform-handleui-64-nv :return "void" :args ((:name |location| :type |Int32| :direction :in) (:name |value| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("MakeImageHandleNonResidentNV" make-image-handle-non-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("MakeImageHandleResidentNV" make-image-handle-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in) (:name |access| :type |GLenum| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("GetImageHandleNV" get-image-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in) (:name |level| :type |Int32| :direction :in) (:name |layered| :type |Boolean| :direction :in) (:name |layer| :type |Int32| :direction :in) (:name |format| :type |GLenum| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("MakeTextureHandleNonResidentNV" make-texture-handle-non-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("MakeTextureHandleResidentNV" make-texture-handle-resident-nv :return "void" :args ((:name |handle| :type |UInt64| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("GetTextureSamplerHandleNV" get-texture-sampler-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in) (:name |sampler| :type |UInt32| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0") ("GetTextureHandleNV" get-texture-handle-nv :return "UInt64" :args ((:name |texture| :type |UInt32| :direction :in)) :category "NV_bindless_texture" :deprecated nil :version "4.0"))) 
