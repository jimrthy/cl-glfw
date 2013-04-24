(require '#:asdf)
(asdf:oos 'asdf:load-op '#:cl-glfw)
(asdf:oos 'asdf:load-op '#:cl-glfw-opengl-version_1_1)

;;; Basic system initialization
(cl-glfw:init)
;; Set up an OpenGL context
(cl-glfw:open-window :width 640 :height 480 :title "Information")

;; Unfortunately, that transfers control to cl-glfw's event loop.
;; So none of the rest of this works.

;;; Check different values
(cl-glfw:get-gl-version)
(cl-glfw:extension-supported "sun_triangle_list")
(cl-glfw:extension-supported "SUN_TRIANGLE_LIST")
(cl-glfw:extension-supported "EXT_ABGR")
(cl-glfw:extension-supported "EXT_BGRA")
(cl-glfw:extension-supported "EXT_BLEND_COLOR")

;; Clean up
(cl-glfw:close-window)
(cl-glfw:terminate)
