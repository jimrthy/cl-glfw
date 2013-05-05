
;;;; Bare-bones usage example

(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw3)
(asdf:oos 'asdf:load-op '#:cl-opengl)

(defpackage glfw3-example
  :use #:glfw3)
(in-package #:glfw3-example)

;;; These next really should be wrapped inside unwind-protect.
(glfw3:initialize)
(glfw3:glfw-init)

(defparameter (*simple-window* create-window 640 480 "A Simple Example" (null-pointer) (null-pointer)))
(make-context-current *simple-window*)

(defun setup-view ()
  (gl:matrix-mode :projection)
  (gl:load-identity)
  (gl:ortho 0 1 0 1 -1 1))
(setup-view)

(defun draw ()
  (gl:clear :color-buffer)
  (gl:load-identity)
  (gl:translate 0 0 -5)
  (gl:rotate (* 10 (glfw:get-time)) 1 1 0)
  (gl:rotate (* 90 (glfw:get-time)) 0 0 1)
  (gl:with-primitive :triangle
    (gl:color 1 0 0) (gl:vertex  1  0 0)
    (gl:color 0 1 0) (gl:vertex -1  1 0)
    (gl:color 0 0 1) (gl:vertex -1 -1 0))
  (gl:flush))

;;; The problem's pretty obviously here:
;;; There's no exit condition.
(defun run ()
  (loop named do-open-window do
       (draw)
       (glfw3:swap-buffers *simple-window*)
       (glfw3:poll-events)))
(run)

