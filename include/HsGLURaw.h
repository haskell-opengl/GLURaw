/* -----------------------------------------------------------------------------
 *
 * Module      :  GL extension support for Graphics.Rendering.GLU.Raw
 * Copyright   :  (c) Sven Panne 2013
 * License     :  BSD3
 * 
 * Maintainer  :  Sven Panne <svenpanne@gmail.com>
 * Stability   :  stable
 * Portability :  portable
 *
 * This header should only define preprocessor macros!
 *
 * -------------------------------------------------------------------------- */

#ifndef HSGLURAW_H
#define HSGLURAW_H

#define HASH #

/* NOTE: The macro must immediately start with the foreign declaration,
   otherwise the magic mangler (hack_foreign) in the Hugs build system
   doesn't recognize it. */
#define API_ENTRY_INTERNAL(_dyn_entry,_ptr_entry,_entry,_ty,_safety) \
foreign import CALLCONV _safety "dynamic" _dyn_entry :: Graphics.Rendering.GLU.Raw.APIEntry.Invoker (_ty) ; \
_entry :: (_ty) ; \
_entry = _dyn_entry _ptr_entry ; \
_ptr_entry :: FunPtr a ; \
_ptr_entry = unsafePerformIO (Graphics.Rendering.GLU.Raw.APIEntry.getAPIEntry "_entry") ; \
{-HASH NOINLINE _ptr_entry HASH-}

#define API_ENTRY(_dyn_entry,_ptr_entry,_entry,_ty) API_ENTRY_INTERNAL(_dyn_entry,_ptr_entry,_entry,_ty,unsafe)

#define API_ENTRY_SAFE(_dyn_entry,_ptr_entry,_entry,_ty) API_ENTRY_INTERNAL(_dyn_entry,_ptr_entry,_entry,_ty,safe)

#endif
