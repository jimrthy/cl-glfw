
(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw3)
(asdf:oos 'asdf:load-op '#:cl-opengl)

(glfw3:do-window (:title "A Simple Example")
    ;; This next viewport setup fails.
    (progn (gl:matrix-mode :projection)
	   (gl:load-identity)
	   (gl:ortho 0 1 0 1 -1 1)

	   (gl:clear :color-buffer)
	   (gl:load-identity)
	   (gl:translate 0 0 -5)
	   (gl:rotate (* 10 (glfw:get-time)) 1 1 0)
	   (gl:rotate (* 90 (glfw:get-time)) 0 0 1)
	   (gl:with-primitive :triangle
	     (gl:color 1 0 0) (gl:vertex  1  0 0)
	     (gl:color 0 1 0) (gl:vertex -1  1 0)
	     (gl:color 0 0 1) (gl:vertex -1 -1 0))
	   (gl:flush)))
