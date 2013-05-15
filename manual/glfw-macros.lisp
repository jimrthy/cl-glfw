(defpackage #:cl-glfw-macros
  (:use #:cl)
  (:export #:defcfun+doc #:defcfun+out+doc))
(in-package #:cl-glfw-macros)

(defmacro defcfun+doc ((c-name lisp-name) return-type (&body args) docstring)
  `(progn
     (cffi:defcfun (,c-name ,lisp-name) ,return-type ,@args)
     (setf (documentation #',lisp-name 'function) ,docstring)))

(defmacro defcfun+out+doc ((c-name lisp-name) return-type (&body args) docstring)
  (let ((internal-name (intern (format nil "%~a" lisp-name)))
	(in-arg-names (mapcar #'second (remove-if-not #'(lambda (arg)
							  (eql (car arg) :in))
						      args)))
	(out-args (mapcar #'cdr (remove-if-not #'(lambda (arg)
						   (eql (car arg) :out))
					       args))))
    `(progn
       (cffi:defcfun (,c-name ,internal-name) ,return-type 
	 ,@(mapcar #'(lambda (arg)
		       (if (eql (car arg) :out)
			   (list (second arg) :pointer)
			   (cdr arg)))
		   args))
       (defun ,lisp-name ,in-arg-names
	 ,docstring
	 (cffi:with-foreign-objects ,out-args
	   (,internal-name ,@(mapcar #'second args))
	   (list ,@(mapcar #'(lambda (arg)
			       `(mem-ref ,(first arg) ',(second arg)))
			   out-args)))))))

