
;;;; Bare-bones usage example

(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw3)
;; Get a warning about pre-save hook re: core dump for CCL.
;; This is a true warning. Really should figure out what's
;; going on and add that to cl-opengl.
(asdf:oos 'asdf:load-op '#:cl-opengl)

(defpackage #:glfw3-example
  (:use #:cl #:cl-glfw3 #:cl-opengl))
(in-package #:glfw3-example)

;;; These next really should be wrapped inside unwind-protect.
(glfw3::glfw-init)

(defparameter *simple-window* (glfw3::create-window 640 480 "A Simple Example" 
						    (cffi:null-pointer) 
						    (cffi:null-pointer)))
(glfw3::make-context-current *simple-window*)

(defun setup-view ()
  ;;; I'm getting hung up here apparently. WTF?
  ;; So far, it's the first line that's dumping me into the kernel debugger.
  (gl:matrix-mode :projection)
  (gl:load-identity)
  (gl:ortho 0 1 0 1 -1 1))
;;; Defining that previous function, followed by calling it from the REPL, causes
;;; an error about passing an invalid float value to something.
;;; Just eval-ing the next line from emacs seems to hang me up in an infinite loop.
(setup-view)
;;; Running each of the commands within setup-view individually, from the REPL,
;;; seems to run absolutely fine.
;;; Actually, I'm getting dumped into the kernel debugger. Hmm.

(defun key-callback (window key-code action)
  (when (and (eql action glfw3::*glfw-press*)
	     (eql key-code 256))
    (glfw3::set-window-should-close window t)))
;;; This next line definitely fails. The callback value isn't a MACPTR.
(glfw3::set-key-callback *simple-window* #'key-callback)

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
  ;; FIXME: Debug only.
  ;; Just so I have some evidence that something's happening.
  (format t "Frame")
  (gl:flush))

;;; The problem's pretty obviously here:
;;; There's no exit condition.
(defun run ()
  (loop named do-open-window do
       ;; Another problem with this current implementation:
       ;; Nothing's actually getting drawn.
       ;; At least, nothing visible.
       (draw)
       (glfw3:swap-buffers *simple-window*)
       (glfw3:poll-events)
       (when (glfw3:window-should-close-p *simple-window*)
	 (glfw3:destroy-window *simple-window*)
	 (return-from do-open-window))))
(run)

(setf *simple-window* nil)
(glfw3::terminate)
(glfw3::clean-up)
