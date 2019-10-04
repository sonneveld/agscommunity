/*
 * Note that this file is no longer generated by autoheader as it results in
 * too much namespace pollution.  If you add define a new macro in
 * configure.in or aclocal.m4, you must add an entry to this file.
 */

/* Define if you want support for n bpp modes. */
#cmakedefine ALLEGRO_COLOR8
#cmakedefine ALLEGRO_COLOR16
#cmakedefine ALLEGRO_COLOR24
#cmakedefine ALLEGRO_COLOR32

/*---------------------------------------------------------------------------*/

/* Define to 1 if you have the corresponding header file. */
#cmakedefine ALLEGRO_HAVE_DIRENT_H
#cmakedefine ALLEGRO_HAVE_INTTYPES_H
#cmakedefine ALLEGRO_HAVE_LINUX_AWE_VOICE_H
#cmakedefine ALLEGRO_HAVE_LINUX_INPUT_H
#cmakedefine ALLEGRO_HAVE_LINUX_JOYSTICK_H
#cmakedefine ALLEGRO_HAVE_LINUX_SOUNDCARD_H
#cmakedefine ALLEGRO_HAVE_MACHINE_SOUNDCARD_H
#cmakedefine ALLEGRO_HAVE_SOUNDCARD_H
#cmakedefine ALLEGRO_HAVE_STDINT_H
#cmakedefine ALLEGRO_HAVE_SV_PROCFS_H
#cmakedefine ALLEGRO_HAVE_SYS_IO_H
#cmakedefine ALLEGRO_HAVE_SYS_SOUNDCARD_H
#cmakedefine ALLEGRO_HAVE_SYS_STAT_H
#cmakedefine ALLEGRO_HAVE_SYS_TIME_H
#cmakedefine ALLEGRO_HAVE_SYS_UTSNAME_H

/* Define to 1 if the corresponding functions are available. */
#cmakedefine ALLEGRO_HAVE_GETEXECNAME
#cmakedefine ALLEGRO_HAVE_MEMCMP
#cmakedefine ALLEGRO_HAVE_MKSTEMP
#cmakedefine ALLEGRO_HAVE_MMAP
#cmakedefine ALLEGRO_HAVE_MPROTECT
#cmakedefine ALLEGRO_HAVE_POSIX_MONOTONIC_CLOCK
#cmakedefine ALLEGRO_HAVE_SCHED_YIELD
#cmakedefine ALLEGRO_HAVE_STRICMP
#cmakedefine ALLEGRO_HAVE_STRLWR
#cmakedefine ALLEGRO_HAVE_STRUPR
#cmakedefine ALLEGRO_HAVE_SYSCONF

/* Define to 1 if procfs reveals argc and argv */
#cmakedefine ALLEGRO_HAVE_PROCFS_ARGCV

/*---------------------------------------------------------------------------*/

/* Define if target machine is little endian. */
#cmakedefine ALLEGRO_LITTLE_ENDIAN

/* Define if target machine is big endian. */
#cmakedefine ALLEGRO_BIG_ENDIAN

/* Define for Unix platforms, to use C convention for bank switching. */
#cmakedefine ALLEGRO_NO_ASM

/* Define if compiler prepends underscore to symbols. */
#cmakedefine ALLEGRO_ASM_PREFIX

/* Define if assembler supports MMX. */
#cmakedefine ALLEGRO_MMX

/* Define if assembler supports SSE. */
#cmakedefine ALLEGRO_SSE

/* Define if target platform is Darwin. */
#cmakedefine ALLEGRO_DARWIN

/* Define if you have the pthread library. */
#cmakedefine ALLEGRO_HAVE_LIBPTHREAD

/* Define if constructor attribute is supported. */
#cmakedefine ALLEGRO_USE_CONSTRUCTOR

/* Define if you need to use a magic main. */
#cmakedefine ALLEGRO_WITH_MAGIC_MAIN

/* Define if dynamically loaded modules are supported. */
#cmakedefine ALLEGRO_WITH_MODULES

/*---------------------------------------------------------------------------*/

/* Define if you need support for X-Windows. */
#cmakedefine ALLEGRO_WITH_XWINDOWS

/* Define if MIT-SHM extension is supported. */
#cmakedefine ALLEGRO_XWINDOWS_WITH_SHM

/* Define if XCursor ARGB extension is available. */
#cmakedefine ALLEGRO_XWINDOWS_WITH_XCURSOR

/* Define if DGA version 2.0 or newer is supported */
#cmakedefine ALLEGRO_XWINDOWS_WITH_XF86DGA2

/* Define if XF86VidMode extension is supported. */
#cmakedefine ALLEGRO_XWINDOWS_WITH_XF86VIDMODE

/* Define if XIM extension is supported. */
#cmakedefine ALLEGRO_XWINDOWS_WITH_XIM

/* Define if xpm bitmap support is available. */
#cmakedefine ALLEGRO_XWINDOWS_WITH_XPM

/*---------------------------------------------------------------------------*/

/* Define if target platform is linux. */
#cmakedefine ALLEGRO_LINUX

/* Define to enable Linux console fbcon driver. */
#cmakedefine ALLEGRO_LINUX_FBCON

/* Define to enable Linux console SVGAlib driver. */
#cmakedefine ALLEGRO_LINUX_SVGALIB

/* Define if SVGAlib driver can check vga_version. */
#cmakedefine ALLEGRO_LINUX_SVGALIB_HAVE_VGA_VERSION

/* Define to enable Linux console VBE/AF driver. */
#cmakedefine ALLEGRO_LINUX_VBEAF

/* Define to enable Linux console VGA driver. */
#cmakedefine ALLEGRO_LINUX_VGA

/* Define to enable Linux console tslib mouse driver. */
#cmakedefine ALLEGRO_LINUX_TSLIB

/*---------------------------------------------------------------------------*/

/* Define to the installed ALSA version. */
#cmakedefine ALLEGRO_ALSA_VERSION @ALLEGRO_ALSA_VERSION@

/* Define if ALSA DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_ALSADIGI

/* Define if ALSA MIDI driver is supported. */
#cmakedefine ALLEGRO_WITH_ALSAMIDI

/* Define if aRts DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_ARTSDIGI

/* Define if ESD DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_ESDDIGI

/* Define if JACK DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_JACKDIGI

/* Define if OSS DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_OSSDIGI

/* Define if OSS MIDI driver is supported. */
#cmakedefine ALLEGRO_WITH_OSSMIDI

/* Define if SGI AL DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_SGIALDIGI

/* Define if SDL2 DIGI driver is supported. */
#cmakedefine ALLEGRO_WITH_SDL2DIGI

/*---------------------------------------------------------------------------*/

/* Define to (void *)-1, if MAP_FAILED is not defined. */
/* TODO: rename this */
#cmakedefine MAP_FAILED @MAP_FAILED@

/* Define as the return type of signal handlers (`int' or `void'). */
/* TODO: rename this */
/* XXX too lazy to configure this */
#define RETSIGTYPE void

/* Define to empty if `const' does not conform to ANSI C. */
#cmakedefine const

/* Define to `__inline__' or `__inline' if that's what the C compiler
   calls it, or to nothing if 'inline' is not supported under any name.  */
#ifndef __cplusplus
#cmakedefine inline
#endif

/* Define to `unsigned int' if <sys/types.h> does not define. */
#cmakedefine size_t

/*---------------------------------------------------------------------------*/
/* vi:set ft=c: */
