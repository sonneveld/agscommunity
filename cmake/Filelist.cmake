
set (dos_sources
    Engine/platform/dos/acpldos.cpp
    Engine/platform/dos/device/cdrom32.cpp
    Engine/platform/dos/device/mouse32.cpp
    Engine/libsrc/libcda-0.5/djgpp.c
    Engine/libsrc/libcda-0.5/bcc.c
)

set (linux_sources
    Engine/platform/linux/acpllnx.cpp
    Engine/platform/linux/binreloc.c
    Engine/platform/linux/binreloc.h
    Engine/libsrc/libcda-0.5/linux.c
    Engine/libsrc/libcda-0.5/libcda.h
)

set (wii_sources
    Engine/util/mutex_wii.h
    Engine/util/thread_wii.h
)

set (psp_sources
    Engine/platform/psp/acplpsp.cpp
    Engine/util/library_psp.h
    Engine/util/mutex_psp.h
    Engine/util/thread_psp.h
)

set (ios_sources
    Engine/platform/ios/acplios.cpp
)

set (android_sources
    Engine/platform/android/acpland.cpp
)

set (macos_sources
    Engine/platform/osx/alplmac.mm
    Engine/platform/osx/acplmac.cpp
)

set (windows_sources
    Engine/libsrc/libcda-0.5/windows.c
    Engine/libsrc/libcda-0.5/libcda.h    
    Engine/platform/windows/acplwin.cpp
    Engine/platform/windows/debug/namedpipesagsdebugger.cpp
    Engine/platform/windows/debug/namedpipesagsdebugger.h
    Engine/main/minidump.cpp
    
)

set (test_sources
    Engine/test/test_all.cpp
    Engine/test/test_all.h
    Engine/test/test_file.cpp
    Engine/test/test_gfx.cpp
    Engine/test/test_inifile.cpp
    Engine/test/test_math.cpp
    Engine/test/test_memory.cpp
    Engine/test/test_sprintf.cpp
    Engine/test/test_string.cpp
    Engine/test/test_version.cpp
)

set (lib_sources
    Common/libinclude/aastr.h
    Common/libinclude/aautil.h
    Common/libinclude/alfont.h
    Common/libinclude/alfontdll.h
    Common/libinclude/almp3.h
    Common/libinclude/almp3dll.h
    Common/libinclude/alogg.h
    Common/libinclude/aloggdll.h
    Common/libinclude/apeg.h
    Common/libinclude/common.h
    Common/libinclude/genre.h
    Common/libinclude/getbits.h
    Common/libinclude/getblk.h
    Common/libinclude/huffman.h
    Common/libinclude/l2tables.h
    Common/libinclude/libcda.h
    Common/libinclude/mpeg1dec.h
    Common/libinclude/mpg123.h
    Common/libinclude/mpglib.h
    Common/libsrc/aastr-0.1.1/AAROT.c
    Common/libsrc/aastr-0.1.1/aastr.c
    Common/libsrc/aastr-0.1.1/aastr.h
    Common/libsrc/aastr-0.1.1/aautil.c
    Common/libsrc/aastr-0.1.1/aautil.h
    Engine/libsrc/almp3-2.0.5/decoder/common.c
    Engine/libsrc/almp3-2.0.5/decoder/dct64_i386.c
    Engine/libsrc/almp3-2.0.5/decoder/decode_i386.c
    Engine/libsrc/almp3-2.0.5/decoder/huffman.h
    Engine/libsrc/almp3-2.0.5/decoder/interface.c
    Engine/libsrc/almp3-2.0.5/decoder/l2tables.h
    Engine/libsrc/almp3-2.0.5/decoder/layer2.c
    Engine/libsrc/almp3-2.0.5/decoder/layer3.c
    Engine/libsrc/almp3-2.0.5/decoder/mpg123.h
    Engine/libsrc/almp3-2.0.5/decoder/mpglib.h
    Engine/libsrc/almp3-2.0.5/decoder/tabinit.c
    Engine/libsrc/almp3/almp3.c
    Engine/libsrc/alogg/alogg.c
    Engine/libsrc/apeg-1.2.1/adisplay.c
    Engine/libsrc/apeg-1.2.1/audio/aaudio.c
    Engine/libsrc/apeg-1.2.1/audio/apegcommon.c
    Engine/libsrc/apeg-1.2.1/audio/dct64.c
    Engine/libsrc/apeg-1.2.1/audio/decode_1to1.c
    Engine/libsrc/apeg-1.2.1/audio/decode_2to1.c
    Engine/libsrc/apeg-1.2.1/audio/decode_4to1.c
    Engine/libsrc/apeg-1.2.1/audio/layer1.c
    Engine/libsrc/apeg-1.2.1/audio/layer2.c
    Engine/libsrc/apeg-1.2.1/audio/layer3.c
    Engine/libsrc/apeg-1.2.1/audio/mpg123.c
    Engine/libsrc/apeg-1.2.1/audio/readers.c
    Engine/libsrc/apeg-1.2.1/audio/tabinit.c
    Engine/libsrc/apeg-1.2.1/audio/vbrhead.c
    Engine/libsrc/apeg-1.2.1/getbits.c
    Engine/libsrc/apeg-1.2.1/getblk.c
    Engine/libsrc/apeg-1.2.1/gethdr.c
    Engine/libsrc/apeg-1.2.1/getpic.c
    Engine/libsrc/apeg-1.2.1/idct.c
    Engine/libsrc/apeg-1.2.1/motion.c
    Engine/libsrc/apeg-1.2.1/mpeg1dec.c
    Engine/libsrc/apeg-1.2.1/ogg.c
    Engine/libsrc/apeg-1.2.1/recon.c
    Engine/libsrc/hq2x/hq2x3x.cpp

    Common/libinclude/aldumb.h
    Common/libinclude/dumb.h
    Common/libinclude/internal/aldumb.h
    Common/libinclude/internal/dumb.h
    Common/libinclude/internal/it.h
    Engine/libsrc/dumb-0.9.2/allegro/alplay.c
    Engine/libsrc/dumb-0.9.2/allegro/datduh.c
    Engine/libsrc/dumb-0.9.2/allegro/datit.c
    Engine/libsrc/dumb-0.9.2/allegro/datmod.c
    Engine/libsrc/dumb-0.9.2/allegro/dats3m.c
    Engine/libsrc/dumb-0.9.2/allegro/datunld.c
    Engine/libsrc/dumb-0.9.2/allegro/datxm.c
    Engine/libsrc/dumb-0.9.2/allegro/packfile.c
    Engine/libsrc/dumb-0.9.2/core/atexit.c
    Engine/libsrc/dumb-0.9.2/core/duhlen.c
    Engine/libsrc/dumb-0.9.2/core/dumbfile.c
    Engine/libsrc/dumb-0.9.2/core/loadduh.c
    Engine/libsrc/dumb-0.9.2/core/makeduh.c
    Engine/libsrc/dumb-0.9.2/core/rawsig.c
    Engine/libsrc/dumb-0.9.2/core/readduh.c
    Engine/libsrc/dumb-0.9.2/core/register.c
    Engine/libsrc/dumb-0.9.2/core/rendduh.c
    Engine/libsrc/dumb-0.9.2/core/rendsig.c
    Engine/libsrc/dumb-0.9.2/core/unload.c
    Engine/libsrc/dumb-0.9.2/helpers/clickrem.c
    Engine/libsrc/dumb-0.9.2/helpers/memfile.c
    Engine/libsrc/dumb-0.9.2/helpers/resample.c
    Engine/libsrc/dumb-0.9.2/helpers/sampbuf.c
    Engine/libsrc/dumb-0.9.2/helpers/silence.c
    Engine/libsrc/dumb-0.9.2/helpers/stdfile.c
    Engine/libsrc/dumb-0.9.2/it/itload.c
    Engine/libsrc/dumb-0.9.2/it/itmisc.c
    Engine/libsrc/dumb-0.9.2/it/itorder.c
    Engine/libsrc/dumb-0.9.2/it/itread.c
    Engine/libsrc/dumb-0.9.2/it/itrender.c
    Engine/libsrc/dumb-0.9.2/it/itunload.c
    Engine/libsrc/dumb-0.9.2/it/loadmod.c
    Engine/libsrc/dumb-0.9.2/it/loads3m.c
    Engine/libsrc/dumb-0.9.2/it/loadxm.c
    Engine/libsrc/dumb-0.9.2/it/readmod.c
    Engine/libsrc/dumb-0.9.2/it/reads3m.c
    Engine/libsrc/dumb-0.9.2/it/readxm.c
    Engine/libsrc/dumb-0.9.2/it/xmeffect.c
)

set(common_sources
    Common/ac/audiocliptype.cpp
    Common/ac/audiocliptype.h
    Common/ac/characterinfo.cpp
    Common/ac/characterinfo.h
    Common/ac/common.cpp
    Common/ac/common.h
    Common/ac/common_defines.h
    Common/ac/dialogtopic.cpp
    Common/ac/dialogtopic.h
    Common/ac/dynobj/scriptaudioclip.cpp
    Common/ac/dynobj/scriptaudioclip.h
    Common/ac/game_version.h
    Common/ac/gamesetupstruct.cpp
    Common/ac/gamesetupstruct.h
    Common/ac/gamesetupstructbase.cpp
    Common/ac/gamesetupstructbase.h
    Common/ac/gamestructdefines.h
    Common/ac/interfacebutton.h
    Common/ac/interfaceelement.h
    Common/ac/inventoryiteminfo.cpp
    Common/ac/inventoryiteminfo.h
    Common/ac/mousecursor.cpp
    Common/ac/mousecursor.h
    Common/ac/oldgamesetupstruct.h
    Common/ac/spritecache.cpp
    Common/ac/spritecache.h
    Common/ac/view.cpp
    Common/ac/view.h
    Common/ac/wordsdictionary.cpp
    Common/ac/wordsdictionary.h
    Common/api/stream_api.h
    Common/core/asset.cpp
    Common/core/asset.h
    Common/core/assetmanager.cpp
    Common/core/assetmanager.h
    Common/core/def_version.h
    Common/core/endianness.h
    Common/core/types.h
    Common/debug/assert.h
    Common/debug/debugmanager.cpp
    Common/debug/debugmanager.h
    Common/debug/out.h
    Common/debug/outputhandler.h
    Common/font/agsfontrenderer.h
    Common/font/fonts.cpp
    Common/font/fonts.h
    Common/font/ttffontrenderer.cpp
    Common/font/ttffontrenderer.h
    Common/font/wfnfont.cpp
    Common/font/wfnfont.h
    Common/font/wfnfontrenderer.cpp
    Common/font/wfnfontrenderer.h
    Common/game/customproperties.cpp
    Common/game/customproperties.h
    Common/game/interactions.cpp
    Common/game/interactions.h
    Common/game/main_game_file.cpp
    Common/game/main_game_file.h
    Common/game/plugininfo.h
    Common/game/room_file.cpp
    Common/game/room_file.h
    Common/game/room_file_deprecated.cpp
    Common/game/room_version.h
    Common/game/roomstruct.cpp
    Common/game/roomstruct.h
    Common/gfx/allegrobitmap.cpp
    Common/gfx/allegrobitmap.h
    Common/gfx/bitmap.cpp
    Common/gfx/bitmap.h
    Common/gfx/gfx_def.h
    Common/gui/guibutton.cpp
    Common/gui/guibutton.h
    Common/gui/guidefines.h
    Common/gui/guiinv.cpp
    Common/gui/guiinv.h
    Common/gui/guilabel.cpp
    Common/gui/guilabel.h
    Common/gui/guilistbox.cpp
    Common/gui/guilistbox.h
    Common/gui/guimain.cpp
    Common/gui/guimain.h
    Common/gui/guiobject.cpp
    Common/gui/guiobject.h
    Common/gui/guislider.cpp
    Common/gui/guislider.h
    Common/gui/guitextbox.cpp
    Common/gui/guitextbox.h
    Common/script/cc_error.cpp
    Common/script/cc_error.h
    Common/script/cc_options.cpp
    Common/script/cc_options.h
    Common/script/cc_script.cpp
    Common/script/cc_script.h
    Common/script/cc_treemap.cpp
    Common/script/cc_treemap.h
    Common/script/script_common.cpp
    Common/script/script_common.h
    Common/util/alignedstream.cpp
    Common/util/alignedstream.h
    Common/util/bbop.h
    Common/util/c99_snprintf.h
    Common/util/compress.cpp
    Common/util/compress.h
    Common/util/datastream.cpp
    Common/util/datastream.h
    Common/util/directory.cpp
    Common/util/directory.h
    Common/util/error.h
    Common/util/file.cpp
    Common/util/file.h
    Common/util/filestream.cpp
    Common/util/filestream.h
    Common/util/geometry.cpp
    Common/util/geometry.h
    Common/util/ini_util.cpp
    Common/util/ini_util.h
    Common/util/inifile.cpp
    Common/util/inifile.h
    Common/util/lzw.cpp
    Common/util/lzw.h
    Common/util/math.h
    Common/util/memory.h
    Common/util/misc.cpp
    Common/util/misc.h
    Common/util/multifilelib.h
    Common/util/mutifilelib.cpp
    Common/util/path.cpp
    Common/util/path.h
    Common/util/proxystream.cpp
    Common/util/proxystream.h
    Common/util/stdio_compat.h
    Common/util/stdtr1compat.h
    Common/util/stream.cpp
    Common/util/stream.h
    Common/util/string.cpp
    Common/util/string.h
    Common/util/string_types.h
    Common/util/string_utils.cpp
    Common/util/string_utils.h
    Common/util/textreader.h
    Common/util/textstreamreader.cpp
    Common/util/textstreamreader.h
    Common/util/textstreamwriter.cpp
    Common/util/textstreamwriter.h
    Common/util/textwriter.h
    Common/util/version.cpp
    Common/util/version.h
    Common/util/wgt2allg.cpp
    Common/util/wgt2allg.h
)

set(engine_sources
    Engine/ac/asset_helper.h
    Engine/ac/audiochannel.cpp
    Engine/ac/audiochannel.h
    Engine/ac/audioclip.cpp
    Engine/ac/audioclip.h
    Engine/ac/button.cpp
    Engine/ac/button.h
    Engine/ac/cdaudio.cpp
    Engine/ac/cdaudio.h
    Engine/ac/character.cpp
    Engine/ac/character.h
    Engine/ac/charactercache.h
    Engine/ac/characterextras.cpp
    Engine/ac/characterextras.h
    Engine/ac/characterinfo_engine.cpp
    Engine/ac/datetime.cpp
    Engine/ac/datetime.h
    Engine/ac/dialog.cpp
    Engine/ac/dialog.h
    Engine/ac/dialogoptionsrendering.cpp
    Engine/ac/dialogoptionsrendering.h
    Engine/ac/display.cpp
    Engine/ac/display.h
    Engine/ac/draw.cpp
    Engine/ac/draw.h
    Engine/ac/draw_software.cpp
    Engine/ac/draw_software.h
    Engine/ac/drawingsurface.cpp
    Engine/ac/drawingsurface.h
    Engine/ac/dynamicsprite.cpp
    Engine/ac/dynamicsprite.h
    Engine/ac/dynobj/all_dynamicclasses.h
    Engine/ac/dynobj/all_scriptclasses.h
    Engine/ac/dynobj/cc_agsdynamicobject.cpp
    Engine/ac/dynobj/cc_agsdynamicobject.h
    Engine/ac/dynobj/cc_audiochannel.cpp
    Engine/ac/dynobj/cc_audiochannel.h
    Engine/ac/dynobj/cc_audioclip.cpp
    Engine/ac/dynobj/cc_audioclip.h
    Engine/ac/dynobj/cc_character.cpp
    Engine/ac/dynobj/cc_character.h
    Engine/ac/dynobj/cc_dialog.cpp
    Engine/ac/dynobj/cc_dialog.h
    Engine/ac/dynobj/cc_dynamicarray.cpp
    Engine/ac/dynobj/cc_dynamicarray.h
    Engine/ac/dynobj/cc_dynamicobject.cpp
    Engine/ac/dynobj/cc_dynamicobject.h
    Engine/ac/dynobj/cc_gui.cpp
    Engine/ac/dynobj/cc_gui.h
    Engine/ac/dynobj/cc_guiobject.cpp
    Engine/ac/dynobj/cc_guiobject.h
    Engine/ac/dynobj/cc_hotspot.cpp
    Engine/ac/dynobj/cc_hotspot.h
    Engine/ac/dynobj/cc_inventory.cpp
    Engine/ac/dynobj/cc_inventory.h
    Engine/ac/dynobj/cc_object.cpp
    Engine/ac/dynobj/cc_object.h
    Engine/ac/dynobj/cc_region.cpp
    Engine/ac/dynobj/cc_region.h
    Engine/ac/dynobj/cc_serializer.cpp
    Engine/ac/dynobj/cc_serializer.h
    Engine/ac/dynobj/managedobjectpool.cpp
    Engine/ac/dynobj/managedobjectpool.h
    Engine/ac/dynobj/scriptaudiochannel.h
    Engine/ac/dynobj/scriptcamera.cpp
    Engine/ac/dynobj/scriptcamera.h
    Engine/ac/dynobj/scriptdatetime.cpp
    Engine/ac/dynobj/scriptdatetime.h
    Engine/ac/dynobj/scriptdialog.h
    Engine/ac/dynobj/scriptdialogoptionsrendering.cpp
    Engine/ac/dynobj/scriptdialogoptionsrendering.h
    Engine/ac/dynobj/scriptdrawingsurface.cpp
    Engine/ac/dynobj/scriptdrawingsurface.h
    Engine/ac/dynobj/scriptdynamicsprite.cpp
    Engine/ac/dynobj/scriptdynamicsprite.h
    Engine/ac/dynobj/scriptfile.cpp
    Engine/ac/dynobj/scriptfile.h
    Engine/ac/dynobj/scriptgui.h
    Engine/ac/dynobj/scripthotspot.h
    Engine/ac/dynobj/scriptinvitem.h
    Engine/ac/dynobj/scriptmouse.h
    Engine/ac/dynobj/scriptobject.h
    Engine/ac/dynobj/scriptoverlay.cpp
    Engine/ac/dynobj/scriptoverlay.h
    Engine/ac/dynobj/scriptregion.h
    Engine/ac/dynobj/scriptstring.cpp
    Engine/ac/dynobj/scriptstring.h
    Engine/ac/dynobj/scriptsystem.h
    Engine/ac/dynobj/scriptuserobject.cpp
    Engine/ac/dynobj/scriptuserobject.h
    Engine/ac/dynobj/scriptviewframe.cpp
    Engine/ac/dynobj/scriptviewframe.h
    Engine/ac/dynobj/scriptviewport.cpp
    Engine/ac/dynobj/scriptviewport.h
    Engine/ac/event.cpp
    Engine/ac/event.h
    Engine/ac/file.cpp
    Engine/ac/file.h
    Engine/ac/game.cpp
    Engine/ac/game.h
    Engine/ac/gamesetup.cpp
    Engine/ac/gamesetup.h
    Engine/ac/gamestate.cpp
    Engine/ac/gamestate.h
    Engine/ac/global_api.cpp
    Engine/ac/global_audio.cpp
    Engine/ac/global_audio.h
    Engine/ac/global_button.cpp
    Engine/ac/global_button.h
    Engine/ac/global_character.cpp
    Engine/ac/global_character.h
    Engine/ac/global_datetime.cpp
    Engine/ac/global_datetime.h
    Engine/ac/global_debug.cpp
    Engine/ac/global_debug.h
    Engine/ac/global_dialog.cpp
    Engine/ac/global_dialog.h
    Engine/ac/global_display.cpp
    Engine/ac/global_display.h
    Engine/ac/global_drawingsurface.cpp
    Engine/ac/global_drawingsurface.h
    Engine/ac/global_dynamicsprite.cpp
    Engine/ac/global_dynamicsprite.h
    Engine/ac/global_file.cpp
    Engine/ac/global_file.h
    Engine/ac/global_game.cpp
    Engine/ac/global_game.h
    Engine/ac/global_gui.cpp
    Engine/ac/global_gui.h
    Engine/ac/global_hotspot.cpp
    Engine/ac/global_hotspot.h
    Engine/ac/global_inventoryitem.cpp
    Engine/ac/global_inventoryitem.h
    Engine/ac/global_invwindow.cpp
    Engine/ac/global_invwindow.h
    Engine/ac/global_label.cpp
    Engine/ac/global_label.h
    Engine/ac/global_listbox.cpp
    Engine/ac/global_listbox.h
    Engine/ac/global_mouse.cpp
    Engine/ac/global_mouse.h
    Engine/ac/global_object.cpp
    Engine/ac/global_object.h
    Engine/ac/global_overlay.cpp
    Engine/ac/global_overlay.h
    Engine/ac/global_palette.cpp
    Engine/ac/global_palette.h
    Engine/ac/global_parser.cpp
    Engine/ac/global_parser.h
    Engine/ac/global_plugin.h
    Engine/ac/global_record.cpp
    Engine/ac/global_record.h
    Engine/ac/global_region.cpp
    Engine/ac/global_region.h
    Engine/ac/global_room.cpp
    Engine/ac/global_room.h
    Engine/ac/global_screen.cpp
    Engine/ac/global_screen.h
    Engine/ac/global_slider.cpp
    Engine/ac/global_slider.h
    Engine/ac/global_string.cpp
    Engine/ac/global_string.h
    Engine/ac/global_textbox.cpp
    Engine/ac/global_textbox.h
    Engine/ac/global_timer.cpp
    Engine/ac/global_timer.h
    Engine/ac/global_translation.cpp
    Engine/ac/global_translation.h
    Engine/ac/global_video.cpp
    Engine/ac/global_video.h
    Engine/ac/global_viewframe.cpp
    Engine/ac/global_viewframe.h
    Engine/ac/global_viewport.cpp
    Engine/ac/global_viewport.h
    Engine/ac/global_walkablearea.cpp
    Engine/ac/global_walkablearea.h
    Engine/ac/global_walkbehind.cpp
    Engine/ac/global_walkbehind.h
    Engine/ac/gui.cpp
    Engine/ac/gui.h
    Engine/ac/guicontrol.cpp
    Engine/ac/guicontrol.h
    Engine/ac/guiinv.cpp
    Engine/ac/hotspot.cpp
    Engine/ac/hotspot.h
    Engine/ac/interfacebutton.cpp
    Engine/ac/interfaceelement.cpp
    Engine/ac/inventoryitem.cpp
    Engine/ac/inventoryitem.h
    Engine/ac/invwindow.cpp
    Engine/ac/invwindow.h
    Engine/ac/keycode.h
    Engine/ac/label.cpp
    Engine/ac/label.h
    Engine/ac/lipsync.h
    Engine/ac/listbox.cpp
    Engine/ac/listbox.h
    Engine/ac/math.cpp
    Engine/ac/math.h
    Engine/ac/mouse.cpp
    Engine/ac/mouse.h
    Engine/ac/movelist.cpp
    Engine/ac/movelist.h
    Engine/ac/object.cpp
    Engine/ac/object.h
    Engine/ac/objectcache.h
    Engine/ac/overlay.cpp
    Engine/ac/overlay.h
    Engine/ac/parser.cpp
    Engine/ac/parser.h
    Engine/ac/path.cpp
    Engine/ac/path.h
    Engine/ac/path_helper.h
    Engine/ac/properties.cpp
    Engine/ac/properties.h
    Engine/ac/record.cpp
    Engine/ac/record.h
    Engine/ac/region.cpp
    Engine/ac/region.h
    Engine/ac/richgamemedia.cpp
    Engine/ac/richgamemedia.h
    Engine/ac/room.cpp
    Engine/ac/room.h
    Engine/ac/roomobject.cpp
    Engine/ac/roomobject.h
    Engine/ac/roomstatus.cpp
    Engine/ac/roomstatus.h
    Engine/ac/route_finder.cpp
    Engine/ac/route_finder.h
    Engine/ac/route_finder_jps.inl
    Engine/ac/runtime_defines.h
    Engine/ac/screen.cpp
    Engine/ac/screen.h
    Engine/ac/screenoverlay.cpp
    Engine/ac/screenoverlay.h
    Engine/ac/slider.cpp
    Engine/ac/slider.h
    Engine/ac/speech.cpp
    Engine/ac/speech.h
    Engine/ac/sprite.cpp
    Engine/ac/sprite.h
    Engine/ac/spritecache_engine.cpp
    Engine/ac/spritelistentry.h
    Engine/ac/statobj/agsstaticobject.cpp
    Engine/ac/statobj/agsstaticobject.h
    Engine/ac/statobj/staticarray.cpp
    Engine/ac/statobj/staticarray.h
    Engine/ac/statobj/staticobject.h
    Engine/ac/string.cpp
    Engine/ac/string.h
    Engine/ac/system.cpp
    Engine/ac/system.h
    Engine/ac/textbox.cpp
    Engine/ac/textbox.h
    Engine/ac/timer.cpp
    Engine/ac/timer.h
    Engine/ac/topbarsettings.h
    Engine/ac/translation.cpp
    Engine/ac/translation.h
    Engine/ac/tree_map.cpp
    Engine/ac/tree_map.h
    Engine/ac/viewframe.cpp
    Engine/ac/viewframe.h
    Engine/ac/viewport.cpp
    Engine/ac/walkablearea.cpp
    Engine/ac/walkablearea.h
    Engine/ac/walkbehind.cpp
    Engine/ac/walkbehind.h
    Engine/debug/agseditordebugger.h
    Engine/debug/consoleoutputtarget.cpp
    Engine/debug/consoleoutputtarget.h
    Engine/debug/debug.cpp
    Engine/debug/debug_log.h
    Engine/debug/debugger.h
    Engine/debug/dummyagsdebugger.h
    Engine/debug/filebasedagsdebugger.cpp
    Engine/debug/filebasedagsdebugger.h
    Engine/debug/logfile.cpp
    Engine/debug/logfile.h
    Engine/debug/messagebuffer.cpp
    Engine/debug/messagebuffer.h
    Engine/device/mousew32.cpp
    Engine/device/mousew32.h
    Engine/font/fonts_engine.cpp
    Engine/game/game_init.cpp
    Engine/game/game_init.h
    Engine/game/savegame.cpp
    Engine/game/savegame.h
    Engine/game/savegame_components.cpp
    Engine/game/savegame_components.h
    Engine/game/savegame_internal.h
    Engine/game/viewport.h
    Engine/gfx/ali3dexception.h
    Engine/gfx/ali3dogl.cpp
    Engine/gfx/ali3dogl.h
    Engine/gfx/ali3dsw.cpp
    Engine/gfx/ali3dsw.h
    Engine/gfx/blender.cpp
    Engine/gfx/blender.h
    Engine/gfx/color_engine.cpp
    Engine/gfx/ddb.h
    Engine/gfx/gfx_util.cpp
    Engine/gfx/gfx_util.h
    Engine/gfx/gfxdefines.h
    Engine/gfx/gfxdriverbase.cpp
    Engine/gfx/gfxdriverbase.h
    Engine/gfx/gfxdriverfactory.cpp
    Engine/gfx/gfxdriverfactory.h
    Engine/gfx/gfxdriverfactorybase.h
    Engine/gfx/gfxfilter.h
    Engine/gfx/gfxfilter_aaogl.cpp
    Engine/gfx/gfxfilter_aaogl.h
    Engine/gfx/gfxfilter_allegro.cpp
    Engine/gfx/gfxfilter_allegro.h
    Engine/gfx/gfxfilter_hqx.cpp
    Engine/gfx/gfxfilter_hqx.h
    Engine/gfx/gfxfilter_ogl.cpp
    Engine/gfx/gfxfilter_ogl.h
    Engine/gfx/gfxfilter_scaling.cpp
    Engine/gfx/gfxfilter_scaling.h
    Engine/gfx/gfxmodelist.h
    Engine/gfx/graphicsdriver.h
    Engine/gfx/hq2x3x.h
    Engine/gfx/ogl_headers.h
    Engine/gui/animatingguibutton.cpp
    Engine/gui/animatingguibutton.h
    Engine/gui/cscidialog.cpp
    Engine/gui/cscidialog.h
    Engine/gui/gui_engine.cpp
    Engine/gui/guidialog.cpp
    Engine/gui/guidialog.h
    Engine/gui/guidialogdefines.h
    Engine/gui/guidialoginternaldefs.h
    Engine/gui/mycontrols.h
    Engine/gui/mylabel.cpp
    Engine/gui/mylabel.h
    Engine/gui/mylistbox.cpp
    Engine/gui/mylistbox.h
    Engine/gui/mypushbutton.cpp
    Engine/gui/mypushbutton.h
    Engine/gui/mytextbox.cpp
    Engine/gui/mytextbox.h
    Engine/gui/newcontrol.cpp
    Engine/gui/newcontrol.h
    Engine/main/config.cpp
    Engine/main/config.h
    Engine/main/engine.cpp
    Engine/main/engine.h
    Engine/main/engine_setup.cpp
    Engine/main/engine_setup.h
    Engine/main/game_file.cpp
    Engine/main/game_file.h
    Engine/main/game_run.cpp
    Engine/main/game_run.h
    Engine/main/game_start.cpp
    Engine/main/game_start.h
    Engine/main/graphics_mode.cpp
    Engine/main/graphics_mode.h
    Engine/main/main.cpp
    Engine/main/main.h
    Engine/main/main_allegro.h
    Engine/main/maindefines_ex.h
    Engine/main/mainheader.h
    Engine/main/quit.cpp
    Engine/main/quit.h
    Engine/main/update.cpp
    Engine/main/update.h
    Engine/media/audio/ambientsound.cpp
    Engine/media/audio/ambientsound.h
    Engine/media/audio/audio.cpp
    Engine/media/audio/audio.h
    Engine/media/audio/audiodefines.h
    Engine/media/audio/audiointernaldefs.h
    Engine/media/audio/clip_mydumbmod.cpp
    Engine/media/audio/clip_mydumbmod.h
    Engine/media/audio/clip_myjgmod.cpp
    Engine/media/audio/clip_myjgmod.h
    Engine/media/audio/clip_mymidi.cpp
    Engine/media/audio/clip_mymidi.h
    Engine/media/audio/clip_mymp3.cpp
    Engine/media/audio/clip_mymp3.h
    Engine/media/audio/clip_myogg.cpp
    Engine/media/audio/clip_myogg.h
    Engine/media/audio/clip_mystaticmp3.cpp
    Engine/media/audio/clip_mystaticmp3.h
    Engine/media/audio/clip_mystaticogg.cpp
    Engine/media/audio/clip_mystaticogg.h
    Engine/media/audio/clip_mywave.cpp
    Engine/media/audio/clip_mywave.h
    Engine/media/audio/queuedaudioitem.cpp
    Engine/media/audio/queuedaudioitem.h
    Engine/media/audio/sound.cpp
    Engine/media/audio/sound.h
    Engine/media/audio/soundcache.cpp
    Engine/media/audio/soundcache.h
    Engine/media/audio/soundclip.cpp
    Engine/media/audio/soundclip.h
    Engine/media/video/video.cpp
    Engine/media/video/video.h
    Engine/platform/base/agsplatformdriver.cpp
    Engine/platform/base/agsplatformdriver.h
    Engine/platform/base/override_defines.h
    Engine/platform/util/libc.c
    Engine/platform/util/pe.c
    Engine/platform/util/pe.h
    Engine/plugin/agsplugin.cpp
    Engine/plugin/agsplugin.h
    Engine/plugin/global_plugin.cpp
    Engine/plugin/plugin_engine.h
    Engine/plugin/plugin_engine_internal.h
    Engine/plugin/pluginobjectreader.cpp
    Engine/plugin/pluginobjectreader.h
    Engine/resource/resource.h
    Engine/script/cc_error_engine.cpp
    Engine/script/cc_instance.cpp
    Engine/script/cc_instance.h
    Engine/script/executingscript.cpp
    Engine/script/executingscript.h
    Engine/script/exports.cpp
    Engine/script/exports.h
    Engine/script/nonblockingscriptfunction.h
    Engine/script/runtimescriptvalue.cpp
    Engine/script/runtimescriptvalue.h
    Engine/script/script.cpp
    Engine/script/script.h
    Engine/script/script_api.cpp
    Engine/script/script_api.h
    Engine/script/script_engine.cpp
    Engine/script/script_runtime.cpp
    Engine/script/script_runtime.h
    Engine/script/systemimports.cpp
    Engine/script/systemimports.h
    Engine/util/library.h
    Engine/util/library_dummy.h
    Engine/util/library_posix.h
    Engine/util/library_sdl2.h
    Engine/util/mutex.h
    Engine/util/mutex_base.h
    Engine/util/mutex_lock.h
    Engine/util/mutex_pthread.h
    Engine/util/mutex_sdl2.h
    Engine/util/scaling.h
    Engine/util/thread.h
    Engine/util/thread_pthread.h
    Engine/util/thread_sdl2.h
)

set(plugin_sources

    Plugins/agsblend/AGSBlend.cpp
    Plugins/agsblend/agsblend.h

    Plugins/AGSflashlight/agsflashlight.cpp
    Plugins/AGSflashlight/agsflashlight.h

    Plugins/ags_parallax/ags_parallax.cpp
    Plugins/ags_parallax/ags_parallax.h

    Plugins/ags_snowrain/ags_snowrain.cpp
    Plugins/ags_snowrain/ags_snowrain.h

    Plugins/AGSSpriteFont/AGSSpriteFont/AGSSpriteFont.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/CharacterEntry.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/CharacterEntry.h
    Plugins/AGSSpriteFont/AGSSpriteFont/SpriteFont.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/SpriteFont.h
    Plugins/AGSSpriteFont/AGSSpriteFont/SpriteFontRenderer.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/SpriteFontRenderer.h
    Plugins/AGSSpriteFont/AGSSpriteFont/VariableWidthFont.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/VariableWidthFont.h
    Plugins/AGSSpriteFont/AGSSpriteFont/VariableWidthSpriteFont.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/VariableWidthSpriteFont.h
    Plugins/AGSSpriteFont/AGSSpriteFont/color.cpp
    Plugins/AGSSpriteFont/AGSSpriteFont/color.h

    Plugins/agstouch/agstouch.cpp
    Plugins/agstouch/agstouch.h
)

# files like ac2game.dat, speech.vox, audio.vox, etc
file(GLOB_RECURSE resources game_files/*)
