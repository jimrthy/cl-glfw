;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; hp_image_transform

(defconstant +image-scale-x-hp+ #x8155) 
(defconstant +image-scale-y-hp+ #x8156) 
(defconstant +image-translate-x-hp+ #x8157) 
(defconstant +image-translate-y-hp+ #x8158) 
(defconstant +image-rotate-angle-hp+ #x8159) 
(defconstant +image-rotate-origin-x-hp+ #x815A) 
(defconstant +image-rotate-origin-y-hp+ #x815B) 
(defconstant +image-mag-filter-hp+ #x815C) 
(defconstant +image-min-filter-hp+ #x815D) 
(defconstant +image-cubic-weight-hp+ #x815E) 
(defconstant +cubic-hp+ #x815F) 
(defconstant +average-hp+ #x8160) 
(defconstant +image-transform-2d-hp+ #x8161) 
(defconstant +post-image-transform-color-table-hp+ #x8162) 
(defconstant +proxy-post-image-transform-color-table-hp+ #x8163) 
(defglextfun "GetImageTransformParameterfvHP" get-image-transform-parameter-fv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Float32| :direction :out :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") 
(defglextfun "GetImageTransformParameterivHP" get-image-transform-parameter-iv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") 
(defglextfun "ImageTransformParameterfvHP" image-transform-parameter-fv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Float32| :direction :in :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") 
(defglextfun "ImageTransformParameterivHP" image-transform-parameter-iv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Int32| :direction :in :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") 
(defglextfun "ImageTransformParameterfHP" image-transform-parameter-f-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |param| :type |Float32| :direction :in)) :category "HP_image_transform" :deprecated nil :version "1.1") 
(defglextfun "ImageTransformParameteriHP" image-transform-parameter-i-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "HP_image_transform" :deprecated nil :version "1.1") 
(make-extension-loader |HP_image_transform| (("GetImageTransformParameterfvHP" get-image-transform-parameter-fv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Float32| :direction :out :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") ("GetImageTransformParameterivHP" get-image-transform-parameter-iv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Int32| :direction :out :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") ("ImageTransformParameterfvHP" image-transform-parameter-fv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Float32| :direction :in :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") ("ImageTransformParameterivHP" image-transform-parameter-iv-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |params| :type |Int32| :direction :in :array t :size (|pname|))) :category "HP_image_transform" :deprecated nil :version "1.1") ("ImageTransformParameterfHP" image-transform-parameter-f-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |param| :type |Float32| :direction :in)) :category "HP_image_transform" :deprecated nil :version "1.1") ("ImageTransformParameteriHP" image-transform-parameter-i-hp :return "void" :args ((:name |target| :type |ImageTransformTargetHP| :direction :in) (:name |pname| :type |ImageTransformPNameHP| :direction :in) (:name |param| :type |Int32| :direction :in)) :category "HP_image_transform" :deprecated nil :version "1.1"))) 
