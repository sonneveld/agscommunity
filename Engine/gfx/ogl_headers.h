//=============================================================================
//
// Adventure Game Studio (AGS)
//
// Copyright (C) 1999-2011 Chris Jones and 2011-20xx others
// The full list of copyright holders can be found in the Copyright.txt
// file, which is part of this source code distribution.
//
// The AGS source code is provided under the Artistic License 2.0.
// A copy of this license can be found in the file License.txt and at
// http://www.opensource.org/licenses/artistic-license-2.0.php
//
//=============================================================================
//
// OpenGL includes and definitions for various platforms
//
//=============================================================================

#include "allegro.h"

#ifdef WINDOWS_VERSION
// need this as it renames BITMAP
#include "winalleg.h"
#endif

#if defined(ANDROID_VERSION)

#include <GLES/gl.h>
#include <GLES2/gl2.h>

#ifndef GL_GLEXT_PROTOTYPES
#define GL_GLEXT_PROTOTYPES
#endif

// TODO: we probably should not use GLExt since we use GLES2
#include <GLES/glext.h>

#define HDC void*
#define HGLRC void*
#define HWND void*
#define HINSTANCE void*

#elif defined(IOS_VERSION)

#include <OpenGLES/ES1/gl.h>

#ifndef GL_GLEXT_PROTOTYPES
#define GL_GLEXT_PROTOTYPES
#endif

#include <OpenGLES/ES1/glext.h>

#define HDC void*
#define HGLRC void*
#define HWND void*
#define HINSTANCE void*

#elif defined(AGS_ENABLE_OPENGL_DRIVER)

#include "SDL.h"

#include "glad/glad.h"

#define HDC void*
#define HGLRC void*
#define HWND void*
#define HINSTANCE void*

#else 

#error Unsupported platform

#endif
