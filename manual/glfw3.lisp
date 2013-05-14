(in-package #:cl-glfw3)

(asdf:oos 'asdf:load-op :cffi)

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
#+nil(cffi:define-foreign-library *libglfw*
       (:unix (:or "libglfw.so.3" "libglfw.so"))
       (t (:default "libglfw3")))

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
;; Everything has to start with glfw-init
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
;; I want to be able to call that as:
;; (defparameter *window* (glfw-create-window 640 480 "Test" () ()))
;; That fails because nil is an invalid CCL:MACPTR.
;; Just checking:
;; (defparameter *window* (glfw-create-window 640 480 "Test" 0 0))
;; fails for the same reason. So...what are those "something*" parameters?
;; (defparameter *window* (glfw-create-window 640 480 "Test" (null-pointer) (null-pointer))) 
;; Works fine. So there.

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

;;; FIXME: There's a big chunk of functions dealing with the actual monitors,
;;; using those handles. Really should get those added.
			 
;;;; Callbacks
;;; Here's where things start getting interesting.
;;; Following along with the header, we get into things like error callbacks
;;; and the "main monitor."


;;; FIXME: At the very least, also want the size handler.

;; This looks as though it works. It hasn't actually been tested by causing
;; an error yet.
    "new-callback is a function that accepts an int error-code and const char* description.
The description string is only valid within the scope of the callback.
Returns the previous callback on success, NULL on failure.
Runs in the context of whichever thread caused the error."
(cffi:defcfun ("glfwSetErrorCallback" set-error-callback)
    :pointer
  (new-callback :pointer))
(cffi:defcallback default-error-handler :void ((error-code :int) (description :pointer :char))
  (format nil "Error Code ~A: ~A~%" error-code description))
;; I very much want to do this.
;; Unfortunately, it means trying to call glfwSetErrorCallback before the lib's
;; actually been loaded.
;;(defparameter *original-error-handler* (set-error-callback (callback default-error-handler)))
;;; At the very least, it should be dead simple to swap in more meaningful error handlers.
;;; It's something at least vaguely interesting to consider.

;; callback is a void (*GLFWwindowsizefun)(GLFWwindow*, int, int)
;; Parameters are the new size of the window, in screen coordinates.
;; Yet another candidate for an API wrapper.
(cffi:defcfun ("glfwSetWindowSizeCallback" glfw-set-window-size-callback-native)
    :pointer
  (window glfw-window)
  (callback :pointer))

;;; Still not useful for getting text.
;;; Basically an event-driven version of glfw-get-key.
;;; The .h has some useful info about what happens on loss of focus.
(cffi:defcfun ("glfwSetKeyCallback" set-key-callback)
    :pointer
  (window glfw-window)
  (callback :pointer))

;;; Used for actual text input.
;;; callback is a void (*fn)(GLFWwindow*, unsigned int code-point)
;;; Returns the previous callback, or NULL on error.
;;; Call w/ NULL to clear.
;;; This is where I definitely need to start thinking about the actual API.
;;; Or just steal whatever Bill already wrote.
;;; It seems probable that this really belongs in the section with the callback
;;; declarations
(cffi:defcfun ("glfwSetCharCallback" set-char-callback-native)
    :pointer
  (window glfw-window)
  (callback :pointer))

;;; The callback is a void (*GLFWmousebuttonfun)(GLFWwindow*, int, int)
;;; First int parameter: the button that changed state
;;; Second: GLFW_PRESS or GLFW_RELEASE
(cffi:defcfun ("glfwSetMouseButtonCallback" set-mouse-button-callback)
    :pointer
  (window glfw-window)
  (callback :pointer))

;;; void (*GLFWcursorposfun)(GLFWwindow*, double, double);
;;; The parameters are the new cursor coordinates, relative to the window's
;;; top left corner.
(cffi:defcfun ("glfwSetCursorPosCallback" set-cursor-pos-callback)
    :pointer
  (window glfw-window)
  (callback :pointer))

;;; void (*GLFWscrollfun)(GLFWwindow*, double, double)
;;; Parameters are the scroll offsets along the x- and y- axes (respectively).
;;; It's all about handling input from a mouse wheel or trackpad.
;;; Or any other scrolling device.
;;; Based on the description, it's tough to tell what the actual values mean.
(cffi:defcfun ("glfwSetScrollCallback" set-scroll-callback)
    :pointer
  (window glfw-window)
  (callback :pointer))

;; Sleeps until an event appears. Then processes all that are available
;; Only callable from main thread
;; Not from a callback.
;; Strongly related to poll-events, but it didn't strike me as anywhere near
;; as important.
(cffi:defcfun ("glfwWaitEvents" wait-events)
    :void)

;;;; Termination

;; Override user's attempt to close, or signal that a window should close
(cffi:defcfun ("glfwSetWindowShouldClose" set-window-should-close)
    :void
  (glfw-window glfw-window)
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
  "The companion to initialize. Don't use one without the other."
  (cffi:close-foreign-library *libglfw*))
