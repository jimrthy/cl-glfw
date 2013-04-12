Well, this might qualify as a start on documentation.

Convenience Functions
=====================

Pretty much all the opengl pieces are auto-gen'd through a ruby script.

opengl-convenience.lisp has several functions that look like:

(defun (?extension real-name name) ...)

At the very least, make-shader-arb and cl-glfw-opengl-extensions:load-extension
are not getting defined.

Q: Where is ?extension defined?

