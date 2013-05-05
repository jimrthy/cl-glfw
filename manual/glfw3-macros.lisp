;;;; Macros defined for GLFW3.
;;;; It seems likely that many/most of these can/should be shared with
;;;; the original. Especially since I'm basically stealing all the ideas,
;;;; if not quite all of the implementations.

(in-package #:glfw3)

(defmacro with-open-window ((&rest open-window-keys)
			       &body forms)
  ;; Hmm...this wasn't intentionally anaphoric
  `(let ((hwnd (glfw3::open-window ,@open-window-keys)))
     (unwind-protect
	  (block with-open-window ,@forms)
       (destroy-window hwnd))))

(defmacro do-open-window ((&rest open-window-keys)
			     (&body setup-forms)
			  &body forms)
  "Wraps forms such that there is an open window for them to execute in
and cleans up the window afterwards. An error is signalled if there
was an error opening the window.
Takes the same parameters as open-window, with the addition of 'title'
which will set the window title after opening.
Wrapped in a block named glfw3:with-open-window."
  `(with-open-window (,@open-window-keys)
     ,@setup-forms
     (loop named do-open-window do
	  (progn
	    ,@forms
	    ;; Here's where this plan falls apart:
	    ;; swap-buffers takes a glfw-window parameter. Without that,
	    ;; this entire idea is pretty much dead in the water.
	    (glfw3:swap-buffers hwnd)
	    (glfw3:poll-events)
	    ;; FIXME: Really need a gentle signal to close.
	    (format t "Frame~%")
	    ))))

(defmacro do-window ((&rest open-window-keys)
			(&body setup-forms)
			   &body forms)
  "High-level convenience macro for opening a window (given the optional window
parameters), setting the title given, running setup-forms, and then running forms
in a loop, with calls to swap-buffers after each loop iteration.
The loop is in a block named do-window [so can be exited by a call 
to (return-from glfw3:do-window)].
If the window is closed, the loop is also exited."
  `(block do-window
     (do-open-window (,@open-window-keys) (,@setup-forms) ,@forms)))

(defmacro with-glfw (&body body)
  "I have my doubts about this. Since macros cause such weirdness.
The convenience might well be worth it for simpler situations."
  `(unwind-protect
	(progn
	  (initialize)
	  (glfw-init)
	  ,@body)
     (progn (terminate)
	    (clean-up))))

