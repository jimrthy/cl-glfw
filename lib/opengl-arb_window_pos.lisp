;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; arb_window_pos

(defglextfun "WindowPos3svARB" window-pos-3sv-arb :return "void"
 :args ((:name \v :type |CoordS| :direction :in :array t :size #x3))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3sARB" window-pos-3s-arb :return "void" :args
 ((:name \x :type |CoordS| :direction :in)
  (:name \y :type |CoordS| :direction :in)
  (:name \z :type |CoordS| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3ivARB" window-pos-3iv-arb :return "void"
 :args ((:name \v :type |CoordI| :direction :in :array t :size #x3))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3iARB" window-pos-3i-arb :return "void" :args
 ((:name \x :type |CoordI| :direction :in)
  (:name \y :type |CoordI| :direction :in)
  (:name \z :type |CoordI| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3fvARB" window-pos-3fv-arb :return "void"
 :args ((:name \v :type |CoordF| :direction :in :array t :size #x3))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3fARB" window-pos-3f-arb :return "void" :args
 ((:name \x :type |CoordF| :direction :in)
  (:name \y :type |CoordF| :direction :in)
  (:name \z :type |CoordF| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3dvARB" window-pos-3dv-arb :return "void"
 :args ((:name \v :type |CoordD| :direction :in :array t :size #x3))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos3dARB" window-pos-3d-arb :return "void" :args
 ((:name \x :type |CoordD| :direction :in)
  (:name \y :type |CoordD| :direction :in)
  (:name \z :type |CoordD| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2svARB" window-pos-2sv-arb :return "void"
 :args ((:name \v :type |CoordS| :direction :in :array t :size #x2))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2sARB" window-pos-2s-arb :return "void" :args
 ((:name \x :type |CoordS| :direction :in)
  (:name \y :type |CoordS| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2ivARB" window-pos-2iv-arb :return "void"
 :args ((:name \v :type |CoordI| :direction :in :array t :size #x2))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2iARB" window-pos-2i-arb :return "void" :args
 ((:name \x :type |CoordI| :direction :in)
  (:name \y :type |CoordI| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2fvARB" window-pos-2fv-arb :return "void"
 :args ((:name \v :type |CoordF| :direction :in :array t :size #x2))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2fARB" window-pos-2f-arb :return "void" :args
 ((:name \x :type |CoordF| :direction :in)
  (:name \y :type |CoordF| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2dvARB" window-pos-2dv-arb :return "void"
 :args ((:name \v :type |CoordD| :direction :in :array t :size #x2))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(defglextfun "WindowPos2dARB" window-pos-2d-arb :return "void" :args
 ((:name \x :type |CoordD| :direction :in)
  (:name \y :type |CoordD| :direction :in))
 :category "ARB_window_pos" :deprecated nil :version "1.0") 
(make-extension-loader |ARB_window_pos|
 (("WindowPos3svARB" window-pos-3sv-arb :return "void" :args
   ((:name \v :type |CoordS| :direction :in :array t :size #x3))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3sARB" window-pos-3s-arb :return "void" :args
   ((:name \x :type |CoordS| :direction :in)
    (:name \y :type |CoordS| :direction :in)
    (:name \z :type |CoordS| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3ivARB" window-pos-3iv-arb :return "void" :args
   ((:name \v :type |CoordI| :direction :in :array t :size #x3))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3iARB" window-pos-3i-arb :return "void" :args
   ((:name \x :type |CoordI| :direction :in)
    (:name \y :type |CoordI| :direction :in)
    (:name \z :type |CoordI| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3fvARB" window-pos-3fv-arb :return "void" :args
   ((:name \v :type |CoordF| :direction :in :array t :size #x3))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3fARB" window-pos-3f-arb :return "void" :args
   ((:name \x :type |CoordF| :direction :in)
    (:name \y :type |CoordF| :direction :in)
    (:name \z :type |CoordF| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3dvARB" window-pos-3dv-arb :return "void" :args
   ((:name \v :type |CoordD| :direction :in :array t :size #x3))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos3dARB" window-pos-3d-arb :return "void" :args
   ((:name \x :type |CoordD| :direction :in)
    (:name \y :type |CoordD| :direction :in)
    (:name \z :type |CoordD| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2svARB" window-pos-2sv-arb :return "void" :args
   ((:name \v :type |CoordS| :direction :in :array t :size #x2))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2sARB" window-pos-2s-arb :return "void" :args
   ((:name \x :type |CoordS| :direction :in)
    (:name \y :type |CoordS| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2ivARB" window-pos-2iv-arb :return "void" :args
   ((:name \v :type |CoordI| :direction :in :array t :size #x2))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2iARB" window-pos-2i-arb :return "void" :args
   ((:name \x :type |CoordI| :direction :in)
    (:name \y :type |CoordI| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2fvARB" window-pos-2fv-arb :return "void" :args
   ((:name \v :type |CoordF| :direction :in :array t :size #x2))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2fARB" window-pos-2f-arb :return "void" :args
   ((:name \x :type |CoordF| :direction :in)
    (:name \y :type |CoordF| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2dvARB" window-pos-2dv-arb :return "void" :args
   ((:name \v :type |CoordD| :direction :in :array t :size #x2))
   :category "ARB_window_pos" :deprecated nil :version "1.0")
  ("WindowPos2dARB" window-pos-2d-arb :return "void" :args
   ((:name \x :type |CoordD| :direction :in)
    (:name \y :type |CoordD| :direction :in))
   :category "ARB_window_pos" :deprecated nil :version "1.0"))) 
