/* -----------------------------------------------------------------------------
 *
 * Module      :  GL extension support for Graphics.Rendering.GLU.Raw
 * Copyright   :  (c) Sven Panne 2009
 * License     :  BSD-style (see the file LICENSE)
 * 
 * Maintainer  :  sven.panne@aedion.de
 * Stability   :  stable
 * Portability :  portable
 *
 * This header should only define preprocessor macros!
 *
 * -------------------------------------------------------------------------- */

#ifndef HSGLURAW_H
#define HSGLURAW_H

/* NOTE: The macro must immediately start with the foreign declaration,
   otherwise the magic mangler (hack_foreign) in the Hugs build system
   doesn't recognize it. */
#define API_ENTRY_INTERNAL(_entry,_ty,_safety)						\
foreign import CALLCONV _safety "dynamic" dyn_/**/_entry :: Graphics.Rendering.GLU.Raw.APIEntry.Invoker (_ty) ; \
_entry :: (_ty) ; \
_entry = dyn_/**/_entry ptr_/**/_entry ; \
ptr_/**/_entry :: FunPtr a ; \
ptr_/**/_entry = unsafePerformIO (Graphics.Rendering.GLU.Raw.APIEntry.getAPIEntry "_entry") ; \
{-# NOINLINE ptr_/**/_entry #-}

#define API_ENTRY(_entry,_ty) API_ENTRY_INTERNAL(_entry,_ty,unsafe)

#define API_ENTRY_SAFE(_entry,_ty) API_ENTRY_INTERNAL(_entry,_ty,safe)

#endif
