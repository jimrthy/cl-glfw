;;;; This file was automatically generated by /home/bill/programming/cl-glfw/generators/make-bindings-from-spec.lisp

(in-package #:cl-glfw-opengl) 

;;;; ati_fragment_shader

(defconstant +fragment-shader-ati+ #x8920) 
(defconstant +reg-0-ati+ #x8921) 
(defconstant +reg-1-ati+ #x8922) 
(defconstant +reg-2-ati+ #x8923) 
(defconstant +reg-3-ati+ #x8924) 
(defconstant +reg-4-ati+ #x8925) 
(defconstant +reg-5-ati+ #x8926) 
(defconstant +reg-6-ati+ #x8927) 
(defconstant +reg-7-ati+ #x8928) 
(defconstant +reg-8-ati+ #x8929) 
(defconstant +reg-9-ati+ #x892A) 
(defconstant +reg-10-ati+ #x892B) 
(defconstant +reg-11-ati+ #x892C) 
(defconstant +reg-12-ati+ #x892D) 
(defconstant +reg-13-ati+ #x892E) 
(defconstant +reg-14-ati+ #x892F) 
(defconstant +reg-15-ati+ #x8930) 
(defconstant +reg-16-ati+ #x8931) 
(defconstant +reg-17-ati+ #x8932) 
(defconstant +reg-18-ati+ #x8933) 
(defconstant +reg-19-ati+ #x8934) 
(defconstant +reg-20-ati+ #x8935) 
(defconstant +reg-21-ati+ #x8936) 
(defconstant +reg-22-ati+ #x8937) 
(defconstant +reg-23-ati+ #x8938) 
(defconstant +reg-24-ati+ #x8939) 
(defconstant +reg-25-ati+ #x893A) 
(defconstant +reg-26-ati+ #x893B) 
(defconstant +reg-27-ati+ #x893C) 
(defconstant +reg-28-ati+ #x893D) 
(defconstant +reg-29-ati+ #x893E) 
(defconstant +reg-30-ati+ #x893F) 
(defconstant +reg-31-ati+ #x8940) 
(defconstant +con-0-ati+ #x8941) 
(defconstant +con-1-ati+ #x8942) 
(defconstant +con-2-ati+ #x8943) 
(defconstant +con-3-ati+ #x8944) 
(defconstant +con-4-ati+ #x8945) 
(defconstant +con-5-ati+ #x8946) 
(defconstant +con-6-ati+ #x8947) 
(defconstant +con-7-ati+ #x8948) 
(defconstant +con-8-ati+ #x8949) 
(defconstant +con-9-ati+ #x894A) 
(defconstant +con-10-ati+ #x894B) 
(defconstant +con-11-ati+ #x894C) 
(defconstant +con-12-ati+ #x894D) 
(defconstant +con-13-ati+ #x894E) 
(defconstant +con-14-ati+ #x894F) 
(defconstant +con-15-ati+ #x8950) 
(defconstant +con-16-ati+ #x8951) 
(defconstant +con-17-ati+ #x8952) 
(defconstant +con-18-ati+ #x8953) 
(defconstant +con-19-ati+ #x8954) 
(defconstant +con-20-ati+ #x8955) 
(defconstant +con-21-ati+ #x8956) 
(defconstant +con-22-ati+ #x8957) 
(defconstant +con-23-ati+ #x8958) 
(defconstant +con-24-ati+ #x8959) 
(defconstant +con-25-ati+ #x895A) 
(defconstant +con-26-ati+ #x895B) 
(defconstant +con-27-ati+ #x895C) 
(defconstant +con-28-ati+ #x895D) 
(defconstant +con-29-ati+ #x895E) 
(defconstant +con-30-ati+ #x895F) 
(defconstant +con-31-ati+ #x8960) 
(defconstant +mov-ati+ #x8961) 
(defconstant +add-ati+ #x8963) 
(defconstant +mul-ati+ #x8964) 
(defconstant +sub-ati+ #x8965) 
(defconstant +dot3-ati+ #x8966) 
(defconstant +dot4-ati+ #x8967) 
(defconstant +mad-ati+ #x8968) 
(defconstant +lerp-ati+ #x8969) 
(defconstant +cnd-ati+ #x896A) 
(defconstant +cnd0-ati+ #x896B) 
(defconstant +dot2-add-ati+ #x896C) 
(defconstant +secondary-interpolator-ati+ #x896D) 
(defconstant +num-fragment-registers-ati+ #x896E) 
(defconstant +num-fragment-constants-ati+ #x896F) 
(defconstant +num-passes-ati+ #x8970) 
(defconstant +num-instructions-per-pass-ati+ #x8971) 
(defconstant +num-instructions-total-ati+ #x8972) 
(defconstant +num-input-interpolator-components-ati+ #x8973) 
(defconstant +num-loopback-components-ati+ #x8974) 
(defconstant +color-alpha-pairing-ati+ #x8975) 
(defconstant +swizzle-str-ati+ #x8976) 
(defconstant +swizzle-stq-ati+ #x8977) 
(defconstant +swizzle-str-dr-ati+ #x8978) 
(defconstant +swizzle-stq-dq-ati+ #x8979) 
(defconstant +swizzle-strq-ati+ #x897A) 
(defconstant +swizzle-strq-dq-ati+ #x897B) 
(defconstant +red-bit-ati+ #x1) 
(defconstant +green-bit-ati+ #x2) 
(defconstant +blue-bit-ati+ #x4) 
(defconstant +2x-bit-ati+ #x1) 
(defconstant +4x-bit-ati+ #x2) 
(defconstant +8x-bit-ati+ #x4) 
(defconstant +half-bit-ati+ #x8) 
(defconstant +quarter-bit-ati+ #x10) 
(defconstant +eighth-bit-ati+ #x20) 
(defconstant +saturate-bit-ati+ #x40) 
(defconstant +2x-bit-ati+ #x1) 
(defconstant +comp-bit-ati+ #x2) 
(defconstant +negate-bit-ati+ #x4) 
(defconstant +bias-bit-ati+ #x8) 
(defglextfun
 (("SetFragmentShaderConstantATI" set-fragment-shader-constant-ati) :args
  ((:name |dst| :type |UInt32| :direction :in)
   (:name |value| :type |ConstFloat32| :direction :in :array t :size #x4))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("AlphaFragmentOp3ATI" alpha-fragment-op-3-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in)
   (:name |arg2Rep| :type |UInt32| :direction :in)
   (:name |arg2Mod| :type |UInt32| :direction :in)
   (:name |arg3| :type |UInt32| :direction :in)
   (:name |arg3Rep| :type |UInt32| :direction :in)
   (:name |arg3Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("AlphaFragmentOp2ATI" alpha-fragment-op-2-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in)
   (:name |arg2Rep| :type |UInt32| :direction :in)
   (:name |arg2Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("AlphaFragmentOp1ATI" alpha-fragment-op-1-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ColorFragmentOp3ATI" color-fragment-op-3-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMask| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in)
   (:name |arg2Rep| :type |UInt32| :direction :in)
   (:name |arg2Mod| :type |UInt32| :direction :in)
   (:name |arg3| :type |UInt32| :direction :in)
   (:name |arg3Rep| :type |UInt32| :direction :in)
   (:name |arg3Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ColorFragmentOp2ATI" color-fragment-op-2-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMask| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in)
   (:name |arg2| :type |UInt32| :direction :in)
   (:name |arg2Rep| :type |UInt32| :direction :in)
   (:name |arg2Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("ColorFragmentOp1ATI" color-fragment-op-1-ati) :args
  ((:name |op| :type |FragmentOpATI| :direction :in)
   (:name |dst| :type |UInt32| :direction :in)
   (:name |dstMask| :type |UInt32| :direction :in)
   (:name |dstMod| :type |UInt32| :direction :in)
   (:name |arg1| :type |UInt32| :direction :in)
   (:name |arg1Rep| :type |UInt32| :direction :in)
   (:name |arg1Mod| :type |UInt32| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("SampleMapATI" sample-map-ati) :args
  ((:name |dst| :type |UInt32| :direction :in)
   (:name |interp| :type |UInt32| :direction :in)
   (:name |swizzle| :type |SwizzleOpATI| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("PassTexCoordATI" pass-tex-coord-ati) :args
  ((:name |dst| :type |UInt32| :direction :in)
   (:name |coord| :type |UInt32| :direction :in)
   (:name |swizzle| :type |SwizzleOpATI| :direction :in))
  :return ("void") :category ("ATI_fragment_shader") :version ("1.2")
  :extension nil :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore")
  :offset ("?"))) 
(defglextfun
 (("EndFragmentShaderATI" end-fragment-shader-ati) :args nil :return ("void")
  :category ("ATI_fragment_shader") :version ("1.2") :extension nil :glxropcode
  ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("BeginFragmentShaderATI" begin-fragment-shader-ati) :args nil :return
  ("void") :category ("ATI_fragment_shader") :version ("1.2") :extension nil
  :glxropcode ("?") :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("DeleteFragmentShaderATI" delete-fragment-shader-ati) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("ATI_fragment_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("BindFragmentShaderATI" bind-fragment-shader-ati) :args
  ((:name |id| :type |UInt32| :direction :in)) :return ("void") :category
  ("ATI_fragment_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 
(defglextfun
 (("GenFragmentShadersATI" gen-fragment-shaders-ati) :args
  ((:name |range| :type |UInt32| :direction :in)) :return ("UInt32") :category
  ("ATI_fragment_shader") :version ("1.2") :extension nil :glxropcode ("?")
  :glxflags ("ignore") :glsflags ("ignore") :offset ("?"))) 