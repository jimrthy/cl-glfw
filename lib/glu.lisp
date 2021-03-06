(defpackage #:cl-glfw-openglu
  (:use #:cl-glfw-types #:cffi #:cl)
  (:shadowing-import-from #:cl-glfw-types #:boolean #:byte #:float #:char)
  (:nicknames #:cl-glfw-glu #:openglu #:glu)
  (:export #:boolean #:double #:enum #:float #:int #:sizei +ext-object-space-tess+ +ext-nurbs-tessellator+ +false+ +true+ +version-1-1+ +version-1-2+ +version-1-3+ +version+ +extensions+ +invalid-enum+ +invalid-value+ +out-of-memory+ +incompatible-gl-version+ +invalid-operation+ +outline-polygon+ +outline-patch+ +nurbs-error+ +error+ +nurbs-begin+ +nurbs-begin-ext+ +nurbs-vertex+ +nurbs-vertex-ext+ +nurbs-normal+ +nurbs-normal-ext+ +nurbs-color+ +nurbs-color-ext+ +nurbs-texture-coord+ +nurbs-tex-coord-ext+ +nurbs-end+ +nurbs-end-ext+ +nurbs-begin-data+ +nurbs-begin-data-ext+ +nurbs-vertex-data+ +nurbs-vertex-data-ext+ +nurbs-normal-data+ +nurbs-normal-data-ext+ +nurbs-color-data+ +nurbs-color-data-ext+ +nurbs-texture-coord-data+ +nurbs-tex-coord-data-ext+ +nurbs-end-data+ +nurbs-end-data-ext+ +nurbs-error-1+ +nurbs-error-2+ +nurbs-error-3+ +nurbs-error-4+ +nurbs-error-5+ +nurbs-error-6+ +nurbs-error-7+ +nurbs-error-8+ +nurbs-error-9+ +nurbs-error-10+ +nurbs-error-11+ +nurbs-error-12+ +nurbs-error-13+ +nurbs-error-14+ +nurbs-error-15+ +nurbs-error-16+ +nurbs-error-17+ +nurbs-error-18+ +nurbs-error-19+ +nurbs-error-20+ +nurbs-error-21+ +nurbs-error-22+ +nurbs-error-23+ +nurbs-error-24+ +nurbs-error-25+ +nurbs-error-26+ +nurbs-error-27+ +nurbs-error-28+ +nurbs-error-29+ +nurbs-error-30+ +nurbs-error-31+ +nurbs-error-32+ +nurbs-error-33+ +nurbs-error-34+ +nurbs-error-35+ +nurbs-error-36+ +nurbs-error-37+ +auto-load-matrix+ +culling+ +sampling-tolerance+ +display-mode+ +parametric-tolerance+ +sampling-method+ +u-step+ +v-step+ +nurbs-mode+ +nurbs-mode-ext+ +nurbs-tessellator+ +nurbs-tessellator-ext+ +nurbs-renderer+ +nurbs-renderer-ext+ +object-parametric-error+ +object-parametric-error-ext+ +object-path-length+ +object-path-length-ext+ +path-length+ +parametric-error+ +domain-distance+ +map-1-trim-2+ +map-1-trim-3+ +point+ +line+ +fill+ +silhouette+ +smooth+ +flat+ +none+ +outside+ +inside+ +tess-begin+ +begin+ +tess-vertex+ +vertex+ +tess-end+ +end+ +tess-error+ +tess-edge-flag+ +edge-flag+ +tess-combine+ +tess-begin-data+ +tess-vertex-data+ +tess-end-data+ +tess-error-data+ +tess-edge-flag-data+ +tess-combine-data+ +cw+ +ccw+ +interior+ +exterior+ +unknown+ +tess-winding-rule+ +tess-boundary-only+ +tess-tolerance+ +tess-error-1+ +tess-error-2+ +tess-error-3+ +tess-error-4+ +tess-error-5+ +tess-error-6+ +tess-error-7+ +tess-error-8+ +tess-missing-begin-polygon+ +tess-missing-begin-contour+ +tess-missing-end-polygon+ +tess-missing-end-contour+ +tess-coord-too-large+ +tess-need-combine-callback+ +tess-winding-odd+ +tess-winding-nonzero+ +tess-winding-positive+ +tess-winding-negative+ +tess-winding-abs-geq-two+ +tess-max-coord+ begin-curve begin-polygon begin-surface begin-trim build-1d-mipmap-levels build-1d-mipmaps build-2d-mipmap-levels build-2d-mipmaps build-3d-mipmap-levels build-3d-mipmaps check-extension cylinder delete-nurbs-renderer delete-quadric delete-tess disk end-curve end-polygon end-surface end-trim error-string get-nurbs-property get-string get-tess-property load-sampling-matrices look-at new-nurbs-renderer new-quadric new-tess next-contour nurbs-callback nurbs-callback-data nurbs-callback-dataext nurbs-curve nurbs-property nurbs-surface ortho-2d partial-disk perspective pick-matrix project pwl-curve quadric-callback quadric-draw-style quadric-normals quadric-orientation quadric-texture scale-image sphere tess-begin-contour tess-begin-polygon tess-callback tess-end-contour tess-end-polygon tess-normal tess-property tess-vertex un-project un-project-4))

(in-package #:cl-glfw-glu)

#+ecl
(ffi:load-foreign-library #+unix "GLU"
			  #+windows "glu32"
			  :system-library t)

#-ecl
(ignore-errors
  (load-foreign-library '(:or "glu32.dll"
			  (:default "libGLU")
			  (:default "openglu")
			  (:default "GLU")
			  (:default "glu")
			  (:default "openglu32")
			  (:default "glu32")
                          "libGLU.so.1")))
;;  Extensions 
(defconstant +ext-object-space-tess+ 1)
(defconstant +ext-nurbs-tessellator+ 1)
;;  Boolean 
(defconstant +false+ 0)
(defconstant +true+ 1)
;;  Version 
(defconstant +version-1-1+ 1)
(defconstant +version-1-2+ 1)
(defconstant +version-1-3+ 1)
;;  StringName 
(defconstant +version+ 100800)
(defconstant +extensions+ 100801)
;;  ErrorCode 
(defconstant +invalid-enum+ 100900)
(defconstant +invalid-value+ 100901)
(defconstant +out-of-memory+ 100902)
(defconstant +incompatible-gl-version+ 100903)
(defconstant +invalid-operation+ 100904)
;;  NurbsDisplay 
;;       GLU_FILL 
(defconstant +outline-polygon+ 100240)
(defconstant +outline-patch+ 100241)
;;  NurbsCallback 
(defconstant +nurbs-error+ 100103)
(defconstant +error+ 100103)
(defconstant +nurbs-begin+ 100164)
(defconstant +nurbs-begin-ext+ 100164)
(defconstant +nurbs-vertex+ 100165)
(defconstant +nurbs-vertex-ext+ 100165)
(defconstant +nurbs-normal+ 100166)
(defconstant +nurbs-normal-ext+ 100166)
(defconstant +nurbs-color+ 100167)
(defconstant +nurbs-color-ext+ 100167)
(defconstant +nurbs-texture-coord+ 100168)
(defconstant +nurbs-tex-coord-ext+ 100168)
(defconstant +nurbs-end+ 100169)
(defconstant +nurbs-end-ext+ 100169)
(defconstant +nurbs-begin-data+ 100170)
(defconstant +nurbs-begin-data-ext+ 100170)
(defconstant +nurbs-vertex-data+ 100171)
(defconstant +nurbs-vertex-data-ext+ 100171)
(defconstant +nurbs-normal-data+ 100172)
(defconstant +nurbs-normal-data-ext+ 100172)
(defconstant +nurbs-color-data+ 100173)
(defconstant +nurbs-color-data-ext+ 100173)
(defconstant +nurbs-texture-coord-data+ 100174)
(defconstant +nurbs-tex-coord-data-ext+ 100174)
(defconstant +nurbs-end-data+ 100175)
(defconstant +nurbs-end-data-ext+ 100175)
;;  NurbsError 
(defconstant +nurbs-error-1+ 100251)
(defconstant +nurbs-error-2+ 100252)
(defconstant +nurbs-error-3+ 100253)
(defconstant +nurbs-error-4+ 100254)
(defconstant +nurbs-error-5+ 100255)
(defconstant +nurbs-error-6+ 100256)
(defconstant +nurbs-error-7+ 100257)
(defconstant +nurbs-error-8+ 100258)
(defconstant +nurbs-error-9+ 100259)
(defconstant +nurbs-error-10+ 100260)
(defconstant +nurbs-error-11+ 100261)
(defconstant +nurbs-error-12+ 100262)
(defconstant +nurbs-error-13+ 100263)
(defconstant +nurbs-error-14+ 100264)
(defconstant +nurbs-error-15+ 100265)
(defconstant +nurbs-error-16+ 100266)
(defconstant +nurbs-error-17+ 100267)
(defconstant +nurbs-error-18+ 100268)
(defconstant +nurbs-error-19+ 100269)
(defconstant +nurbs-error-20+ 100270)
(defconstant +nurbs-error-21+ 100271)
(defconstant +nurbs-error-22+ 100272)
(defconstant +nurbs-error-23+ 100273)
(defconstant +nurbs-error-24+ 100274)
(defconstant +nurbs-error-25+ 100275)
(defconstant +nurbs-error-26+ 100276)
(defconstant +nurbs-error-27+ 100277)
(defconstant +nurbs-error-28+ 100278)
(defconstant +nurbs-error-29+ 100279)
(defconstant +nurbs-error-30+ 100280)
(defconstant +nurbs-error-31+ 100281)
(defconstant +nurbs-error-32+ 100282)
(defconstant +nurbs-error-33+ 100283)
(defconstant +nurbs-error-34+ 100284)
(defconstant +nurbs-error-35+ 100285)
(defconstant +nurbs-error-36+ 100286)
(defconstant +nurbs-error-37+ 100287)
;;  NurbsProperty 
(defconstant +auto-load-matrix+ 100200)
(defconstant +culling+ 100201)
(defconstant +sampling-tolerance+ 100203)
(defconstant +display-mode+ 100204)
(defconstant +parametric-tolerance+ 100202)
(defconstant +sampling-method+ 100205)
(defconstant +u-step+ 100206)
(defconstant +v-step+ 100207)
(defconstant +nurbs-mode+ 100160)
(defconstant +nurbs-mode-ext+ 100160)
(defconstant +nurbs-tessellator+ 100161)
(defconstant +nurbs-tessellator-ext+ 100161)
(defconstant +nurbs-renderer+ 100162)
(defconstant +nurbs-renderer-ext+ 100162)
;;  NurbsSampling 
(defconstant +object-parametric-error+ 100208)
(defconstant +object-parametric-error-ext+ 100208)
(defconstant +object-path-length+ 100209)
(defconstant +object-path-length-ext+ 100209)
(defconstant +path-length+ 100215)
(defconstant +parametric-error+ 100216)
(defconstant +domain-distance+ 100217)
;;  NurbsTrim 
(defconstant +map-1-trim-2+ 100210)
(defconstant +map-1-trim-3+ 100211)
;;  QuadricDrawStyle 
(defconstant +point+ 100010)
(defconstant +line+ 100011)
(defconstant +fill+ 100012)
(defconstant +silhouette+ 100013)
;;  QuadricCallback 
;;       GLU_ERROR 
;;  QuadricNormal 
(defconstant +smooth+ 100000)
(defconstant +flat+ 100001)
(defconstant +none+ 100002)
;;  QuadricOrientation 
(defconstant +outside+ 100020)
(defconstant +inside+ 100021)
;;  TessCallback 
(defconstant +tess-begin+ 100100)
(defconstant +begin+ 100100)
(defconstant +tess-vertex+ 100101)
(defconstant +vertex+ 100101)
(defconstant +tess-end+ 100102)
(defconstant +end+ 100102)
(defconstant +tess-error+ 100103)
(defconstant +tess-edge-flag+ 100104)
(defconstant +edge-flag+ 100104)
(defconstant +tess-combine+ 100105)
(defconstant +tess-begin-data+ 100106)
(defconstant +tess-vertex-data+ 100107)
(defconstant +tess-end-data+ 100108)
(defconstant +tess-error-data+ 100109)
(defconstant +tess-edge-flag-data+ 100110)
(defconstant +tess-combine-data+ 100111)
;;  TessContour 
(defconstant +cw+ 100120)
(defconstant +ccw+ 100121)
(defconstant +interior+ 100122)
(defconstant +exterior+ 100123)
(defconstant +unknown+ 100124)
;;  TessProperty 
(defconstant +tess-winding-rule+ 100140)
(defconstant +tess-boundary-only+ 100141)
(defconstant +tess-tolerance+ 100142)
;;  TessError 
(defconstant +tess-error-1+ 100151)
(defconstant +tess-error-2+ 100152)
(defconstant +tess-error-3+ 100153)
(defconstant +tess-error-4+ 100154)
(defconstant +tess-error-5+ 100155)
(defconstant +tess-error-6+ 100156)
(defconstant +tess-error-7+ 100157)
(defconstant +tess-error-8+ 100158)
(defconstant +tess-missing-begin-polygon+ 100151)
(defconstant +tess-missing-begin-contour+ 100152)
(defconstant +tess-missing-end-polygon+ 100153)
(defconstant +tess-missing-end-contour+ 100154)
(defconstant +tess-coord-too-large+ 100155)
(defconstant +tess-need-combine-callback+ 100156)
;;  TessWinding 
(defconstant +tess-winding-odd+ 100130)
(defconstant +tess-winding-nonzero+ 100131)
(defconstant +tess-winding-positive+ 100132)
(defconstant +tess-winding-negative+ 100133)
(defconstant +tess-winding-abs-geq-two+ 100134)
;; ***********************************************************
(defconstant +tess-max-coord+ 1.0d150)

(defcfun ("gluBeginCurve" begin-curve) :void (nurb :pointer))
(defcfun ("gluBeginSurface" begin-surface) :void (nurb :pointer))
(defcfun ("gluBeginTrim" begin-trim) :void (nurb :pointer))
(defcfun ("gluBuild1DMipmaps" build-1d-mipmaps) int (target enum) (internalFormat int) (width sizei) (format enum) (type enum) (data :pointer))
(defcfun ("gluBuild2DMipmaps" build-2d-mipmaps) int (target enum) (internalFormat int) (width sizei) (height sizei) (format enum) (type enum) (data :pointer))
(defcfun ("gluCylinder" cylinder) :void (quad :pointer) (base double) (top double) (height double) (slices int) (stacks int))
(defcfun ("gluDeleteNurbsRenderer" delete-nurbs-renderer) :void (nurb :pointer))
(defcfun ("gluDeleteQuadric" delete-quadric) :void (quad :pointer))
(defcfun ("gluDisk" disk) :void (quad :pointer) (inner double) (outer double) (slices int) (loops int))
(defcfun ("gluEndCurve" end-curve) :void (nurb :pointer))
(defcfun ("gluEndSurface" end-surface) :void (nurb :pointer))
(defcfun ("gluEndTrim" end-trim) :void (nurb :pointer))
(defcfun ("gluErrorString" error-string) :string (error enum))
(defcfun ("gluGetNurbsProperty" get-nurbs-property) :void (nurb :pointer) (property enum) (data :pointer))
(defcfun ("gluLoadSamplingMatrices" load-sampling-matrices) :void (nurb :pointer) (model :pointer) (perspective :pointer) (view :pointer))
(defcfun ("gluLookAt" look-at) :void (eyeX double) (eyeY double) (eyeZ double) (centerX double) (centerY double) (centerZ double) (upX double) (upY double) (upZ double))
(defcfun ("gluNewNurbsRenderer" new-nurbs-renderer) :pointer )
(defcfun ("gluNewQuadric" new-quadric) :pointer )
(defcfun ("gluNurbsCurve" nurbs-curve) :void (nurb :pointer) (knotCount int) (knots :pointer) (stride int) (control :pointer) (order int) (type enum))
(defcfun ("gluNurbsProperty" nurbs-property) :void (nurb :pointer) (property enum) (value float))
(defcfun ("gluNurbsSurface" nurbs-surface) :void (nurb :pointer) (sKnotCount int) (sKnots :pointer) (tKnotCount int) (tKnots :pointer) (sStride int) (tStride int) (control :pointer) (sOrder int) (tOrder int) (type enum))
(defcfun ("gluOrtho2D" ortho-2d) :void (left double) (right double) (bottom double) (top double))
(defcfun ("gluPartialDisk" partial-disk) :void (quad :pointer) (inner double) (outer double) (slices int) (loops int) (start double) (sweep double))
(defcfun ("gluPerspective" perspective) :void (fovy double) (aspect double) (zNear double) (zFar double))
(defcfun ("gluPickMatrix" pick-matrix) :void (x double) (y double) (delX double) (delY double) (viewport :pointer))
(defcfun ("gluProject" project) int (objX double) (objY double) (objZ double) (model :pointer) (proj :pointer) (view :pointer) (winX :pointer) (winY :pointer) (winZ :pointer))
(defcfun ("gluPwlCurve" pwl-curve) :void (nurb :pointer) (count int) (data :pointer) (stride int) (type enum))
(defcfun ("gluQuadricCallback" quadric-callback) :void (quad :pointer) (which enum) (CallBackFunc :pointer))
(defcfun ("gluQuadricDrawStyle" quadric-draw-style) :void (quad :pointer) (draw enum))
(defcfun ("gluQuadricNormals" quadric-normals) :void (quad :pointer) (normal enum))
(defcfun ("gluQuadricOrientation" quadric-orientation) :void (quad :pointer) (orientation enum))
(defcfun ("gluQuadricTexture" quadric-texture) :void (quad :pointer) (texture boolean))
(defcfun ("gluSphere" sphere) :void (quad :pointer) (radius double) (slices int) (stacks int))
(defcfun ("gluUnProject" un-project) int (winX double) (winY double) (winZ double) (model :pointer) (proj :pointer) (view :pointer) (objX :pointer) (objY :pointer) (objZ :pointer))
