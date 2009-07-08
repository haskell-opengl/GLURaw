{-# LANGUAGE ForeignFunctionInterface, CPP #-}
-- #hide
--------------------------------------------------------------------------------
-- |
-- Module      :  Graphics.Rendering.GLU.Raw.APIEntry
-- Copyright   :  (c) Sven Panne 2009
-- License     :  BSD-style (see the file LICENSE)
--
-- Maintainer  :  sven.panne@aedion.de
-- Stability   :  stable
-- Portability :  portable
--
-- This module offers a portable way to retrieve GLUT entries, providing a
-- portability layer upon platform-specific mechanisms like @dlsym@,
-- @GetProcAddress@ or @NSAddressOfSymbol@.
--
--------------------------------------------------------------------------------

module Graphics.Rendering.GLU.Raw.APIEntry (
   Invoker, getAPIEntry,
   FunPtr, unsafePerformIO
) where

import Foreign.C.String
import Foreign.Marshal.Error
import Foreign.Ptr
import System.IO.Unsafe

#ifdef __HUGS__
{-# CFILES cbits/HsOpenGLRaw.c #-}
#endif

--------------------------------------------------------------------------------

type Invoker a = FunPtr a -> a

-- | Retrieve a GLU API entry by name. Throws a userError when no entry with the
-- given name was found.
getAPIEntry :: String -> IO (FunPtr a)
getAPIEntry extensionEntry =
   throwIfNullFunPtr ("unknown GLU entry " ++ extensionEntry) $
      withCString extensionEntry hs_GLU_getProcAddress

throwIfNullFunPtr :: String -> IO (FunPtr a) -> IO (FunPtr a)
throwIfNullFunPtr = throwIf (== nullFunPtr) . const

foreign import ccall unsafe "hs_GLU_getProcAddress"
   hs_GLU_getProcAddress :: CString -> IO (FunPtr a)
