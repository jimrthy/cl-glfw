;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; sgix_instruments

(defglextfun "StopInstrumentsSGIX" stop-instruments-sgix :return "void" :args ((:name |marker| :type |Int32| :direction :in)) :category "SGIX_instruments" :deprecated nil :version "1.0") 
(defglextfun "StartInstrumentsSGIX" start-instruments-sgix :return "void" :args nil :category "SGIX_instruments" :deprecated nil :version "1.0") 
(defglextfun "ReadInstrumentsSGIX" read-instruments-sgix :return "void" :args ((:name |marker| :type |Int32| :direction :in)) :category "SGIX_instruments" :deprecated nil :version "1.0") 
(defglextfun "PollInstrumentsSGIX" poll-instruments-sgix :return "Int32" :args ((:name |marker_p| :type |Int32| :direction :out :array t :size #x1)) :category "SGIX_instruments" :deprecated nil :version "1.0") 
(defglextfun "InstrumentsBufferSGIX" instruments-buffer-sgix :return "void" :args ((:name |size| :type |SizeI| :direction :in) (:name |buffer| :type |Int32| :direction :out :array t :size size :retained t)) :category "SGIX_instruments" :deprecated nil :version "1.0") 
(defglextfun "GetInstrumentsSGIX" get-instruments-sgix :return "Int32" :args nil :category "SGIX_instruments" :deprecated nil :version "1.0") 
(make-extension-loader |SGIX_instruments| (("StopInstrumentsSGIX" stop-instruments-sgix :return "void" :args ((:name |marker| :type |Int32| :direction :in)) :category "SGIX_instruments" :deprecated nil :version "1.0") ("StartInstrumentsSGIX" start-instruments-sgix :return "void" :args nil :category "SGIX_instruments" :deprecated nil :version "1.0") ("ReadInstrumentsSGIX" read-instruments-sgix :return "void" :args ((:name |marker| :type |Int32| :direction :in)) :category "SGIX_instruments" :deprecated nil :version "1.0") ("PollInstrumentsSGIX" poll-instruments-sgix :return "Int32" :args ((:name |marker_p| :type |Int32| :direction :out :array t :size #x1)) :category "SGIX_instruments" :deprecated nil :version "1.0") ("InstrumentsBufferSGIX" instruments-buffer-sgix :return "void" :args ((:name |size| :type |SizeI| :direction :in) (:name |buffer| :type |Int32| :direction :out :array t :size size :retained t)) :category "SGIX_instruments" :deprecated nil :version "1.0") ("GetInstrumentsSGIX" get-instruments-sgix :return "Int32" :args nil :category "SGIX_instruments" :deprecated nil :version "1.0"))) 
