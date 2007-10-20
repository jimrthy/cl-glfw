(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)


(defun main ()
  (unless (eql gl:+true+ (glfw:open-window 640 480 0 0 0 0  0 0 glfw:+window+))
    (return-from main))

  (glfw:enable glfw:+sticky-keys+)
  (glfw:swap-interval 0)

  (unless (eql gl:+true+
	       (glfw:load-texture-2d (namestring (merge-pathnames "mipmaps.tga" (or *load-pathname* #P"examples/")))
				     glfw:+build-mipmaps-bit+))
    (return-from main))  

  (gl:tex-parameter-i gl:+texture-2d+ gl:+texture-min-filter+ gl:+linear-mipmap-linear+)
  (gl:tex-parameter-i gl:+texture-2d+ gl:+texture-mag-filter+ gl:+linear+)

  (gl:enable gl:+texture-2d+)

  (do ((running t (and (zerop (glfw:get-key glfw:+key-esc+))
		       (not (zerop (glfw:get-window-param glfw:+opened+)))))
       (frames 0)
       (t0 (glfw:get-time))
       (t1 (glfw:get-time) (glfw:get-time))) 
   ((not running))

    (when (or (> (- t1 t0) 1.0) 
	      (= frames 0))
      (glfw:set-window-title (format nil "Spinning Triangle (~,1f FPS)" (/ frames (- t1 t0))))
      (setf frames 0)
      (setf t0 t1))

    (incf frames)

    (gl:clear-color 0.0 0.0 0.0 0.0)
    (gl:clear gl:+color-buffer-bit+)

    (destructuring-bind (width height) (glfw:get-window-size)
      (setf height (max height 1))
      (gl:viewport 0 0 width height)

      (gl:matrix-mode gl:+projection+)
      (gl:load-identity)
      (glu:perspective 65.0d0 (coerce (/ width height) 'double-float) 1.0d0 50.0d0)
      (gl:matrix-mode gl:+modelview+)
      (gl:load-identity)
      (glu:look-at 0.0d0  3.0d0 -20.0d0
		   0.0d0 -4.0d0 -11.0d0
		   0.0d0  1.0d0   0.0d0))
      
    (destructuring-bind (x y) (glfw:get-mouse-pos)
      (declare (ignore y))
      (gl:rotate-f (coerce (+ (* x 0.05)
			      (* t1 5.0))
			   'single-float)
		   0.0 1.0 0.0))

    (gl:begin gl:+quads+)
    (gl:tex-coord-2f -20.0  20.0) (gl:vertex-3f -50.0 0.0 -50.0)
    (gl:tex-coord-2f  20.0  20.0) (gl:vertex-3f  50.0 0.0 -50.0)
    (gl:tex-coord-2f  20.0 -20.0) (gl:vertex-3f  50.0 0.0  50.0)
    (gl:tex-coord-2f -20.0 -20.0) (gl:vertex-3f -50.0 0.0  50.0)
    (gl:end)
    (glfw:swap-buffers)))

(glfw:init)
(main)
(glfw:terminate)