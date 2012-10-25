{-# LANGUAGE ForeignFunctionInterface, CPP #-}
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.GLU.Raw.Functions
-- Copyright   :  (c) Sven Panne 2009
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  sven.panne@aedion.de
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
import Graphics.Rendering.OpenGL.Raw.Core31.Types

#include "HsGLURaw.h"

--------------------------------------------------------------------------------

API_ENTRY_SAFE(gluBeginCurve,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(gluBeginPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(gluBeginSurface,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(gluBeginTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(gluBuild1DMipmapLevels,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(gluBuild1DMipmaps,GLenum -> GLint -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(gluBuild2DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(gluBuild2DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(gluBuild3DMipmapLevels,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> GLint -> GLint -> GLint -> Ptr a -> IO GLint)
API_ENTRY(gluBuild3DMipmaps,GLenum -> GLint -> GLsizei -> GLsizei -> GLsizei -> GLenum -> GLenum -> Ptr a -> IO GLint)
API_ENTRY(gluCheckExtension,Ptr GLubyte -> Ptr GLubyte -> IO GLboolean)
API_ENTRY_SAFE(gluCylinder,Ptr GLUquadric -> GLdouble -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(gluDeleteNurbsRenderer,Ptr GLUnurbs -> IO ())
API_ENTRY(gluDeleteQuadric,Ptr GLUquadric -> IO ())
API_ENTRY_SAFE(gluDeleteTess,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(gluDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(gluEndCurve,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(gluEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(gluEndSurface,Ptr GLUnurbs -> IO ())
API_ENTRY_SAFE(gluEndTrim,Ptr GLUnurbs -> IO ())
API_ENTRY(gluErrorString,GLenum -> IO (Ptr GLubyte))
API_ENTRY_SAFE(gluGetNurbsProperty,Ptr GLUnurbs -> GLenum -> Ptr GLfloat -> IO ())
API_ENTRY(gluGetString,GLenum -> IO (Ptr GLubyte))
API_ENTRY_SAFE(gluGetTessProperty,Ptr GLUtesselator -> GLenum -> Ptr GLdouble -> IO ())
API_ENTRY_SAFE(gluLoadSamplingMatrices,Ptr GLUnurbs -> Ptr GLfloat -> Ptr GLfloat -> Ptr GLint -> IO ())
API_ENTRY(gluLookAt,GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(gluNewNurbsRenderer,IO (Ptr GLUnurbs))
API_ENTRY(gluNewQuadric,IO (Ptr GLUquadric))
API_ENTRY(gluNewTess,IO (Ptr GLUtesselator))
API_ENTRY_SAFE(gluNextContour,Ptr GLUtesselator -> GLenum -> IO ())
API_ENTRY_SAFE(gluNurbsCallback,Ptr GLUnurbs -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(gluNurbsCallbackData,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY_SAFE(gluNurbsCallbackDataEXT,Ptr GLUnurbs -> Ptr a -> IO ())
API_ENTRY_SAFE(gluNurbsCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY_SAFE(gluNurbsProperty,Ptr GLUnurbs -> GLenum -> GLfloat -> IO ())
API_ENTRY_SAFE(gluNurbsSurface,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> Ptr GLfloat -> GLint -> GLint -> Ptr GLfloat -> GLint -> GLint -> GLenum -> IO ())
API_ENTRY(gluOrtho2D,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(gluPartialDisk,Ptr GLUquadric -> GLdouble -> GLdouble -> GLint -> GLint -> GLdouble -> GLdouble -> IO ())
API_ENTRY(gluPerspective,GLdouble -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY(gluPickMatrix,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLint -> IO ())
API_ENTRY(gluProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY_SAFE(gluPwlCurve,Ptr GLUnurbs -> GLint -> Ptr GLfloat -> GLint -> GLenum -> IO ())
API_ENTRY_SAFE(gluQuadricCallback,Ptr GLUquadric -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(gluQuadricDrawStyle,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(gluQuadricNormals,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(gluQuadricOrientation,Ptr GLUquadric -> GLenum -> IO ())
API_ENTRY_SAFE(gluQuadricTexture,Ptr GLUquadric -> GLboolean -> IO ())
API_ENTRY(gluScaleImage,GLenum -> GLsizei -> GLsizei -> GLenum -> Ptr a -> GLsizei -> GLsizei -> GLenum -> Ptr b -> IO GLint)
API_ENTRY_SAFE(gluSphere,Ptr GLUquadric -> GLdouble -> GLint -> GLint -> IO ())
API_ENTRY_SAFE(gluTessBeginContour,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(gluTessBeginPolygon,Ptr GLUtesselator -> Ptr a -> IO ())
API_ENTRY_SAFE(gluTessCallback,Ptr GLUtesselator -> GLenum -> FunPtr a -> IO ())
API_ENTRY_SAFE(gluTessEndContour,Ptr GLUtesselator -> IO ())
API_ENTRY_SAFE(gluTessEndPolygon,Ptr GLUtesselator -> IO ())
API_ENTRY(gluTessNormal,Ptr GLUtesselator -> GLdouble -> GLdouble -> GLdouble -> IO ())
API_ENTRY_SAFE(gluTessProperty,Ptr GLUtesselator -> GLenum -> GLdouble -> IO ())
API_ENTRY_SAFE(gluTessVertex,Ptr GLUtesselator -> Ptr GLdouble -> Ptr a -> IO ())
API_ENTRY(gluUnProject,GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
API_ENTRY(gluUnProject4,GLdouble -> GLdouble -> GLdouble -> GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLint -> GLclampd -> GLclampd -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> Ptr GLdouble -> IO GLint)
