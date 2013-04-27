(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)

(glfw:with-init
  ;; The next line fails. 
  ;; Q: Because we haven't created a GL window yet?
  ;(format t "OpenGL version: ~A~%" (glfw:get-gl-version))
  ;; A: Yes:
  (glfw:with-open-window ()
      (format t "OpenGL version: ~A~%" (glfw:get-gl-version)))

  (destructuring-bind (width height redbits greenbits bluebits) (glfw:get-desktop-mode) 
    (format t "Desktop mode: ~d x ~d x ~d~%" width height (+ redbits greenbits bluebits)))

  (format t "Available modes:~%")
  (loop for i from 0
     for mode in (glfw:get-video-modes 400)
     do (destructuring-bind (width height redbits greenbits bluebits) mode 
	  (format t "~3d: ~d x ~d x ~d~%" i width height (+ redbits greenbits bluebits)))))

