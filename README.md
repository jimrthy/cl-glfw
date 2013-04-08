* * *

airbaggins hasn't updated cl-glfw in years. lholden forked his repository onto
github with a minor change (dealing with dynamic library loading)
about a year ago.

Both of their latest checkins have some issues with the OpenGL wrappers
trying to redefine constants.

airbaggins had this advice for me:

> Hm. I didn't realise there were any OpenGL ES extensions compiled in.
> Unfortunately, I don't have much time these days to go and re-visit it.
> Just having a quick look, maybe that there was a duplicate enum in the
> spec when I generated it. Perhaps just re-running the generator will
> help... ? Just running the generators/make-opengl-bindings.rb should 
> do it.
>
> If it's still outputting duplicate enums, maybe in this file 
> [spec generator](http://repo.or.cz/w/cl-glfw.git/blob/master:/generators/make-bindings-from-spec.lisp)
> in the set-enum-specs in resolve-enum label.... there could be
> something done to prevent it from happening.

So that's what this fork is about: to try to fix these errors.

It obviously isn't that big a deal. You can safely comment out the
lines causing the errors. No one else seems to have noticed the
problem in years. It just seemed like a shame to leave things
published in a broken state.

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

I'm not sure how well these examples work under SBCL on
my system: I don't have CFFI installed with it.

Enjoy,
James
jamesgatannah@gmail.com


* * * 

Original README:

Top-level ASDF packages
=======================

 * cl-glfw - GLFW bindings for Common Lisp.
 * cl-glfw-opengl-version_* - OpenGL bindings for Common Lisp.
 * cl-glfw-glu (requires cl-glfw-opengl) - OpenGL Utilities bindings for Common Lisp.

ABOUT
=====

A public domain set of CFFI bindings and convenience macros for the GLFW, GLU
and OpenGL libraries.

The OpenGL bindings are automatically generated from the spec-files from 
http://www.opengl.org/registry/

The GLU binding was hand-coerced from a tidied up header file, through swig, so
it's pretty much a direct mapping onto the API.

cl-glfw is independent of cl-glfw-opengl-* and cl-glfw-glu. cl-glfw-opengl and
cl-glfw-glu may be used without cl-glfw. cl-glfw-glu, however, does depend on
cl-glfw-opengl. So, you should be able to use cl-glfw and
cl-glfw-opengl/cl-glfw-glu independently of each other; for example, using
cl-glfw with cl-opengl, or cl-opengl's glut with cl-glfw-opengl, should work
fine.

Check out the examples/ directory for more of a guide through.


WINDOWS NOTES
=============

For SBCL on Windows, you will need to download the GLFW DLLs pack
(glfw-2.6.bin.WIN32.zip), which you can find on http://glfw.sf.net/

I would recommend either placing the MINGW version of the GLFW.dll in either
your \WINDOWS\SYSTEM32 directory, or in the current directory for distributed
binaries.


MAC OS X NOTES
==============

For SBCL on Mac OS X, you will want to have the libglfw.dylib somewhere where
cl-glfw can find it. It's probably easiest to just include it in the current
directory of your application.


THREADING
=========

GLFW threading WILL PROBABLY BREAK YOUR LISP IMAGE. I would advise seeking
other avenues if you require threading in your applications. The bindings
remain in cl-glfw, but, I should emphasise once again, that they probably are
going to mess up things like garbage collection in your lisp, and apparently
some things to do with stacks and allocations aswell.


NAME MANGLING STYLE
===================

All function/constant names are 'lispified', that is dash-separated, instead of
camel-case.  Suffixes and acronyms are kept together as one word. Library
prefixes are expressed as their package. Constants are surrounded by the '+'
characters as lisp convention dictates.  Some examples:

glfwOpenWindow -> glfw:open-window
glVertex3fv -> gl:vertex-3fv
gluBuild2DMipmaps -> glu:build-2d-mipmaps
GL_FOG_INDEX -> gl:+fog-index+
GL_LIGHT0 -> gl:+light-0+


TYPE CONVERSION IN CL-GLFW-OPENGL
=================================

Functions that take a predictable c-array input or return an output have
automatic-translators for lisp-sequences (array and vectors). However, this
will require an extra allocation. cffi:pointer types will be passed straight
through. Eg. (gl:vertex-3fv #(1.0 0.0 1.0)) will work as expected.

All function parameters of types (warning: not in GLU yet) GLfloat or GLdouble
are automatically wrapped in an appropriate coerce. All integer types are
expected to be acceptable to CFFI. 

See individual function documentation for cl-glfw conversion details.
cl-glfw-glu does not do automatic float translations.


PLATFORMS
---------
    SBCL Linux x86
    SBCL Linux amd64/x86_64
    SBCL Windows 32-bit
    SBCL Mac OS X 32-bit Intel
    Others: Let me know.


LINKS
-----

    http://repo.or.cz/w/cl-glfw.git - The working online git repository
    http://glfw.sf.net/ - The homepage for GLFW
    http://common-lisp.net/project/cffi/ - Dependency library CFFI's homepage
    http://www.sbcl.org/ - Our favoured implementation of Common Lisp
    http://www.opengl.org/ - OpenGL 3D graphics library API


ALTERNATIVES
------------

    http://common-lisp.net/project/cl-opengl/ - Alternative set of OpenGL (with GLUT) bindings
    http://cl-sdl.sf.net/ - Seemingly abandoned SDL and OpenGL bindings


Enjoy.
Bill
airbaggins@users.sourceforge.net

