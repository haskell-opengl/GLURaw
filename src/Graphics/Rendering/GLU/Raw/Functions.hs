{-# LANGUAGE CPP #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.GLU.Raw.Functions
-- Copyright   :  (c) Sven Panne 2013
-- License     :  BSD3
--
-- Maintainer  :  Sven Panne <svenpanne@gmail.com>
-- Stability   :  stable
-- Portability :  portable
--
-- All functions from GLU 1.3, see <http://www.opengl.org/>.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.GLU.Raw.Functions (
   gluBeginCurve,
   gluBeginPolygon,
   gluBeginSurface,
   gluBeginTrim,
   gluBuild1DMipmapLevels,
   gluBuild1DMipmaps,
   gluBuild2DMipmapLevels,
   gluBuild2DMipmaps,
   gluBuild3DMipmapLevels,
   gluBuild3DMipmaps,
   gluCheckExtension,
   gluCylinder,
   gluDeleteNurbsRenderer,
   gluDeleteQuadric,
   gluDeleteTess,
   gluDisk,
   gluEndCurve,
   gluEndPolygon,
   gluEndSurface,
   gluEndTrim,
   gluErrorString,
   gluGetNurbsProperty,
   gluGetString,
   gluGetTessProperty,
   gluLoadSamplingMatrices,
   gluLookAt,
   gluNewNurbsRenderer,
   gluNewQuadric,
   gluNewTess,
   gluNextContour,
   gluNurbsCallback,
   gluNurbsCallbackData,
   gluNurbsCallbackDataEXT,
   gluNurbsCurve,
   gluNurbsProperty,
   gluNurbsSurface,
   gluOrtho2D,
   gluPartialDisk,
   gluPerspective,
   gluPickMatrix,
   gluProject,
   gluPwlCurve,
   gluQuadricCallback,
   gluQuadricDrawStyle,
   gluQuadricNormals,
   gluQuadricOrientation,
   gluQuadricTexture,
   gluScaleImage,
   gluSphere,
   gluTessBeginContour,
   gluTessBeginPolygon,
   gluTessCallback,
   gluTessEndContour,
   gluTessEndPolygon,
   gluTessNormal,
   gluTessProperty,
   gluTessVertex,
   gluUnProject,
   gluUnProject4,
) where

import Foreign.Ptr
import Foreign.C.Types
import Graphics.Rendering.GLU.Raw.APIEntry
import Graphics.Rendering.GLU.Raw.Types
import Graphics.Rendering.OpenGL.Raw.Core31

#define HASH #

#define API_ENTRY(_dyn_entry,_ptr_entry,_str_entry,_entry,_ty) \
foreign import CALLCONV "dynamic" _dyn_entry :: Graphics.Rendering.GLU.Raw.APIEntry.Invoker (_ty) ; \
_entry :: (_ty) ; \
_entry = _dyn_entry _ptr_entry ; \
_ptr_entry :: FunPtr a ; \
_ptr_entry = unsafePerformIO (Graphics.Rendering.GLU.Raw.APIEntry.getAPIEntry _str_entry) ; \
{-HASH NOINLINE _ptr_entry HASH-}

--------------------------------------------------------------------------------

API_ENTRY(dyn_gluBeginCurve,ptr_gluBeginCurve,"gluBeginCurve",gluBeginCurve,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluBeginPolygon,ptr_gluBeginPolygon,"gluBeginPolygon",gluBeginPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluBeginSurface,ptr_gluBeginSurface,"gluBeginSurface",gluBeginSurface,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluBeginTrim,ptr_gluBeginTrim,"gluBeginTrim",gluBeginTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluBuild1DMipmapLevels,ptr_gluBuild1DMipmapLevels,"gluBuild1DMipmapLevels",gluBuild1DMipmapLevels,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild1DMipmaps,ptr_gluBuild1DMipmaps,"gluBuild1DMipmaps",gluBuild1DMipmaps,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild2DMipmapLevels,ptr_gluBuild2DMipmapLevels,"gluBuild2DMipmapLevels",gluBuild2DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild2DMipmaps,ptr_gluBuild2DMipmaps,"gluBuild2DMipmaps",gluBuild2DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild3DMipmapLevels,ptr_gluBuild3DMipmapLevels,"gluBuild3DMipmapLevels",gluBuild3DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild3DMipmaps,ptr_gluBuild3DMipmaps,"gluBuild3DMipmaps",gluBuild3DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluCheckExtension,ptr_gluCheckExtension,"gluCheckExtension",gluCheckExtension,Ptr GLubyte -> Ptr GLubyte -> IO GLboolean)
API_ENTRY(dyn_gluCylinder,ptr_gluCylinder,"gluCylinder",gluCylinder,Ptr GLUquadric -> GLdouble -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY(dyn_gluDeleteNurbsRenderer,ptr_gluDeleteNurbsRenderer,"gluDeleteNurbsRenderer",gluDeleteNurbsRenderer,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluDeleteQuadric,ptr_gluDeleteQuadric,"gluDeleteQuadric",gluDeleteQuadric,Ptr GLUquadric -> IO ())
API_ENTRY(dyn_gluDeleteTess,ptr_gluDeleteTess,"gluDeleteTess",gluDeleteTess,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluDisk,ptr_gluDisk,"gluDisk",gluDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY(dyn_gluEndCurve,ptr_gluEndCurve,"gluEndCurve",gluEndCurve,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluEndPolygon,ptr_gluEndPolygon,"gluEndPolygon",gluEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluEndSurface,ptr_gluEndSurface,"gluEndSurface",gluEndSurface,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluEndTrim,ptr_gluEndTrim,"gluEndTrim",gluEndTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluErrorString,ptr_gluErrorString,"gluErrorString",gluErrorString,GLenum -> IO (Ptr GLubyte))
API_ENTRY(dyn_gluGetNurbsProperty,ptr_gluGetNurbsProperty,"gluGetNurbsProperty",gluGetNurbsProperty,Ptr GLUnurbs -> GLenum -> Ptr GLfloat -> IO ())
API_ENTRY(dyn_gluGetString,ptr_gluGetString,"gluGetString",gluGetString,GLenum -> IO (Ptr GLubyte))
API_ENTRY(dyn_gluGetTessProperty,ptr_gluGetTessProperty,"gluGetTessProperty",gluGetTessProperty,Ptr GLUtesselator -> GLenum -> Ptr GLdouble -> IO ())
API_ENTRY(dyn_gluLoadSamplingMatrices,ptr_gluLoadSamplingMatrices,"gluLoadSamplingMatrices",gluLoadSamplingMatrices,Ptr GLUnurbs -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLint -> IO ())
API_ENTRY(dyn_gluLookAt,ptr_gluLookAt,"gluLookAt",gluLookAt,GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluNewNurbsRenderer,ptr_gluNewNurbsRenderer,"gluNewNurbsRenderer",gluNewNurbsRenderer,IO (Ptr GLUnurbs))
API_ENTRY(dyn_gluNewQuadric,ptr_gluNewQuadric,"gluNewQuadric",gluNewQuadric,IO (Ptr GLUquadric))
API_ENTRY(dyn_gluNewTess,ptr_gluNewTess,"gluNewTess",gluNewTess,IO (Ptr GLUtesselator))
API_ENTRY(dyn_gluNextContour,ptr_gluNextContour,"gluNextContour",gluNextContour,Ptr GLUtesselator -> GLenum -> IO ())
API_ENTRY(dyn_gluNurbsCallback,ptr_gluNurbsCallback,"gluNurbsCallback",gluNurbsCallback,Ptr GLUnurbs -> GLenum -> FunPtr a -> IO ())
API_ENTRY(dyn_gluNurbsCallbackData,ptr_gluNurbsCallbackData,"gluNurbsCallbackData",gluNurbsCallbackData,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY(dyn_gluNurbsCallbackDataEXT,ptr_gluNurbsCallbackDataEXT,"gluNurbsCallbackDataEXT",gluNurbsCallbackDataEXT,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY(dyn_gluNurbsCurve,ptr_gluNurbsCurve,"gluNurbsCurve",gluNurbsCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY(dyn_gluNurbsProperty,ptr_gluNurbsProperty,"gluNurbsProperty",gluNurbsProperty,Ptr GLUnurbs -> GLenum -> GLfloat -> IO ())
API_ENTRY(dyn_gluNurbsSurface,ptr_gluNurbsSurface,"gluNurbsSurface",gluNurbsSurface,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLint -> Ptr GLfloat -> GLint -> GLint -> GLenum -> IO ())
API_ENTRY(dyn_gluOrtho2D,ptr_gluOrtho2D,"gluOrtho2D",gluOrtho2D,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluPartialDisk,ptr_gluPartialDisk,"gluPartialDisk",gluPartialDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluPerspective,ptr_gluPerspective,"gluPerspective",gluPerspective,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluPickMatrix,ptr_gluPickMatrix,"gluPickMatrix",gluPickMatrix,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLint -> IO ())
API_ENTRY(dyn_gluProject,ptr_gluProject,"gluProject",gluProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY(dyn_gluPwlCurve,ptr_gluPwlCurve,"gluPwlCurve",gluPwlCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY(dyn_gluQuadricCallback,ptr_gluQuadricCallback,"gluQuadricCallback",gluQuadricCallback,Ptr GLUquadric -> GLenum -> FunPtr a -> IO ())
API_ENTRY(dyn_gluQuadricDrawStyle,ptr_gluQuadricDrawStyle,"gluQuadricDrawStyle",gluQuadricDrawStyle,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY(dyn_gluQuadricNormals,ptr_gluQuadricNormals,"gluQuadricNormals",gluQuadricNormals,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY(dyn_gluQuadricOrientation,ptr_gluQuadricOrientation,"gluQuadricOrientation",gluQuadricOrientation,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY(dyn_gluQuadricTexture,ptr_gluQuadricTexture,"gluQuadricTexture",gluQuadricTexture,Ptr GLUquadric -> GLboolean -> IO ())
API_ENTRY(dyn_gluScaleImage,ptr_gluScaleImage,"gluScaleImage",gluScaleImage,GLenum -> GLsizei -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLsizei -> GLenum -> Ptr b -> IO GLint)
API_ENTRY(dyn_gluSphere,ptr_gluSphere,"gluSphere",gluSphere,Ptr GLUquadric -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY(dyn_gluTessBeginContour,ptr_gluTessBeginContour,"gluTessBeginContour",gluTessBeginContour,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluTessBeginPolygon,ptr_gluTessBeginPolygon,"gluTessBeginPolygon",gluTessBeginPolygon,Ptr GLUtesselator -> Ptr a -> IO ())
API_ENTRY(dyn_gluTessCallback,ptr_gluTessCallback,"gluTessCallback",gluTessCallback,Ptr GLUtesselator -> GLenum -> FunPtr a -> IO ())
API_ENTRY(dyn_gluTessEndContour,ptr_gluTessEndContour,"gluTessEndContour",gluTessEndContour,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluTessEndPolygon,ptr_gluTessEndPolygon,"gluTessEndPolygon",gluTessEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluTessNormal,ptr_gluTessNormal,"gluTessNormal",gluTessNormal,Ptr GLUtesselator -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluTessProperty,ptr_gluTessProperty,"gluTessProperty",gluTessProperty,Ptr GLUtesselator -> GLenum -> GLdouble -> IO ())
API_ENTRY(dyn_gluTessVertex,ptr_gluTessVertex,"gluTessVertex",gluTessVertex,Ptr GLUtesselator -> Ptr GLdouble -> Ptr a -> IO ())
API_ENTRY(dyn_gluUnProject,ptr_gluUnProject,"gluUnProject",gluUnProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY(dyn_gluUnProject4,ptr_gluUnProject4,"gluUnProject4",gluUnProject4,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> GLclampd -> GLclampd -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
