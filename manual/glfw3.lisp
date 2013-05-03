(in-package #:cl-glfw3)

;; This next function seems to destroy my dreams of multi-level
;; compatibility. It obviously doesn't, but it looks horribly
;; dubious.
;; The fact that the way the GNU library conventions interact
;; with linux package managers sort of screws this plan over
;; leaves me less than optimistic.
;; (I don't see gentoo's portage and revdep-rebuild playing nicely
;; with quicklisp anytime in the near future. Don't get me
;; started on Debian...)
(define-foreign-library libglfw
  (:unix (:or "libglfw.so.3" "libglfw.so"))
  (t (:default "libglfw")))

(use-foreign-library libglfw)
;; N.B.:
;; Do not forget to (close-foreign-library libglfw)!!

;; It very well might be using something like grovel to pick up more details.
(defctype glfw-window :pointer)

;;; Booleans...this is more than a little lame
;;; FIXME: I know the original GLFW has a better way to handle these
(defun bool-c-to-lisp (value)
  (not (zerop value)))
(defun bool-lisp-to-c (value)
  (if value 1 0))
(defctype glfw-bool (:wrapper :int :from-c bool-c-to-lisp
			      :to-c bool-lisp-to-c))
;;; Examples:
;; (convert-to-foreign nil 'glfw-bool)
;; (convert-from-foreign 354 'glfw-bool)

;;; Initialization

;; glfw basics:
;; Everything has to start with glfw-init
;; The return spec is wrong:
;; It's GL_TRUE on success, GL_FALSE on failure.
;; N.B.: *If* it succeeds, you *must* call gl-terminate.
;; If it fails, that happens automatically.
;; May only be called from the main thread.
(defcfun ("glfwInit" glfw-init) glfw-bool)

;; Window Creation:
(defcfun ("glfwCreateWindow" glfw-create-window)
    glfw-window
  (width :int)
  (height :int)
  (title :string)
  (something :pointer)
  (something-else :pointer))
;; I want to be able to call that as:
;; (defparameter *window* (glfw-create-window 640 480 "Test" () ()))
;; That fails because nil is an invalid CCL:MACPTR.
;; Just checking:
;; (defparameter *window* (glfw-create-window 640 480 "Test" 0 0))
;; fails for the same reason. So...what are those "something*" parameters?
;; (defparameter *window* (glfw-create-window 640 480 "Test" (null-pointer) (null-pointer))) 
;; Works fine. So there.


;;; Information

;; "Official" Get Version method.
(defcfun ("glfwGetVersion" glfw-get-version-official)
    :void
  ;; These next parameters are actually int*.
  ;; Translating these back and forth is more than a little important.
  ;; FIXME: How is this currently handled?
  (major :pointer :int)
  (minor :pointer :int)
  (rev   :pointer :int))

(defun glfw-get-version ()
  ""
  (with-foreign-object (array :int 3)
    (glfw-get-version-official array (inc-pointer array 1) (inc-pointer array 2))
    (list (mem-aref array :int) (mem-aref array :int 1) (mem-aref array :int 2))))

;; Debugging version
;; Returns a char[] that's been allocated by the compiler (i.e. no need to free)
;; Can be called from any thread, before glfw-init.
(defcfun ("glfwGetVersionString" glfw-get-version-string)
    :string)

;;; Here's where things start getting interesting.
;;; Following along with the header, we get into things like error callbacks
;;; and the "main monitor."

;; This looks as though it works. It hasn't actually been tested by causing
;; an error yet.
;; FIXME: How do I define a C function pointer type?
;(defctype glfw-error-fun :void (error-code :int) (description :string))
    "new-callback is a function that accepts an int error-code and const char* description.
The description string is only valid within the scope of the callback.
Returns the previous callback on success, NULL on failure.
Runs in the context of whichever thread caused the error."
(defcfun ("glfwSetErrorCallback" glfw-set-error-callback)
    :pointer
  (new-callback :pointer))
(defcallback default-error-handler :void ((error-code :int) (description :pointer :char))
  (format nil "Error Code ~A: ~A~%" error-code description))
(defparameter *original-error-handler* (glfw-set-error-callback (callback default-error-handler)))

;;; FIXME: That really feels like it's just begging for a multi-method.
;;; It obviously doesn't, but something feels off.
;;; At the very least, it should be dead simple to swap in more meaningful handlers.
;;; It's something at least vaguely interesting to consider.

;;; Monitor information

;;; FIXME: Have to define the GLFWmonitor struct

;; Returns an array of handles for all currently connected monitors.
;; Only valid until the monitor configuration changes
;; Returns NULL on error
(defcfun ("glfwGetMonitors" glfw-get-monitors-native)
    :pointer
    (count :pointer :int))

#+null(defcstruct glfw-monitor 
  "Describe one of the monitors attached to the system.
FIXME: Really should use groveller instead, if I understand this at all.
Especially since it's intentionally opaque in the header.
For now, I really don't need anything except the size."
)
;; This returns a pair of monitor* on my system, which seems totally correct.
;; No idea whether they're valid or meaningful.
(defun glfw-get-monitors ()
  (let ((count (foreign-alloc :int)))
    (unwind-protect 
	 (let ((monitors (glfw-get-monitors-native count))
	       (result ()))
	   (dotimes (i (mem-ref count :int))
	     (push (mem-aref monitors #|glfw-monitor|# :pointer i) result))
	   result)
      (foreign-free count))))

(defcfun ("glfwGetPrimaryMonitor" glfw-get-primary-monitor)
    :pointer)
			 
;;; Termination

;; Closes all threads.
;; Releases all resources.
;; Returns everything to an uninitialized/undefined state.
;; Must re-call (glfw-init) to start using glfw again.
;; May only be called from the main thread.
;; No window's context may be current on another thread when this one is called!
(defcfun ("glfwTerminate" glfw-terminate) :void)


