(defpackage #:cl-glfw3
  (:nicknames #:glfw3)
  (:use #:cl #:cffi #:alexandria)
  (:export #:with-glfw-init #:do-window #:swap-buffers #:poll-events))
