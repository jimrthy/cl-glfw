(defpackage #:cl-glfw-opengl-extensions
  (:nicknames #:gl-ext)
  (:use #:cl)
  (:export #:scan-available-extensions #:available-extensions #:extension-available-p #:load-extension))

;; OK. I wasn't getting here because of ASDF caching issues.
;(error "Test")

(in-package #:gl-ext)

(declaim (optimize (debug 3) (speed 0) (space 0)))

(defparameter *available* nil)

(defun scan-available-extensions ()
  (setf *available*
	(let ((extensions-string (gl:get-string gl:+extensions+)))
	  (when (and extensions-string
		     (stringp extensions-string)
		     (plusp (length extensions-string)))
	    (loop for i = 0 then (1+ j)
	       as j = (position #\Space extensions-string :start i)
	       while (< i (length extensions-string))
	       collect (subseq extensions-string (+ i 3) j)
	       while j)))))

(defun available-extensions ()
  (or *available* (scan-available-extensions)))

(defun extension-available-p (extension)
  (declare (type string extension))
  (find extension (available-extensions) :test 'equalp))

;;; It looks as though this method may actually be obsolete.
;;; It was deliberately eliminated by wivlaro, 2 years ago
;;; in commit 48dd42333bb16d216.
;;; Actually, the parts that actually try to do anything
;;; were commented out before that, in commit
;;; 65943f21aa7bb79bcae94337f3d41c38a7ac46ca.
;;; The function itself is most definitely needed for quite a few
;;; examples...however I'm supposed to get to it.
(defun load-extension (extension)
  "Try to load an opengl extension where the extension name is a string of the form
   \"ARB_vertex_buffer_object\". Returns t if the extension is available and loads,
   otherwise, nil."
  (let ((extension (extension-available-p extension)))
    (when extension
      #|
      (handler-case
	  (asdf:oos 'asdf:load-op (string-downcase (format nil "cl-glfw-opengl-~a" extension)))
	(asdf:missing-component () (warn "Extension ~a has nothing to load ~%" extension)))
      |#
      t)))
