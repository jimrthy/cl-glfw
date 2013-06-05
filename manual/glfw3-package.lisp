(defpackage #:cl-glfw3
  (:nicknames #:glfw3)
  ;; Calling this from slime can't find cl-glfw-macros. WTF?!
  (:use #:cl)
  (:export #:with-glfw-init #:do-window #:swap-buffers #:poll-events
	   #:set-error-callback #:glfw-init #:create-window *null*
	   #:make-context-current #:set-window-size-callback
	   #:window-should-close-p #:get-time #:destroy-window
	   #:clean-up #:define-callback-setter))
(defpackage #:cl-glfw-macros
  (:use #:cl)
  (:export #:defcfun+doc #:defcfun+out+doc))
