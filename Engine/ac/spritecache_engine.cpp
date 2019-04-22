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
// Implementation from sprcache.cpp specific to Engine runtime
//
//=============================================================================

// Headers, as they are in sprcache.cpp
#ifdef _MANAGED
// ensure this doesn't get compiled to .NET IL
#pragma unmanaged
#pragma warning (disable: 4996 4312)  // disable deprecation warnings
#endif

#include "ac/spritecache.h"

#include "cn_ac.h"
#include "ee_util.h"

//=============================================================================
// Engine-specific implementation split out of sprcache.cpp
//=============================================================================

void SpriteCache::initFile_initNullSpriteParams(sprkey_t index)
{
    // make it a blue cup, to avoid crashes
    _sprInfos[index].Width = _sprInfos[0].Width;
    _sprInfos[index].Height = _sprInfos[0].Height;
    _spriteData[index].Offset = _spriteData[0].Offset;
    _spriteData[index].Flags = SPRCACHEFLAG_DOESNOTEXIST | SPRCACHEFLAG_REMAPPED;
}
