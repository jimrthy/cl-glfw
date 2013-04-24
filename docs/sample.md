Usage
=====

The examples folder is useful. Hopefully it will rapidly become more so.

Until then, here are some nuggets I'm gleaning by digging through the source.

From examples/shader-arb:
-------------------------

Under slime and CCL:

Just doing
    (require '#:asdf)
    (asdf:oos 'asdf:load-op '#:cl-glfw)
    (asdf:oos 'asdf:load-op '#:cl-glfw-opengl-version_1_1)
generates a slew of compiler warnings.

Lots of undeclared free variables (which should be named constants) from
"home:src;lisp;cl-glfw;lib;opengl-convenience.lisp.newest"

    Warning: Lisp compilation failed while compiling
    #<CL-SOURCE-FILE "cl-glfw-opengl-core" "lib" "opengl-convenience"
    While executing: UIOP/LISP-BUILD:CHECK-LISP-COMPILE-WARNINGS, in process repl-thread(11).
    Warning: Lisp compilation had style-warnings while compiling
    #<CL-SOURCE-FILE "cl-glfw-opengl-core" "lib" "opengl-convenience">
    While executing: UIOP/LISP-BUILD:CHECK-LISP-COMPILE-WARNINGS, in process repl-thread(11).
    Compiler warnings for "home:src;lisp;cl-glfw;lib;opengl-version_1_1.lisp.newest" :
      In an anonymous lambda form at position 288: Undeclared free variable *VERSION-LOADED*
      (2 references)
    Warning: Lisp compilation failed while compiling #<CL-SOURCE-FILE "cl-glfw-opengl-version_1_1"
    "lib/opengl-version_1_1">

Then a list of several Undefined functions. Most look like they involve shader
programming.
