;;;; Sample translated straight from the latest glfw3 tutorial
;;;; source: http://www.glfw.org/docs/3.0/quick.html

;;; This desperately needs to be worked over. I'm sure I have
;;; all sorts of unjustified expectations about symbols being
;;; imported and such.

(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw3)
(asdf:oos 'asdf:load-op '#:cl-opengl)

(defpackage #:glfw3-example
  (:use #:cl #:cl-glfw3 #:cffi #:cl-opengl))
(in-package #:glfw3-example)

(cffi:defcallback error-handler
    :void
    ;; What are the odds that my actual problem is somewhere in here?
    ((error-code :int) (description :string))
  (format t "Seriously. Error (really just checking)")
  (format t "Error Callback ~A: '~A'~%" error-code description))
(glfw3:set-error-callback (cffi:callback error-handler))

;; The close callback no longer has a meaningful return value.
;; So...what is this function supposed to be about nowadays?
;;(defparameter *should-close* nil)
;;(cffi:defcallback close-handler)

(defun draw (window)
  (let ((time (glfw3:get-time)))
    (format t "~A~%" time)
    (gl:clear :color-buffer)
    (gl:matrix-mode :modelview)
    (gl:rotate (* time 50) 0 0 1)
		   
    ;; Honestly, this seems to belong in a with-macro as well.
    ;; Then again...this approach really only applies to toy
    ;; programs.
    (gl:begin :triangles)
    (gl:color 1 0 0)
    (gl:vertex -0.6 -0.4 0)
    (gl:color 0 1 0)
    (gl:vertex 0.6 -0.4 0)
    (gl:color 0 0 1)
    (gl:vertex 0 0.6 0)
    (gl:end)

    (glfw3:swap-buffers window)
    (glfw3:poll-events)))

(defun event-loop (window)
  (do ()
      (
       (glfw3::bool-c-to-lisp (glfw3:window-should-close-p window))
       t)
    (draw window)))

(cffi:defcallback window-sizer
    :void
  ((window glfw3::glfw-window) (width :int) (height :int))
  ;; Have to have the OpenGL context before we can do this.
  ;; Q: Should I be making that window's context current?
  ;; A: Seems really stupid to think otherwise.
  (declare (ignore window))
  (format t "Resizing to ~A x ~A~%" width height)
  (gl:viewport 0 0 width height)
  (format t "Setting projecting matrix~%")
  (gl:matrix-mode :projection)
  (gl:load-identity)
  (let ((ratio (/ width height)))
    (format t "Setting ortho: ~A~%" ratio)
    ;; This next line is failing here, pretty spectacularly.
    ;; with an error message that doesn't seem to make any sense.
    ;; It appears to run fine (even if it does nothing) when 
    ;; I run it throuh the REPL.
    (gl:ortho (- ratio) ratio -1 1 1 -1))
  (format t "Returning~%"))

(defun run (window)
  (glfw3:make-context-current window)
  (event-loop window))

(if (glfw3:glfw-init)
    (let ((window (glfw3:create-window 640 480 "My Title" glfw3::*null* glfw3::*null*)))
      (unwind-protect ; pretty obviously, protect using a with- macro instead.
	   (progn 
	     ;; Note that all the examples use glfwSetFramebufferSizeCallback instead.
	     (glfw3:set-window-size-callback window (cffi:callback window-sizer))
	     ;; This window isn't closing. When I kill it, it's also killing
	     ;; off my lisp process.
	     (run window))
	(glfw3:destroy-window window)))
    (format t "Failed to initialize"))

(glfw3:clean-up)

