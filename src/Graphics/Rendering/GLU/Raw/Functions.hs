{-# LANGUAGE ForeignFunctionInterface, CPP #-}
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

#include "HsGLURaw.h"

--------------------------------------------------------------------------------

API_ENTRY_SAFE(dyn_gluBeginCurve,ptr_gluBeginCurve,gluBeginCurve,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(dyn_gluBeginPolygon,ptr_gluBeginPolygon,gluBeginPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(dyn_gluBeginSurface,ptr_gluBeginSurface,gluBeginSurface,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(dyn_gluBeginTrim,ptr_gluBeginTrim,gluBeginTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluBuild1DMipmapLevels,ptr_gluBuild1DMipmapLevels,gluBuild1DMipmapLevels,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild1DMipmaps,ptr_gluBuild1DMipmaps,gluBuild1DMipmaps,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild2DMipmapLevels,ptr_gluBuild2DMipmapLevels,gluBuild2DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild2DMipmaps,ptr_gluBuild2DMipmaps,gluBuild2DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild3DMipmapLevels,ptr_gluBuild3DMipmapLevels,gluBuild3DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluBuild3DMipmaps,ptr_gluBuild3DMipmaps,gluBuild3DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(dyn_gluCheckExtension,ptr_gluCheckExtension,gluCheckExtension,Ptr GLubyte -> Ptr GLubyte -> IO GLboolean)
API_ENTRY_SAFE(dyn_gluCylinder,ptr_gluCylinder,gluCylinder,Ptr GLUquadric -> GLdouble -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(dyn_gluDeleteNurbsRenderer,ptr_gluDeleteNurbsRenderer,gluDeleteNurbsRenderer,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluDeleteQuadric,ptr_gluDeleteQuadric,gluDeleteQuadric,Ptr GLUquadric -> IO ())
API_ENTRY_SAFE(dyn_gluDeleteTess,ptr_gluDeleteTess,gluDeleteTess,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(dyn_gluDisk,ptr_gluDisk,gluDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(dyn_gluEndCurve,ptr_gluEndCurve,gluEndCurve,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(dyn_gluEndPolygon,ptr_gluEndPolygon,gluEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(dyn_gluEndSurface,ptr_gluEndSurface,gluEndSurface,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(dyn_gluEndTrim,ptr_gluEndTrim,gluEndTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(dyn_gluErrorString,ptr_gluErrorString,gluErrorString,GLenum -> IO (Ptr GLubyte))
API_ENTRY_SAFE(dyn_gluGetNurbsProperty,ptr_gluGetNurbsProperty,gluGetNurbsProperty,Ptr GLUnurbs -> GLenum -> Ptr GLfloat -> IO ())
API_ENTRY(dyn_gluGetString,ptr_gluGetString,gluGetString,GLenum -> IO (Ptr GLubyte))
API_ENTRY_SAFE(dyn_gluGetTessProperty,ptr_gluGetTessProperty,gluGetTessProperty,Ptr GLUtesselator -> GLenum -> Ptr GLdouble -> IO ())
API_ENTRY_SAFE(dyn_gluLoadSamplingMatrices,ptr_gluLoadSamplingMatrices,gluLoadSamplingMatrices,Ptr GLUnurbs -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLint -> IO ())
API_ENTRY(dyn_gluLookAt,ptr_gluLookAt,gluLookAt,GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(dyn_gluNewNurbsRenderer,ptr_gluNewNurbsRenderer,gluNewNurbsRenderer,IO (Ptr GLUnurbs))
API_ENTRY(dyn_gluNewQuadric,ptr_gluNewQuadric,gluNewQuadric,IO (Ptr GLUquadric))
API_ENTRY(dyn_gluNewTess,ptr_gluNewTess,gluNewTess,IO (Ptr GLUtesselator))
API_ENTRY_SAFE(dyn_gluNextContour,ptr_gluNextContour,gluNextContour,Ptr GLUtesselator -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsCallback,ptr_gluNurbsCallback,gluNurbsCallback,Ptr GLUnurbs -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsCallbackData,ptr_gluNurbsCallbackData,gluNurbsCallbackData,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsCallbackDataEXT,ptr_gluNurbsCallbackDataEXT,gluNurbsCallbackDataEXT,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsCurve,ptr_gluNurbsCurve,gluNurbsCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsProperty,ptr_gluNurbsProperty,gluNurbsProperty,Ptr GLUnurbs -> GLenum -> GLfloat -> IO ())
API_ENTRY_SAFE(dyn_gluNurbsSurface,ptr_gluNurbsSurface,gluNurbsSurface,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLint -> Ptr GLfloat -> GLint -> GLint -> GLenum -> IO ())
API_ENTRY(dyn_gluOrtho2D,ptr_gluOrtho2D,gluOrtho2D,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(dyn_gluPartialDisk,ptr_gluPartialDisk,gluPartialDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluPerspective,ptr_gluPerspective,gluPerspective,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(dyn_gluPickMatrix,ptr_gluPickMatrix,gluPickMatrix,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLint -> IO ())
API_ENTRY(dyn_gluProject,ptr_gluProject,gluProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY_SAFE(dyn_gluPwlCurve,ptr_gluPwlCurve,gluPwlCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluQuadricCallback,ptr_gluQuadricCallback,gluQuadricCallback,Ptr GLUquadric -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(dyn_gluQuadricDrawStyle,ptr_gluQuadricDrawStyle,gluQuadricDrawStyle,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluQuadricNormals,ptr_gluQuadricNormals,gluQuadricNormals,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluQuadricOrientation,ptr_gluQuadricOrientation,gluQuadricOrientation,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(dyn_gluQuadricTexture,ptr_gluQuadricTexture,gluQuadricTexture,Ptr GLUquadric -> GLboolean -> IO ())
API_ENTRY(dyn_gluScaleImage,ptr_gluScaleImage,gluScaleImage,GLenum -> GLsizei -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLsizei -> GLenum -> Ptr b -> IO GLint)
API_ENTRY_SAFE(dyn_gluSphere,ptr_gluSphere,gluSphere,Ptr GLUquadric -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(dyn_gluTessBeginContour,ptr_gluTessBeginContour,gluTessBeginContour,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(dyn_gluTessBeginPolygon,ptr_gluTessBeginPolygon,gluTessBeginPolygon,Ptr GLUtesselator -> Ptr a -> IO ())
API_ENTRY_SAFE(dyn_gluTessCallback,ptr_gluTessCallback,gluTessCallback,Ptr GLUtesselator -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(dyn_gluTessEndContour,ptr_gluTessEndContour,gluTessEndContour,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(dyn_gluTessEndPolygon,ptr_gluTessEndPolygon,gluTessEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY(dyn_gluTessNormal,ptr_gluTessNormal,gluTessNormal,Ptr GLUtesselator -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(dyn_gluTessProperty,ptr_gluTessProperty,gluTessProperty,Ptr GLUtesselator -> GLenum -> GLdouble -> IO ())
API_ENTRY_SAFE(dyn_gluTessVertex,ptr_gluTessVertex,gluTessVertex,Ptr GLUtesselator -> Ptr GLdouble -> Ptr a -> IO ())
API_ENTRY(dyn_gluUnProject,ptr_gluUnProject,gluUnProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY(dyn_gluUnProject4,ptr_gluUnProject4,gluUnProject4,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> GLclampd -> GLclampd -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
