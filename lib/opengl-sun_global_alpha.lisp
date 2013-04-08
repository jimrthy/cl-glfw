;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sun_global_alpha

(defconstant +global-alpha-sun+ #x81D9) 
(defconstant +global-alpha-factor-sun+ #x81DA) 
(defglextfun "GlobalAlphaFactoruiSUN" global-alpha-factor-ui-sun
 :return "void" :args
 ((:name |factor| :type |UInt32| :direction :in)) :category
 "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactorusSUN" global-alpha-factor-us-sun
 :return "void" :args
 ((:name |factor| :type |UInt16| :direction :in)) :category
 "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactorubSUN" global-alpha-factor-ub-sun
 :return "void" :args ((:name |factor| :type |UInt8| :direction :in))
 :category "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactordSUN" global-alpha-factor-d-sun
 :return "void" :args
 ((:name |factor| :type |Float64| :direction :in)) :category
 "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactorfSUN" global-alpha-factor-f-sun
 :return "void" :args
 ((:name |factor| :type |Float32| :direction :in)) :category
 "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactoriSUN" global-alpha-factor-i-sun
 :return "void" :args ((:name |factor| :type |Int32| :direction :in))
 :category "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactorsSUN" global-alpha-factor-s-sun
 :return "void" :args ((:name |factor| :type |Int16| :direction :in))
 :category "SUN_global_alpha" :deprecated nil :version "1.1") 
(defglextfun "GlobalAlphaFactorbSUN" global-alpha-factor-b-sun
 :return "void" :args ((:name |factor| :type |Int8| :direction :in))
 :category "SUN_global_alpha" :deprecated nil :version "1.1") 
(make-extension-loader |SUN_global_alpha|
 (("GlobalAlphaFactoruiSUN" global-alpha-factor-ui-sun :return "void"
   :args ((:name |factor| :type |UInt32| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactorusSUN" global-alpha-factor-us-sun :return "void"
   :args ((:name |factor| :type |UInt16| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactorubSUN" global-alpha-factor-ub-sun :return "void"
   :args ((:name |factor| :type |UInt8| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactordSUN" global-alpha-factor-d-sun :return "void"
   :args ((:name |factor| :type |Float64| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactorfSUN" global-alpha-factor-f-sun :return "void"
   :args ((:name |factor| :type |Float32| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactoriSUN" global-alpha-factor-i-sun :return "void"
   :args ((:name |factor| :type |Int32| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactorsSUN" global-alpha-factor-s-sun :return "void"
   :args ((:name |factor| :type |Int16| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1")
  ("GlobalAlphaFactorbSUN" global-alpha-factor-b-sun :return "void"
   :args ((:name |factor| :type |Int8| :direction :in)) :category
   "SUN_global_alpha" :deprecated nil :version "1.1"))) 
