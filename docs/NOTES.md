Well, this might qualify as a start on documentation.

Convenience Functions
=====================

Pretty much all the opengl pieces are auto-gen'd through a ruby script.

opengl-convenience.lisp has several functions that look like:

(defun (?extension real-name name) ...)

At the very least, make-shader-arb and cl-glfw-opengl-extensions:load-extension
are not getting defined.

Q: Where is ?extension defined?


Random
======

Installation Notes
------------------

These are pieces that tripped me up while I was trying to get
this working. They may be blindingly obvious to anyone who isn't
a complete newb. Still. They were part of the learning curve I
experienced, and you can't ever have too much documentation,
especially the "Getting Started" sort...right?

1. Install glfw.
2. Install sbcl. This part may not matter unless you're regenerating
the libraries, the way I just did. Or it may be vital. I haven't
had enough time to play with it to be sure.
3. Make sure ruby's installed. Pretty much definitely only
needed for regenerating the OpenGL bindings.

This version is failing messily under both CCL and SBCL.

Well, it's ugly under CCL, because the generated code does not
pretty-print. It actually fails when I try to use SBCL for the
code generation, because the constantize function in
make-bindings-from-spec can't read character #(226) the first
time around. The second time through, it creates the duplicated
:unable-to-resolve constants that triggered this project in
the first place.

Trying to run make-opengl-bindings.rb gets to the very bottom,
where it calls make-bindings-from-spec.lisp, hangs, and does
crazy things where my shell keeps dumping me back into the
sbcl debugger.

NOTE: This version was generated using CCL on Linux.

The sample programs in the examples directory run under
CCL 64 on Linux from a REPL in the project root directory.

i.e. (load "examples/mipmaps") works fine on my machine.

Exceptions:
1. mtbench -- hard-coded for SBCL. Multi-threading with this
library is generally a bad idea anyway. Arguably, should
be re-written using something like bordeaux-threads.
2. shader-arb -- this seems bad. +vertex-shader-arb+ and
+fragment-shader-arb+ are undeclared globals. Then
cl-glfw-opengl-extensions:load-extension is an undefined
function called with "ARB_shader_objects" arg. Seems
totally unacceptable.
3. synchronized-shader-arb -- same issues as shader-arb.
Again: unacceptably broken.
4. test-cl-opengl -- doesn't play nicely with the others.
Sets up incompatible package nicknames. This seems like a
bigger-picture issue that's currently out of scope.
5. vbo -- lots of undeclared ARB errors. Culminating
in that missing LOAD-EXTENSION function. Another show-
stopper.

These don't work under SBCL either, so I'm not too
horribly worried about that.

I'm going to try to refactor the original into something
that both is backwards-compatible and works with my brain.

Not that the latter is necessarily a Good Thing. I'll also
try to stay true to my understanding of the original
vision.

In the meantime, I should be about breaking things so I
can get a feel for the way they work.
