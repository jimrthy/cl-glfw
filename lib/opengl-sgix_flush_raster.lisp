;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_flush_raster

(defglextfun "FlushRasterSGIX" flush-raster-sgix :return "void" :args nil :category "SGIX_flush_raster" :deprecated nil :version "1.0") 
(make-extension-loader |SGIX_flush_raster| (("FlushRasterSGIX" flush-raster-sgix :return "void" :args nil :category "SGIX_flush_raster" :deprecated nil :version "1.0"))) 
