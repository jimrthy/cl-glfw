;;;; This file was automatically generated by /home/james/src/lisp/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; nv_video_capture

(defconstant +video-buffer-nv+ #x9020) 
(defconstant +video-buffer-binding-nv+ #x9021) 
(defconstant +field-upper-nv+ #x9022) 
(defconstant +field-lower-nv+ #x9023) 
(defconstant +num-video-capture-streams-nv+ #x9024) 
(defconstant +next-video-capture-buffer-status-nv+ #x9025) 
(defconstant +video-capture-to-422-supported-nv+ #x9026) 
(defconstant +last-video-capture-status-nv+ #x9027) 
(defconstant +video-buffer-pitch-nv+ #x9028) 
(defconstant +video-color-conversion-matrix-nv+ #x9029) 
(defconstant +video-color-conversion-max-nv+ #x902A) 
(defconstant +video-color-conversion-min-nv+ #x902B) 
(defconstant +video-color-conversion-offset-nv+ #x902C) 
(defconstant +video-buffer-internal-format-nv+ #x902D) 
(defconstant +partial-success-nv+ #x902E) 
(defconstant +success-nv+ #x902F) 
(defconstant +failure-nv+ #x9030) 
(defconstant +ycbycr8-422-nv+ #x9031) 
(defconstant +ycbaycr8a-4224-nv+ #x9032) 
(defconstant +z6y10z6cb10z6y10z6cr10-422-nv+ #x9033) 
(defconstant +z6y10z6cb10z6a10z6y10z6cr10z6a10-4224-nv+ #x9034) 
(defconstant +z4y12z4cb12z4y12z4cr12-422-nv+ #x9035) 
(defconstant +z4y12z4cb12z4a12z4y12z4cr12z4a12-4224-nv+ #x9036) 
(defconstant +z4y12z4cb12z4cr12-444-nv+ #x9037) 
(defconstant +video-capture-frame-width-nv+ #x9038) 
(defconstant +video-capture-frame-height-nv+ #x9039) 
(defconstant +video-capture-field-upper-height-nv+ #x903A) 
(defconstant +video-capture-field-lower-height-nv+ #x903B) 
(defconstant +video-capture-surface-origin-nv+ #x903C) 
(defconstant +video-buffer-nv+ #x9020) 
(defconstant +video-buffer-binding-nv+ #x9021) 
(defconstant +field-upper-nv+ #x9022) 
(defconstant +field-lower-nv+ #x9023) 
(defconstant +num-video-capture-streams-nv+ #x9024) 
(defconstant +next-video-capture-buffer-status-nv+ #x9025) 
(defconstant +video-capture-to-422-supported-nv+ #x9026) 
(defconstant +last-video-capture-status-nv+ #x9027) 
(defconstant +video-buffer-pitch-nv+ #x9028) 
(defconstant +video-color-conversion-matrix-nv+ #x9029) 
(defconstant +video-color-conversion-max-nv+ #x902A) 
(defconstant +video-color-conversion-min-nv+ #x902B) 
(defconstant +video-color-conversion-offset-nv+ #x902C) 
(defconstant +video-buffer-internal-format-nv+ #x902D) 
(defconstant +partial-success-nv+ #x902E) 
(defconstant +success-nv+ #x902F) 
(defconstant +failure-nv+ #x9030) 
(defconstant +ycbycr8-422-nv+ #x9031) 
(defconstant +ycbaycr8a-4224-nv+ #x9032) 
(defconstant +z6y10z6cb10z6y10z6cr10-422-nv+ #x9033) 
(defconstant +z6y10z6cb10z6a10z6y10z6cr10z6a10-4224-nv+ #x9034) 
(defconstant +z4y12z4cb12z4y12z4cr12-422-nv+ #x9035) 
(defconstant +z4y12z4cb12z4a12z4y12z4cr12z4a12-4224-nv+ #x9036) 
(defconstant +z4y12z4cb12z4cr12-444-nv+ #x9037) 
(defconstant +video-capture-frame-width-nv+ #x9038) 
(defconstant +video-capture-frame-height-nv+ #x9039) 
(defconstant +video-capture-field-upper-height-nv+ #x903A) 
(defconstant +video-capture-field-lower-height-nv+ #x903B) 
(defconstant +video-capture-surface-origin-nv+ #x903C) 
(defglextfun "VideoCaptureStreamParameterdvNV"
 video-capture-stream-parameter-dv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Float64| :direction :in :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "VideoCaptureStreamParameterfvNV"
 video-capture-stream-parameter-fv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Float32| :direction :in :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "VideoCaptureStreamParameterivNV"
 video-capture-stream-parameter-iv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :in :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "VideoCaptureNV" video-capture-nv :return "GLenum" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  ("sequence_num" "UInt32" "out" "reference")
  ("capture_time" "UInt64EXT" "out" "reference"))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "GetVideoCaptureStreamdvNV"
 get-video-capture-stream-dv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Float64| :direction :out :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "GetVideoCaptureStreamfvNV"
 get-video-capture-stream-fv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Float32| :direction :out :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "GetVideoCaptureStreamivNV"
 get-video-capture-stream-iv-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "GetVideoCaptureivNV" get-video-capture-iv-nv :return
 "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |pname| :type |GLenum| :direction :in)
  (:name |params| :type |Int32| :direction :out :array t :size
   (|pname|)))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "EndVideoCaptureNV" end-video-capture-nv :return "void"
 :args ((:name |video_capture_slot| :type |UInt32| :direction :in))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "BindVideoCaptureStreamTextureNV"
 bind-video-capture-stream-texture-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |frame_region| :type |GLenum| :direction :in)
  (:name |target| :type |GLenum| :direction :in)
  (:name |texture| :type |UInt32| :direction :in))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "BindVideoCaptureStreamBufferNV"
 bind-video-capture-stream-buffer-nv :return "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in)
  (:name |stream| :type |UInt32| :direction :in)
  (:name |frame_region| :type |GLenum| :direction :in)
  (:name |offset| :type |BufferOffsetARB| :direction :in))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(defglextfun "BeginVideoCaptureNV" begin-video-capture-nv :return
 "void" :args
 ((:name |video_capture_slot| :type |UInt32| :direction :in))
 :category "NV_video_capture" :deprecated nil :version "1.2") 
(make-extension-loader |NV_video_capture|
 (("VideoCaptureStreamParameterdvNV"
   video-capture-stream-parameter-dv-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Float64| :direction :in :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("VideoCaptureStreamParameterfvNV"
   video-capture-stream-parameter-fv-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Float32| :direction :in :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("VideoCaptureStreamParameterivNV"
   video-capture-stream-parameter-iv-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :in :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("VideoCaptureNV" video-capture-nv :return "GLenum" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    ("sequence_num" "UInt32" "out" "reference")
    ("capture_time" "UInt64EXT" "out" "reference"))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("GetVideoCaptureStreamdvNV" get-video-capture-stream-dv-nv :return
   "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Float64| :direction :out :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("GetVideoCaptureStreamfvNV" get-video-capture-stream-fv-nv :return
   "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Float32| :direction :out :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("GetVideoCaptureStreamivNV" get-video-capture-stream-iv-nv :return
   "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("GetVideoCaptureivNV" get-video-capture-iv-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |pname| :type |GLenum| :direction :in)
    (:name |params| :type |Int32| :direction :out :array t :size
     (|pname|)))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("EndVideoCaptureNV" end-video-capture-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("BindVideoCaptureStreamTextureNV"
   bind-video-capture-stream-texture-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |frame_region| :type |GLenum| :direction :in)
    (:name |target| :type |GLenum| :direction :in)
    (:name |texture| :type |UInt32| :direction :in))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("BindVideoCaptureStreamBufferNV"
   bind-video-capture-stream-buffer-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in)
    (:name |stream| :type |UInt32| :direction :in)
    (:name |frame_region| :type |GLenum| :direction :in)
    (:name |offset| :type |BufferOffsetARB| :direction :in))
   :category "NV_video_capture" :deprecated nil :version "1.2")
  ("BeginVideoCaptureNV" begin-video-capture-nv :return "void" :args
   ((:name |video_capture_slot| :type |UInt32| :direction :in))
   :category "NV_video_capture" :deprecated nil :version "1.2"))) 
