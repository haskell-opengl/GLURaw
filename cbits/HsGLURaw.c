/* -----------------------------------------------------------------------------
 *
 * Module      :  C support for Graphics.Rendering.GLU.Raw.Extensions
 * Copyright   :  (c) Sven Panne 2009
 * License     :  BSD-style (see the file LICENSE)
 *
 * Maintainer  :  sven.panne@aedion.de
 * Stability   :  stable
 * Portability :  portable
 *
 * -------------------------------------------------------------------------- */

#if defined(USE_GETPROCADDRESS)

#define WIN32_LEAN_AND_MEAN
#include <windows.h>

void*
hs_GLU_getProcAddress(const char *name)
{
  static int firstTime = 1;
  static HMODULE handle = NULL;

  if (firstTime) {
    firstTime = 0;
    handle = LoadLibrary(TEXT("glu32"));
  }

  return handle ? GetProcAddress(handle, name) : NULL;
}

/* -------------------------------------------------------------------------- */
#elif defined(USE_NSADDRESSOFSYMBOL)

#include <mach-o/dyld.h>
#include <stdlib.h>
#include <string.h>

void*
hs_GLU_getProcAddress(const char *name)
{
  NSSymbol symbol;

  /* Prepend a '_' for the Unix C symbol mangling convention */
  char* symbolName = (char*)malloc(strlen(name) + 2);
  if (!symbolName) {
    return NULL;
  }
  symbolName[0] = '_';
  strcpy(symbolName + 1, name);

  if (!NSIsSymbolNameDefined(symbolName)) {
    free(symbolName);
    return NULL;
  }

  symbol = NSLookupAndBindSymbol(symbolName);
  free(symbolName);
  if (!symbol) {
    return NULL;
  }

  return NSAddressOfSymbol(symbol);
}

/* -------------------------------------------------------------------------- */
#elif defined(USE_DLSYM)

#include <stdlib.h>
#include <dlfcn.h>

#ifndef __APPLE__
#include <stdio.h>
#include <GL/glu.h>
#endif

void*
hs_GLU_getProcAddress(const char *name)
{
  static int firstTime = 1;
  static void *handle = NULL;

  if (firstTime) {
    firstTime = 0;
    /* Get a handle for our executable. */
    handle = dlopen(NULL, RTLD_LAZY);
  }

#ifndef __APPLE__
  /* Hack to force linking of GLU on Linux */
  FILE *bitbucket = fopen("/dev/null", "w");
  fprintf(bitbucket, "%p\n", gluBeginCurve);
  fclose(bitbucket); 
#endif

  return handle ? dlsym(handle, name) : NULL;
}

/* -------------------------------------------------------------------------- */
#else

#error "Don't know how to retrieve GLU entries"

#endif
