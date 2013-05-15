;;;; Sample translated straight from the latest glfw3 tutorial
;;;; source: http://www.glfw.org/docs/3.0/quick.html

;;; This desperately needs to be worked over. I'm sure I have
;;; all sorts of unjustified expectations about symbols being
;;; imported and such.
;(error "Start here!")

(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw3)
(asdf:oos 'asdf:load-op '#:cl-opengl)

(defpackage #:glfw3-example
  (:use #:cl #:cl-glfw3 #:cl-opengl))
(in-package #:glfw3-example)

;; FAIL: Can't translate the lambda() to a MACPTR
(glfw3:set-error-callback (lambda (error-code description)
			    (format t "Error ~A: '~A'~%" error-code description)))


(if (glfw3:glfw-init)
    (let ((window (glfw3:create-window 640 480 "My Title" (glfw3:*null*) (glfw3:*null*))))
      (unwind-protect ; pretty obviously, protect using a with- macro instead.
	   (progn 
	     (glfw3:make-context-current window)

	     ;; Have to have the OpenGL context before we can do this
	     (glfw3:set-window-size-callback window (lambda (window width height)
						      (gl:viewport 0 0 width height)
						      (gl:matrix-mode :projection)
						      (gl:load-identity)
						      (let ((ratio (/ width height)))
							(gl:ortho (- ratio) ratio -1 1 1 -1))))
	     (do ()
		 ((glfw3:window-should-close-p window) t)
	       (progn
		 ;; The event loop
		 (let ((time (glfw3:get-time)))
		   (gl:clear :color-buffer)
		   (gl:matrix-mode :modelview)
		   (gl:rotate (* time 50) 0 0 1)
		   
		   ;; Honestly, this seems to belong in a with-macro as well.
		   (gl:begin :triangles)
		   (gl:color 1 0 0)
		   (gl:vertex -0.6 -0.4 0)
		   (gl:color 0 1 0)
		   (gl:vertex 0.6 -0.4 0)
		   (gl:color 0 0 1)
		   (gl:vertex 0 0.6 0)
		   (gl:end)

		   (glfw3:poll-events)
		   (glfw3:swap-buffers window)))))
	(glfw3:destroy-window window)))
    (format t "Failed to initialize"))

(glfw3:clean-up)

