
#include "ac/dynobj/scriptaudioclip.h"
#include "util/datastream.h"

using AGS::Common::CDataStream;

void ScriptAudioClip::ReadFromFile(CDataStream *in)
{
    char padding[3] = {0,0,0};

    id = in->ReadInt32();
    in->ReadArray(scriptName, sizeof(char), SCRIPTAUDIOCLIP_SCRIPTNAMELENGTH);
    in->ReadArray(fileName, sizeof(char), SCRIPTAUDIOCLIP_FILENAMELENGTH);
    bundlingType = in->ReadInt8();
    type = in->ReadInt8();
    fileType = in->ReadInt8();
    defaultRepeat = in->ReadInt8();
    in->ReadInt8(); // Padding so that the next short is aligned
    defaultPriority = in->ReadInt16();
    defaultVolume = in->ReadInt16();
    in->ReadArray(&padding, sizeof(char),
        get_padding(SCRIPTAUDIOCLIP_SCRIPTNAMELENGTH + SCRIPTAUDIOCLIP_FILENAMELENGTH + 1));
    reserved = in->ReadInt32();
}
