;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ext_x11_sync_object

(defconstant +sync-x11-fence-ext+ #x90E1) 
(defconstant +sync-x11-fence-ext+ #x90E1) 
(defglextfun "ImportSyncEXT" import-sync-ext :return "sync" :args ((:name |external_sync_type| :type |GLenum| :direction :in) (:name |external_sync| :type |Intptr| :direction :in) (:name |flags| :type |GLbitfield| :direction :in)) :category "EXT_x11_sync_object" :deprecated nil :version "3.2") 
(make-extension-loader |EXT_x11_sync_object| (("ImportSyncEXT" import-sync-ext :return "sync" :args ((:name |external_sync_type| :type |GLenum| :direction :in) (:name |external_sync| :type |Intptr| :direction :in) (:name |flags| :type |GLbitfield| :direction :in)) :category "EXT_x11_sync_object" :deprecated nil :version "3.2"))) 
