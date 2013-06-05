(in-package #:cl-glfw3)

(asdf:oos 'asdf:load-op :cffi)
;; Not needed:
;;(asdf:oos 'asdf:load-op :cl-glfw-macros)

;;; This seems to make playing nicely with libglfw.so.2 less promising.
#+ecl(ffi:load-foreign-library "glfw3" :system-library t)

(defparameter *libglfw* nil)
;; This just is not working...failing on :framework
#-ecl
(cffi:define-foreign-library *libglfw*
  (:darwin (:or "libglfw.dylib" (:framework "GLFW")))
  (:unix (:or "libglfw.so.3" "libglfw.so"))
  (:windows (:or "glfw.dll" "libglfw.dll")) 
  (t (:default "libglfw")))

;;; Overall library initialization:
;; Don't forget to call clean-up!
;; This is actually returning a foreign-library instance. What are the odds that
;; that's what I need to be cleaning up, rather than the named value?
#-ecl(cffi:use-foreign-library *libglfw*)

;;;; Type aliases

;; It very well might be using something like grovel to pick up more details.
;; Except that this is supposed to be a totally opaque type.
(cffi:defctype glfw-window :pointer)

;;; Booleans...this is more than a little lame
;;; FIXME: I know the original GLFW has a better way to handle these
;;; Along with all the other basic opengl types.
;;; I suppose the real question: is there any point?
(defun bool-c-to-lisp (value)
  (not (zerop value)))
(defun bool-lisp-to-c (value)
  (if value 1 0))
(cffi:defctype glfw-bool (:wrapper :int :from-c bool-c-to-lisp
				   :to-c bool-lisp-to-c))
;;; Examples:
;; (convert-to-foreign nil 'glfw-bool)
;; (convert-from-foreign 354 'glfw-bool)

;; Handles. The fact that they're implemented as pointers to
;; structs is totally irrelevant.
(cffi:defctype glfw-monitor :pointer)

;;; Constants
;;; Pulled in from #define's in the .H
;;; This seems like a bad way to handle these.

;; Key states
(defparameter *key-release* 0)
(defparameter *key-press* 1)
(defparameter *key-repeat* 2)

;; Cursor state
(defparameter *cursor-normal*   #x00040001)
(defparameter *cursor-hidden*   #x00040002)
(defparameter *cursor-captured* #x00040003)

;; Just because it's quite useful. Esp. when creating a basic window.
(defparameter *null* (cffi:null-pointer))

;;;; Vital!
;;;; This makes event processing happen.

;; Only callable from the main thread
;; Not callable from a callback
;; Processes events that have already been received, then returns immediately.
(cffi:defcfun ("glfwPollEvents" poll-events)
    :void)

;;;; Vital!
;;;; These pieces are important enough that I'm putting them at the top of
;;;; this file. It feels incorrect, since initialization should come first.
;;;; Worry about that later.

;;; Swaps front and back buffers
;;; In previous versions, this would also call poll-events
(cffi:defcfun ("glfwSwapBuffers" swap-buffers)
    :void
  (window glfw-window))

;;; Sign to exit the window's event loop.
(cffi:defcfun ("glfwWindowShouldClose" window-should-close-p)
    :int
  (window glfw-window))

;;;; Initialization

;; Basics:
;; Everything has to start with glfw-init...after the library itself is loaded, of course.
;; The return spec is wrong:
;; It's GL_TRUE on success, GL_FALSE on failure.
;; N.B.: *If* it succeeds, you *must* call gl-terminate.
;; If it fails, that happens automatically.
;; May only be called from the main thread.
(cffi:defcfun ("glfwInit" glfw-init) glfw-bool)

;; Resets all window hints to their default values
;; Only callable from main thread
(cffi:defcfun ("glfwDefaultWindowHints" default-window-hints)
    :void)

;; Used to tell the system how we want the window to look/act
;; Callable only from the main thread
(cffi:defcfun ("glfwWindowHint" window-hint)
    :void
  (target :int)
  (hint :int))

;; Lots of interesting stuff here!
(cffi:defcfun ("glfwSetInputMode" set-input-mode)
    :void
  (window glfw-window)
  (mode :int)
  (value :int))

;; Window Creation:
;; May only be called from the main thread.
(cffi:defcfun ("glfwCreateWindow" create-window)
    glfw-window
  (width :int)
  (height :int)
  (title :string) ; UTF-8
  (monitor glfw-monitor) ; Or NULL for windowed mode.
  ;; The window whose context to share resources with, or NULL
  ;; to be selfish.
  (shared-window glfw-window))
;; Call as:
;; (defparameter *window* (glfw-create-window 640 480 "Test" *null* *null))
;; e.g.
(defun open-window (&key (width 640) (height 480) (title "Untitled") (monitor (cffi:null-pointer)))
  (create-window width height title monitor (cffi:null-pointer)))

;; !!!!!!!!!!!!!!!
;; Make Current
;; Makes a window the "current context".
;; Window can only be current on a single thread at a time.
;; One thread can only have one current context.
;; Callable from secondary threads.
(cffi:defcfun ("glfwMakeContextCurrent" make-context-current)
    :void
  (window glfw-window))

;; Only callable from main thread.
;; title is actually a const char*...my test window isn't updating,
;; but that could be because I'm totally ignoring its events.
(cffi:defcfun ("glfwSetWindowTitle" set-window-title)
    :void
  (window glfw-window)
  (title :string))

;; Doesn't apply to full-screen windows.
;; To set an initial position:
;;  1) Create it hidden (w/ the GLFW_VISIBLE hint)
;;  2) Move it
;;  3) Show it.
;; Rarely a good idea to manually move an already visible window.
;; Only callable from the main thread
;; X11 note: some window managers ignore the set position of hidden windows
(cffi:defcfun ("glfwSetWindowPos" set-window-pos)
    :void
  (window glfw-window)
  (xpos :int)
  (ypos :int))

;; Sets the current value of time.
;; System continues to count up from there.
(cffi:defcfun ("glfwSetTime" set-time)
    :void
  (time :double))

;; The vsync: number of frames to wait between swapping buffers
;; and returning from swap-buffers.
;; Platforms that support either the WGL_EXT_swap_control_tear
;; or the GLX_EXT_swap_control_tear accept negative swap intervals.
;; Check with extension-supported (or use something like GLEW)
(cffi:defcfun ("glfwSwapInterval" swap-interval)
    :void
  (interval :int))

;;;; Information

;;; Version

;; "Official" Get Version method.
(cffi:defcfun ("glfwGetVersion" glfw-get-version-official)
    :void
  ;; These next parameters are actually int*.
  ;; Translating these back and forth is more than a little important.
  ;; FIXME: How is this currently handled?
  (major :pointer :int)
  (minor :pointer :int)
  (rev   :pointer :int))
(defun get-version ()
  "Returns a list of the major-minor-revision of the GLFW library in use.
Note that this is likely to be quite distinct from your OpenGL library."
  (cffi:with-foreign-object (array :int 3)
    (glfw-get-version-official array (cffi:inc-pointer array 1) (cffi:inc-pointer array 2))
    (list (cffi:mem-aref array :int) (cffi:mem-aref array :int 1) (cffi:mem-aref array :int 2))))

;; Debugging version
;; Returns a char[] that's been allocated by the compiler (i.e. no need to free)
;; Can be called from any thread, before glfw-init.
(cffi:defcfun ("glfwGetVersionString" get-version-string)
    :string)

;;; UI info

;; Returns the window whose context is current on the calling thread.
(cffi:defcfun ("glfwGetCurrentContext" get-current-context)
    glfw-window)

;; Extensions

;; The original cl-glfw went to a great deal of effort to try to do fancy
;; things with this to avoid dependencies. That seems like a great deal
;; of repeated effort that I simply do not have time for.
;; I'm including this because it's simple to wrap it here, but I don't
;; honestly expect people to spend a lot of time actually using it.
;;
;; Then again, cl-opengl also seems to have done a bit of punting in this
;; field...I need to do more research. 
;;
;; Returns GL_TRUE if an extension is supported, GL_FALSE if not.
;;
;; It's recommended to cache the results. They won't change over the course
;; of a context's lifetime.
;;
;; Callable from secondary threads.
(cffi:defcfun ("glfwExtensionSupported" extension-supported)
    :int
  (extension-name :string))

;; Returns a void (*GLFWglproc)()for the specified function.
;; It's all about client API and extenion functions supported by the current context.
;; Returns NULL if the function isn't available
;; Callable from secondary threads
;;
;; N.B. Not guaranteed to be the same for all contexts!
;; Especialy if they use different client APIs or context creation hints.
(cffi:defcfun ("glfwGetProcAddress" get-proc-address)
    :pointer
  (proc-name :string))

;; Window Position
(cffi:defcfun ("glfwGetWindowPos" glfw-get-window-pos-native)
    :void
  (window glfw-window)
  (xpos :pointer :int)
  (ypos :pointer :int))

(defun get-window-pos (window)
  "Returns a list of the window's client area's upper-left screen coordinates.
OSX note: screen coordinate system is inverted."
  (cffi:with-foreign-object (array :int 2)
    (glfw-get-window-pos-native window array (cffi:inc-pointer array 1))
    (list (cffi:mem-aref array :int) (cffi:mem-aref array :int 1))))

;;; This next function takes several interesting parameters.
;;; It seems arguably worth breaking it into multiple functions
;;; that are each more explicit about what information they're
;;; actually retrieving.
(defparameter *opened* :undefined) ; really deserves a better name.
(cffi:defcfun ("glfwGetWindowParam" glfw-get-window-param-native)
    :int
  (window glfw-window)
  (param :int))

;;; Lots of useful options here!

;; Q: Are these next 3 enums, or what?
;; A: They're preprocessor #defines.
;; This isn't what I'd call a good solution, but it seems as
;; good as any, at the moment.
(defparameter *glfw-cursor-mode*  #x00030001)
(defparameter *glfw-sticky-keys*  #x00030002)
(defparameter *glfw-sticky-mouse* #x00030003)
;;; This seems like another that's probably worth breaking into
;;; several explicit functions
(cffi:defcfun ("glfwGetInputMode" glfw-get-input-mode-native)
    :int
  (window glfw-window)
  (mode :int))
;; FIXME: See the documentation!
(defun get-cursor-mode (window)
  (glfw-get-input-mode-native window *glfw-cursor-mode*))
(defun get-sticky-keys (window)
  (glfw-get-input-mode-native window *glfw-sticky-keys*))
(defun get-sticky-mouse (window)
  (glfw-get-input-mode-native window *glfw-sticky-mouse*))

(cffi:defcfun ("glfwSetInputMode" glfw-set-input-mode-native)
    :void
  (window glfw-window)
  (mode :int)
  (value :int))
(defun set-cursor-mode (window value)
  "Value must be one of GLFW_CURSOR_NORMAL, GLFW_CURSOR_HIDDEN, or GLFW_CURSOR_CAPTURED"
  (glfw-set-input-mode-native window *glfw-cursor-mode* value))
(defun set-sticky-keys (window sticky-p)
  (glfw-set-input-mode-native window *glfw-sticky-keys* sticky-p))
(defun set-sticky-mouse (window sticky-p)
  (glfw-set-input-mode-native window *glfw-sticky-mouse* sticky-p))

;;; Returns GLFW_PRESS or GLFW_RELEASE.
;;; Details depend on *glfw-sticky-keys*
;;; Used for key state. Don't try to use for inputting text.
;;; There's a callback for that instead.
(cffi:defcfun ("glfwGetKey" get-key)
    :int
  (window glfw-window)
  (key-code :int))

;;; Returns GLFW_PRESS or GLFW_RELEASE.
;;; Details depend on *glfw-sticky-mouse*
(cffi:defcfun ("glfwGetMouseButton" get-mouse-button)
    :int
  (window glfw-window)
  (button :int))

(cffi:defcfun ("glfwGetCursorPos" glfw-get-cursor-pos-native)
    :void
  (window glfw-window)
  (xpos :pointer :double)
  (ypos :pointer :double))

(defun get-cursor-pos (window)
  (cffi:with-foreign-object (array :double 2)
    (glfw-get-cursor-pos-native window array (cffi:inc-pointer array 1))
    (list (cffi:mem-aref array :double) (cffi:mem-aref array :double 1))))

(cffi:defcfun ("glfwSetCursorPos" set-cursor-pos)
    :void
  (window glfw-window)
  (xpos :double)
  (ypos :double))

;; What time is it?
;; Returns the value of the timer.
;; Unless it's been overridden by glfw-set-time, that's the elapsed
;; time since GLFW was initialized.
;; Return value is in seconds.
;; Resolution is system-dependent. But it's usually on the order of
;; micro- or nanoseconds.
;; May be called from secondary threads
(cffi:defcfun ("glfwGetTime" get-time)
    :double)

;;;; Monitor information

;;; Q: Do I have any reason to define the GLFWmonitor struct?
;;; A: I can't see one.

;; Returns an array of handles for all currently connected monitors.
;; Only valid until the monitor configuration changes
;; Returns NULL on error
(cffi:defcfun ("glfwGetMonitors" glfw-get-monitors-native)
    glfw-monitor  ; really an array
    (count :pointer :int))
;; This returns a pair of monitor* on my system, which seems totally correct.
;; No idea whether they're valid or meaningful.
(defun get-monitors ()
  "Get a list of monitor handles.
Useful for the monitor-querying functions that I haven't translated yet."
  (let ((count (cffi:foreign-alloc :int)))
    (unwind-protect 
	 (let ((monitors (glfw-get-monitors-native count))
	       (result ()))
	   (dotimes (i (cffi:mem-ref count :int))
	     (push (cffi:mem-aref monitors 'glfw-monitor i) result))
	   result)
      (cffi:foreign-free count))))

(cffi:defcfun ("glfwGetPrimaryMonitor" get-primary-monitor)
    glfw-monitor)

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; FIXME: There's a big chunk of functions dealing with the actual monitors,
;;; using those handles. Really should get those added.
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
			 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;; Callbacks
;;; Here's where things start getting interesting.

#| (defmacro -set-callback (callback internal-setter-name special-name callback-name)
  "Refactor common pieces from the callback setters below.
Q: How much of this could actually happen in some sort of a function?
A: Not much, really.
Q: How about thinking of hygiene?"
  (cl:cond
    ((null callback)
     (,internal-setter-name (cffi:null-pointer)))
    ((symbolp callback)
     (setf ,special-name callback)
     (,internal-setter-name (cffi:callback ,callback-name)))
    ((functionp callback)
     (setf ,special-name callback)
     (,internal-setter-name (cffi:callback ,callback-name)))
    ((cffi:pointerp callback)
     (,internal-setter-name callback))
    (t (error "Not an acceptable callback. Must be foreign pointer, function object, function's symbol, or nil.")))
) |#

;;; Breaking change from 2 to 3.
;;; Error and monitor callbacks are universal: they apply to everything.
;;; So far, all the other callbacks are specific to individual windows.

#| (defmacro define-global-callback-setter (c-name callback-prefix return-type (&body args) &key before-form after-form documentation)
  "Define a universal callback.
Currently only legal for the error and monitor callbacks."
  (let* ((callback-name (intern (format nil "~A-CALLBACK" callback-prefix)))
         (special-name (intern (format nil "*~S*" callback-name)))
         (setter-name (intern (format nil "SET-~S" callback-name)))
         (internal-setter-name (intern (format nil "%~S" setter-name))))
    `(progn
       (defparameter ,special-name nil)
       (cffi:defcallback ,callback-name ,return-type ,args
         (when ,special-name
           (prog2
               ,before-form
               (funcall ,special-name ,@(mapcar #'car args))
             ,after-form)))
       (cffi:defcfun (,c-name ,internal-setter-name) :void (cbfun :pointer))
       (defun ,setter-name (callback)
         ,(format nil "GENERAL CL-GLFW CALLBACK NOTES

All callback setting functions can take either a pointer to a C function,
a function object, a function symbol, or nil to clear the callback function.

The kicker is that this is very dependent on the actual window.
Except...not here. This is about global stuff.

THIS CALLBACK FUNCTION

~a" documentation)
  (cl:cond
    ((null callback)
     (,internal-setter-name (cffi:null-pointer)))
    ((symbolp callback)
     (setf ,special-name callback)
     (,internal-setter-name (cffi:callback ,callback-name)))
    ((functionp callback)
     (setf ,special-name callback)
     (,internal-setter-name (cffi:callback ,callback-name)))
    ((cffi:pointerp callback)
     (,internal-setter-name callback))
    (t (error "Not an acceptable callback. Must be foreign pointer, function object, function's symbol, or nil.")))
  )))) |#

;; This is more than a little ugly...don't want window handles polluting the package.
#| (defmacro define-callback-setter (c-name callback-prefix return-type (&body args) &key before-form after-form documentation)
  "Define a callback for a specific window."
  (let* ((callback-name (intern (format nil "~A-CALLBACK" callback-prefix)))
         (special-name (intern (format nil "*~S*" callback-name)))
         (setter-name (intern (format nil "SET-~S" callback-name)))
         (internal-setter-name (intern (format nil "%~S" setter-name))))
    `(progn
       (defparameter ,special-name nil)
       (cffi:defcallback ,callback-name ,return-type ,args
         (when ,special-name
           (prog2 
               ,before-form
	       ;; I'm iffy about when ,special-name might not be nil.
	       ;; It seems obvious that defcallback must assign it.
	       ;; Except that it very explicitly does not.
	       (funcall ,special-name window ,@(mapcar #'car args))
	       ;;(funcall ,special-name ,@(mapcar #'car args))
             ,after-form)))
       (cffi:defcfun (,c-name ,internal-setter-name) :void ((handle glfw-window) (cbfun :pointer)))

       ;; And then the truly interesting part.
       ;; This is really a horrible hygenic FAIL because it captures both window and callback.
       (defun ,setter-name (window callback)
         ,(format nil "GENERAL CL-GLFW CALLBACK NOTES

All callback setting functions can take either a pointer to a C function,
a function object, a function symbol, or nil to clear the callback function.

THIS CALLBACK FUNCTION

~a" documentation)
  (cl:cond
    ((null callback)
     (,internal-setter-name window *null*))
    ((symbolp callback)
     (setf ,special-name callback) ; FAIL!!!
     (,internal-setter-name window (cffi:callback ,callback-name)))
    ((functionp callback)
     (setf ,special-name callback) ; FAIL!!!
     (,internal-setter-name window (cffi:callback ,callback-name)))
    ((cffi:pointerp callback)
     (,internal-setter-name window callback))
    (t (error "Not an acceptable callback. Must be foreign pointer, function object, function's symbol, or nil.")))
)))) |#

#| (define-callback-setter "glfwSetWindowCloseCallback" #:window-close :int ((handle glfw-window)) 
                        :documentation
                        "
") |#

(cl-glfw-macros:defcfun+doc ("glfwSetWindowCloseCallback" set-window-close-callback) :int ((handle glfw-window))
			    "
Function that will be called when a user requests that the window should be
closed, typically by clicking the window close icon (e.g. the cross in the upper right corner of a
window under Microsoft Windows). The function should have the following type:
 (function (window) integer)

The return value of the callback function indicates whether or not the window close action 
should continue. If the function returns
gl:+true+, the window will be closed. If the function returns gl:+false+, the window will not
be closed. If you give a CFFI callback returning glfw:boolean, you can use t and nil as return types.

Notes
Window close events are recorded continuously, but only reported when glfwPollEvents or
glfwWaitEvents is called.
The OpenGL context is still valid when this function is called.
Note that the window close callback function is not called when glfwCloseWindow is called, but only
when the close request comes from the window manager.
Do not call glfwCloseWindow from a window close callback function. Close the window by returning
gl:+true+ from the function.
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Error Callback Setter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

#| (define-callback-setter "glfwSetErrorCallback" #:error
  :void
  ((error-code :int) (description :string))
  :documentation
  "
") |#

(cl-glfw-macros:defcfun+doc ("glfwSetErrorCallback" set-error-callback)
    :void
  ((error-code :int) (description :string))
  "
The description string is only valid within the scope of the callback.
Returns the previous callback on success, NULL on failure.
Runs in the context of whichever thread caused the error.
")

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Window Size Callback Setter
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
(cl-glfw-macros:defcfun+doc ("glfwSetWindowSizeCallback" set-window-size-callback)
    :int
  ((handle glfw-window) (width :int) (height :int))
  "
Function that will be called every time the window size changes. The
function should takes the arguments (width height) giving the new width and height of the window client area.

A window has to be opened for this function to have any effect.
Notes
Window size changes are recorded continuously, but only reported when glfwPollEvents,
glfwWaitEvents or glfwSwapBuffers is called.
")
#| (define-callback-setter "glfwSetWindowSizeCallback" #:window-size 
  :void
  ((window glfw-window) (width :int) (height :int))
  :documentation
  "
") |#

;; Keyboard key definitions: 8-bit ISO-8859-1 (Latin 1) encoding is used
;; for printable keys (such as A-Z, 0-9 etc), and values above 256
;; represent special (non-printable) keys (e.g. F1, Page Up etc).
;; Stolen from the original, except that I'm avoiding defconstant.
;; Considering the fact that the "constants" have changed, that seems
;; wise.
;; Another factor to consider: these pollute the package namespace, and really shouldn't.
(defparameter *key-unknown* -1)
(defparameter *key-space* 32)
(defparameter *key-special* 256)
(defparameter *key-esc*(+ *key-special* 0))
(defparameter *key-enter* (+ *key-special* 1))
(defparameter *key-tab* (+ *key-special* 2))
(defparameter *key-backspace* (+ *key-special* 3))
(defparameter *key-insert* (+ *key-special* 4))
(defparameter *key-del* (+ *key-special* 5))
(defparameter *key-right* (+ *key-special* 6))
(defparameter *key-left* (+ *key-special* 7))
(defparameter *key-down* (+ *key-special* 8))
(defparameter *key-up* (+ *key-special* 9))
(defparameter *key-pageup* (+ *key-special* 10))
(defparameter *key-pagedown* (+ *key-special* 11))
(defparameter *key-home* (+ *key-special* 12))
(defparameter *key-end* (+ *key-special* 13))
(defparameter *key-caps-lock* (+ *key-special* 24))
(defparameter *key-scroll-lock* (+ *key-special* 25))
(defparameter *key-kp-num-lock* (+ *key-special* 26))
(defparameter *key-print-screen* (+ *key-special* 27))
(defparameter *key-pause* (+ *key-special* 28))
(defparameter *key-f1* (+ *key-special* 34))
(defparameter *key-f2* (+ *key-special* 35))
(defparameter *key-f3* (+ *key-special* 36))
(defparameter *key-f4* (+ *key-special* 37))
(defparameter *key-f5* (+ *key-special* 38))
(defparameter *key-f6* (+ *key-special* 39))
(defparameter *key-f7* (+ *key-special* 40))
(defparameter *key-f8* (+ *key-special* 41))
(defparameter *key-f9* (+ *key-special* 42))
(defparameter *key-f10* (+ *key-special* 43))
(defparameter *key-f11* (+ *key-special* 44))
(defparameter *key-f12* (+ *key-special* 45))
(defparameter *key-f13* (+ *key-special* 46))
(defparameter *key-f14* (+ *key-special* 47))
(defparameter *key-f15* (+ *key-special* 48))
(defparameter *key-f16* (+ *key-special* 49))
(defparameter *key-f17* (+ *key-special* 50))
(defparameter *key-f18* (+ *key-special* 51))
(defparameter *key-f19* (+ *key-special* 52))
(defparameter *key-f20* (+ *key-special* 53))
(defparameter *key-f21* (+ *key-special* 54))
(defparameter *key-f22* (+ *key-special* 55))
(defparameter *key-f23* (+ *key-special* 56))
(defparameter *key-f24* (+ *key-special* 57))
(defparameter *key-f25* (+ *key-special* 58))
(defparameter *key-kp-0* (+ *key-special* 64))
(defparameter *key-kp-1* (+ *key-special* 65))
(defparameter *key-kp-2* (+ *key-special* 66))
(defparameter *key-kp-3* (+ *key-special* 67))
(defparameter *key-kp-4* (+ *key-special* 68))
(defparameter *key-kp-5* (+ *key-special* 69))
(defparameter *key-kp-6* (+ *key-special* 70))
(defparameter *key-kp-7* (+ *key-special* 71))
(defparameter *key-kp-8* (+ *key-special* 72))
(defparameter *key-kp-9* (+ *key-special* 73))
(defparameter *key-kp-decimal* (+ *key-special* 74))
(defparameter *key-kp-divide* (+ *key-special* 75))
(defparameter *key-kp-multiply* (+ *key-special* 76))
(defparameter *key-kp-subtract* (+ *key-special* 77))
(defparameter *key-kp-add* (+ *key-special* 78))
(defparameter *key-kp-enter* (+ *key-special* 79))
(defparameter *key-kp-equal* (+ *key-special* 80))
(defparameter *key-lshift* (+ *key-special* 84))
(defparameter *key-lctrl* (+ *key-special* 85))
(defparameter *key-lalt* (+ *key-special* 86))
(defparameter *key-lsuper* (+ *key-special* 87))
(defparameter *key-rshift* (+ *key-special* 88))
(defparameter *key-rctrl* (+ *key-special* 89))
(defparameter *key-ralt* (+ *key-special* 90))
(defparameter *key-rsuper* (+ *key-special* 91))
(defparameter *key-menu* (+ *key-special* 92))
(defparameter *key-last* *key-menu*)

;; Cheesy cowboy-coding at its finest.
;; This next is a prime example of why I want to use lisp instead of the
;; alternatives. It's just that the alternatives seems more obvious this
;; evening.
;; I really shouldn't be repeating myself so much.
;; What's really obnoxious is that part of me wants to do this both
;; forward and backwards so I can quickly and easily go both ways.
(defparameter *key-map* (make-hash-table))
(mapc (lambda (key value)
	(setf (gethash key *key-map*) value))
      (list *key-unknown* *key-space* *key-special* *key-esc* *key-enter* *key-tab*
	    *key-backspace* *key-insert* *key-del* *key-right* *key-left* *key-down*
	    *key-up* *key-pageup* *key-pagedown* *key-home* *key-end* *key-caps-lock*
	    *key-scroll-lock* *key-kp-num-lock* *key-print-screen* *key-pause*
	    *key-f1* *key-f2* *key-f3* *key-f4* *key-f5* *key-f6* *key-f7* *key-f8* *key-f9*
	    *key-f10* *key-f11* *key-f12* *key-f13* *key-f14* *key-f15* *key-f16*
	    *key-f17* *key-f18* *key-f19*
	    *key-f20* *key-f21* *key-f22* *key-f23* *key-f24* *key-f25*
	    *key-kp-0* *key-kp-1* *key-kp-2* *key-kp-3* *key-kp-4* *key-kp-5* *key-kp-6* 
	    *key-kp-7* *key-kp-8* *key-kp-9*
	    *key-kp-decimal* *key-kp-divide* *key-kp-multiply* *key-kp-subtract* *key-kp-add*
	    *key-kp-enter* *key-kp-equal* *key-lshift* *key-lctrl* *key-lalt* *key-lsuper*
	    *key-rshift* *key-rctrl* *key-ralt* *key-rsuper* *key-menu*)
      (list '*key-unknown* '*key-space* '*key-special* '*key-esc* '*key-enter* '*key-tab*
	    '*key-backspace* '*key-insert* '*key-del* '*key-right* '*key-left* '*key-down*
	    '*key-up* '*key-pageup* '*key-pagedown* '*key-home* '*key-end* '*key-caps-lock*
	    '*key-scroll-lock* '*key-kp-num-lock* '*key-print-screen* '*key-pause*
	    '*key-f1* '*key-f2* '*key-f3* '*key-f4* '*key-f5* '*key-f6* '*key-f7* '*key-f8* '*key-f9* 
	    '*key-f10* '*key-f11* '*key-f12* '*key-f13* '*key-f14* '*key-f15* '*key-f16*
	    '*key-f17* '*key-f18* '*key-f19* 
	    '*key-f20* '*key-f21* '*key-f22* '*key-f23* '*key-f24* '*key-f25*
	    '*key-kp-0* '*key-kp-1* '*key-kp-2* '*key-kp-3* '*key-kp-4* '*key-kp-5* '*key-kp-6* 
	    '*key-kp-7* '*key-kp-8* '*key-kp-9*
	    '*key-kp-decimal* '*key-kp-divide* '*key-kp-multiply* '*key-kp-subtract* '*key-kp-add*
	    '*key-kp-enter* '*key-kp-equal* '*key-lshift* '*key-lctrl* '*key-lalt* '*key-lsuper*
	    '*key-rshift* '*key-rctrl* '*key-ralt* '*key-rsuper* '*key-menu*))

(defun key-map->string ()
  ;; maphash always returns nil:
  ;; need to format out to a string
  (with-output-to-string (s)
    (maphash (lambda (k v) 
	       (format s "~S : ~S~%" k v)) 
	     *key-map*)
    s))

;; The following special keys are not defined at compile-time.
;; Using them in a macro is dubious, at best.
#| (defmacro key-int-to-symbol (key-form)
  `(case ,key-form
     ,@(sort
        (loop for special-key in  '("backspace" "del" "down" "end" "enter" "esc" "f1" "f10" "f11" "f12" "f13"
                                    "f14" "f15" "f16" "f17" "f18" "f19" "f2" "f20" "f21" "f22" "f23" "f24" "f25"
                                    "f3" "f4" "f5" "f6" "f7" "f8" "f9" "home" "insert" "kp-0" "kp-1" "kp-2" "kp-3"
                                    "kp-4" "kp-5" "kp-6" "kp-7" "kp-8" "kp-9" "kp-add" "kp-decimal" "kp-divide"
                                    "kp-enter" "kp-equal" "kp-multiply" "kp-subtract" "lalt" "lctrl" "left"
                                    "lshift" "pagedown" "pageup" "ralt" "rctrl" "right" "rshift" "print-screen"
                                    "tab" "unknown" "up"
				    "kp-num-lock" "caps-lock" "scroll-lock" "pause" "lsuper" "rsuper" "menu")
           collect
           `(,(symbol-value (find-symbol (string-upcase (format nil "*key-~a*" special-key)) (find-package '#:glfw3)))
              ,(intern (string-upcase special-key) (find-package '#:keyword))))
        #'(lambda (a b) (< (car a) (car b))))))
|#

(defun key-int-to-symbol (key-code)
  ;; Original version was a macro that created a map of special keys (?) and used their values as maps
  ;; to the closest constant symbol value.
  ;; Go with the assumption that a lot of premature optimization was happening (though that feels
  ;; dangerous).
  (gethash key-code *key-map*))

(defun lispify-key (key-int)
  "Convert key-int from GLFW's integer representation to lisp characters
if from 0 to 255, or keywords, if not within 0-255 inclusive."
  (if (and (>= key-int 0) (< key-int 256))
      (code-char key-int)
      (key-int-to-symbol key-int)))

;;; Still not useful for getting text.
;;; Basically an event-driven version of glfw-get-key.
;;; The .h has some useful info about what happens on loss of focus.
(cl-glfw-macros:defcfun+doc ("glfwSetKeyCalback" set-key-callback)
    :void
  ((window glfw-window) (key :int) (action :int))
  "And this fails because I have no real way to specify a before-form")
#| (define-callback-setter "glfwSetKeyCallback" #:key :void ((window glfw-window) (key :int) (action :int))
                        :before-form (setf key (lispify-key key))
                        :documentation
                        "
Function that will be called every time a key is pressed or released.
Function should take the arguments (key action), where key is either a character,
if the key pressed was a member of iso-8859-1, or a keyword representing the key pressed if not.
See the GLFW manual, table 3.3 for special key identifiers. Action is either glfw:+press+ or
glfw:+release+. Use set-char-callback instead if you want to read just characters.

Description
The function selects which function to be called upon a keyboard key event. The callback function is
called every time the state of a single key is changed (from released to pressed or vice versa). The
reported keys are unaffected by any modifiers (such as shift or alt).
A window has to be opened for this function to have any effect.

Notes
Keyboard events are recorded continuously, but only reported when glfw::PollEvents, glfw::WaitEvents
or glfw::SwapBuffers is called.
") |#

(cl-glfw-macros:defcfun+doc ("glfwSetCharCallback" set-char-callback)
    :void
  ((window glfw-window)
   (character :int)
   (action :int))
  "Another failure because my current approach lacks before semantics")
#|(define-callback-setter "glfwSetCharCallback" #:char :void ((window glfw-window) (character :int) (action :int))
                        :before-form (setf character (code-char character))
                        :documentation
                        "
Function that will be called every time a printable character is generated by
the keyboard. The function should take the arguments (character action)
where character is a lisp character and action is either glfw:+press+ or glfw:+release+.

NB this makes the presumption that your lisp implementation will use Unicode for code-char.

Description
The function selects which function to be called upon a keyboard character event. The callback function
is called every time a key that results in a printable Unicode character is pressed or released. Characters
are affected by modifiers (such as shift or alt).
A window has to be opened for this function to have any effect.

Notes
Character events are recorded continuously, but only reported when glfw::PollEvents, glfw::WaitEvents
or glfw::SwapBuffers is called.
Control characters, such as tab and carriage return, are not reported to the character callback function,
since they are not part of the Unicode character set. Use the key callback function for such events (see
glfw::SetKeyCallback).
The Unicode character set supports character codes above 255, so never cast a Unicode character to an
eight bit data type (e.g. the C language char type) without first checking that the character code is less
than 256. Also note that Unicode character codes 0 to 255 are equal to ISO 8859-1 (Latin 1).
") |#

;;; Required for the current incarnation of lispify-mouse-button.
;;; I don't particularly like this approach, but nothing better
;;; really springs to mind.
;;; These are the #defines used in glfw.h
(defparameter *mouse-button-left* 0)
(defparameter *mouse-button-middle* 1)
(defparameter *mouse-button-right* 2)
(defparameter *mouse-button-4* 3)
(defparameter *mouse-button-5* 4)
(defparameter *mouse-button-6* 5)
(defparameter *mouse-button-7* 6)
(defparameter *mouse-button-8* 7)
;; This alternative, then filling it, springs to mind.
;; Does it gain me anything?
(defparameter *mouse-buttons* (make-hash-table))
(defun lispify-mouse-button (button-int)
  "Convert button-int from GLFW's integer representation to a lisp keyword."
  (case button-int
    (*mouse-button-left* :left)
    (*mouse-button-middle* :middle)
    (*mouse-button-right* :right)
    (*mouse-button-4* :button-4)
    (*mouse-button-5* :button-5)
    (*mouse-button-6* :button-6)
    (*mouse-button-7* :button-7)
    (*mouse-button-8* :button-8)))

(cl-glfw-macros:defcfun+doc ("glfwSetMouseButtonCallback" set-mouse-button-callback)
    :void
  ((window glfw-window) (button :int) (action :int))
  "Yet again: before action is mandatory")
#| (define-callback-setter "glfwSetMouseButtonCallback" #:mouse-button :void ((window glfw-window) (button :int) (action :int))
                        :before-form (setf button (lispify-mouse-button button))
                        :documentation
                        "
Function that will be called every time a mouse button is pressed or released.
The function takes the arguments (button action), where button is a keyword symbol as returned by
lispify-mouse-button and action is either glfw:+press+ or glfw:+release+.

Description
The function selects which function to be called upon a mouse button event.
A window has to be opened for this function to have any effect.

Notes
Mouse button events are recorded continuously, but only reported when glfw::PollEvents,
glfw::WaitEvents or glfw::SwapBuffers is called.
+MOUSE_BUTTON_LEFT+ is equal to +MOUSE_BUTTON_1+
+MOUSE_BUTTON_RIGHT+ is equal to +MOUSE_BUTTON_2+
+MOUSE_BUTTON_MIDDLE+ is equal to +MOUSE_BUTTON_3+
") |#

(cl-glfw-macros:defcfun+doc ("glfwSetMousePosCallback" set-mouse-pos-callback)
    :void
  ((window glfw-window) (x :int) (y :int))
  "This one should work")
#| (define-callback-setter "glfwSetMousePosCallback" #:mouse-pos :void ((window glfw-window) (x :int) (y :int))
                        :documentation
                        "
Function that will be called every time the mouse is moved.
The function takes the arguments (x y), where x and y are the current position of the mouse.

Description
The function selects which function to be called upon a mouse motion event.
A window has to be opened for this function to have any effect.

Notes
Mouse motion events are recorded continuously, but only reported when glfw::PollEvents
or glfw::WaitEvents is called.
") |#

(cl-glfw-macros:defcfun+doc ("glfwSetMouseWheel" set-mouse-wheel) :void ((pos :int))
	     "Parameters
pos
     Position of the mouse wheel.
Description
The function changes the position of the mouse wheel.
")

(defparameter *mouse-wheel-cumulative* nil)
(cl-glfw-macros:defcfun+doc ("glfwSetMouseWheelCallback" set-mouse-wheel-callback)
    :void
  ((window glfw-window) (pos :int))
  "This fails because the original requires an :after method")
#|(define-callback-setter "glfwSetMouseWheelCallback" #:mouse-wheel :void ((window glfw-window) (pos :int))
                        :after-form (unless *mouse-wheel-cumulative* (glfw3::set-mouse-wheel 0))
                        :documentation
                        "
Function that will be called every time the mouse wheel is moved.
The function takes one argument: the position of the mouse wheel.
This DIFFERS FROM GLFW's DEFAULT behaviour in that the position is
reset after every call to this function, effectively giving the delta.
As most programs are only interested in the delta anyway, this is thought
to save others recording the state of it again.
If you wish to have the original GLFW behaviour, set cl-glfw3::*mouse-wheel-cumulative* to t.

Description
The function selects which function to be called upon a mouse wheel event.
A window has to be opened for this function to have any effect.
Notes
Mouse wheel events are recorded continuously, but only reported when glfw::PollEvents,
glfw::WaitEvents or glfw::SwapBuffers is called.
") |#

(cl-glfw-macros:defcfun+doc ("glfwGetJoystickParam" get-joystick-param) :int ((window glfw-window) (joy :int) (param :int))
	     "Parameters
joy
      A joystick identifier, which should be +JOYSTICK_n+ where n is in the range 1 to 16.
param
      A token selecting which parameter the function should return (see table 3.5).
Return values
The function returns different parameters depending on the value of param. Table 3.5 lists valid param
values, and their corresponding return values.
Description
The function is used for acquiring various properties of a joystick.
Notes
The joystick information is updated every time the function is called.
No window has to be opened for joystick information to be valid.
")

;; Sleeps until an event appears. Then processes all that are available
;; Only callable from main thread
;; Not from a callback.
;; Strongly related to poll-events.
(cffi:defcfun ("glfwWaitEvents" wait-events)
    :void)

;;;; Termination

;; Override user's attempt to close, or signal that a window should close
(cffi:defcfun ("glfwSetWindowShouldClose" set-window-should-close)
    :void
  (window glfw-window)
  (flag :int))

;; Only callable from the main thread
;; Cannot be called from a callback
;; If the context is current on the main thread, it is detached before destruction.
;; Context must *not* be current on any other thread.
(cffi:defcfun ("glfwDestroyWindow" destroy-window)
    :void
  (window glfw-window))


;; Closes all threads.
;; Releases all resources.
;; Returns everything to an uninitialized/undefined state.
;; Must re-call (glfw-init) to start using glfw again.
;; May only be called from the main thread.
;; No window's context may be current on another thread when this one is called!
(cffi:defcfun ("glfwTerminate" terminate) :void)

(defun clean-up ()
  "The companion to initialize. Don't use one without the other.
This probably doesn't play very nicely with ecl"
  (if *libglfw*
      (progn
	(cffi:close-foreign-library *libglfw*)
	(setf *libglfw* nil))
      (format t "Calling clean-up before library initialization")))
