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

;;; Information

;; "Official" Get Version method.
(defcfun ("glfwGetVersion" glfw-get-version)
    :void
  ;; These next parameters are actually int*.
  ;; Translating these back and forth is more than a little important.
  ;; FIXME: How is this currently handled?
  (major :pointer)
  (minor :pointer)
  (rev   :pointer))

;; Debugging version
;; Returns a char[] that's been allocated by the compiler (i.e. no need to free)
;; Can be called from any thread, before glfw-init.
(defcfun ("glfwGetVersionString" glfw-get-version-string)
    :string)

;;; Following along with the header, we get into things like error callbacks
;;; and the "main monitor."
(error "Here's where things start getting interesting.")

;;; Termination

;; Closes all threads.
;; Releases all resources.
;; Returns everything to an uninitialized/undefined state.
;; Must re-call (glfw-init) to start using glfw again.
;; May only be called from the main thread.
;; No window's context may be current on another thread when this one is called!
(defcfun ("glfwTerminate" glfw-terminate) :void)


