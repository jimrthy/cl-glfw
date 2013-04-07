;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_vdpau_interop

(defconstant +surface-state-nv+ #x86EB) 
(defconstant +dot-product-texture-3d-nv+ #x86EF) 
(defconstant +surface-registered-nv+ #x86FD) 
(defconstant +surface-mapped-nv+ #x8700) 
(defconstant +surface-state-nv+ #x86EB) 
(defconstant +surface-registered-nv+ #x86FD) 
(defconstant +surface-mapped-nv+ #x8700) 
(defconstant +write-discard-nv+ #x88BE) 
(defglextfun "VDPAUUnmapSurfacesNV" vdpauunmap-surfaces-nv :return "void" :args ((:name |numSurface| :type |SizeI| :direction :in) (:name |surfaces| :type |vdpauSurfaceNV| :direction :in :array t :size numsurface)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUMapSurfacesNV" vdpaumap-surfaces-nv :return "void" :args ((:name |numSurfaces| :type |SizeI| :direction :in) (:name |surfaces| :type |vdpauSurfaceNV| :direction :in :array t :size numsurfaces)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUSurfaceAccessNV" vdpausurface-access-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in) (:name |access| :type |GLenum| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUGetSurfaceivNV" vdpauget-surface-iv-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |bufSize| :type |SizeI| :direction :in) ("length" "SizeI" "out" "reference") (:name |values| :type |Int32| :direction :out :array t :size length)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUUnregisterSurfaceNV" vdpauunregister-surface-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUIsSurfaceNV" vdpauis-surface-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAURegisterOutputSurfaceNV" vdpauregister-output-surface-nv :return "vdpauSurfaceNV" :args (("vdpSurface" "Void" "out" "reference") (:name |target| :type |GLenum| :direction :in) (:name |numTextureNames| :type |SizeI| :direction :in) (:name |textureNames| :type |UInt32| :direction :in :array t :size numtexturenames)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAURegisterVideoSurfaceNV" vdpauregister-video-surface-nv :return "vdpauSurfaceNV" :args (("vdpSurface" "Void" "in" "reference") (:name |target| :type |GLenum| :direction :in) (:name |numTextureNames| :type |SizeI| :direction :in) (:name |textureNames| :type |UInt32| :direction :in :array t :size numtexturenames)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUFiniNV" vdpaufin-i-nv :return "void" :args nil :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(defglextfun "VDPAUInitNV" vdpauinit-nv :return "void" :args (("vdpDevice" "Void" "in" "reference") ("getProcAddress" "Void" "in" "reference")) :category "NV_vdpau_interop" :deprecated nil :version "4.1") 
(make-extension-loader |NV_vdpau_interop| (("VDPAUUnmapSurfacesNV" vdpauunmap-surfaces-nv :return "void" :args ((:name |numSurface| :type |SizeI| :direction :in) (:name |surfaces| :type |vdpauSurfaceNV| :direction :in :array t :size numsurface)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUMapSurfacesNV" vdpaumap-surfaces-nv :return "void" :args ((:name |numSurfaces| :type |SizeI| :direction :in) (:name |surfaces| :type |vdpauSurfaceNV| :direction :in :array t :size numsurfaces)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUSurfaceAccessNV" vdpausurface-access-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in) (:name |access| :type |GLenum| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUGetSurfaceivNV" vdpauget-surface-iv-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in) (:name |pname| :type |GLenum| :direction :in) (:name |bufSize| :type |SizeI| :direction :in) ("length" "SizeI" "out" "reference") (:name |values| :type |Int32| :direction :out :array t :size length)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUUnregisterSurfaceNV" vdpauunregister-surface-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUIsSurfaceNV" vdpauis-surface-nv :return "void" :args ((:name |surface| :type |vdpauSurfaceNV| :direction :in)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAURegisterOutputSurfaceNV" vdpauregister-output-surface-nv :return "vdpauSurfaceNV" :args (("vdpSurface" "Void" "out" "reference") (:name |target| :type |GLenum| :direction :in) (:name |numTextureNames| :type |SizeI| :direction :in) (:name |textureNames| :type |UInt32| :direction :in :array t :size numtexturenames)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAURegisterVideoSurfaceNV" vdpauregister-video-surface-nv :return "vdpauSurfaceNV" :args (("vdpSurface" "Void" "in" "reference") (:name |target| :type |GLenum| :direction :in) (:name |numTextureNames| :type |SizeI| :direction :in) (:name |textureNames| :type |UInt32| :direction :in :array t :size numtexturenames)) :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUFiniNV" vdpaufin-i-nv :return "void" :args nil :category "NV_vdpau_interop" :deprecated nil :version "4.1") ("VDPAUInitNV" vdpauinit-nv :return "void" :args (("vdpDevice" "Void" "in" "reference") ("getProcAddress" "Void" "in" "reference")) :category "NV_vdpau_interop" :deprecated nil :version "4.1"))) 
