
find_package(OpenGL REQUIRED)
if(OPENGL_FOUND)
    if(NOT TARGET OpenGL::GL)
        add_library(OpenGL::GL UNKNOWN IMPORTED)
        set_property(TARGET OpenGL::GL PROPERTY IMPORTED_LOCATION ${OPENGL_gl_LIBRARY})
        set_property(TARGET OpenGL::GL PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${OPENGL_INCLUDE_DIR})
    endif()
endif()

find_package(ZLIB REQUIRED)
if(ZLIB_FOUND)
    if(NOT TARGET ZLIB::ZLIB)
        add_library(ZLIB::ZLIB UNKNOWN IMPORTED)
        set_property(TARGET ZLIB::ZLIB PROPERTY IMPORTED_LOCATION ${ZLIB_LIBRARIES})
        set_property(TARGET ZLIB::ZLIB PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${ZLIB_INCLUDE_DIRS})
    endif()
endif()

find_package(BZIP2 REQUIRED)
if(BZIP2_FOUND)
    if(NOT TARGET BZip2::BZip2)
        add_library(BZip2::BZip2 UNKNOWN IMPORTED)
        set_property(TARGET BZip2::BZip2 PROPERTY IMPORTED_LOCATION ${BZIP2_LIBRARIES})
        set_property(TARGET BZip2::BZip2 PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${BZIP2_INCLUDE_DIR})
    endif()
endif()




add_library(Lua::Lua STATIC IMPORTED)
set_property(TARGET Lua::Lua PROPERTY IMPORTED_LOCATION ${LUA_PREFIX}/lib/liblua.a)
set_property(TARGET Lua::Lua PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${LUA_PREFIX}/include)

add_library(Ogg::Ogg STATIC IMPORTED)
set_property(TARGET Ogg::Ogg PROPERTY IMPORTED_LOCATION ${OGG_PREFIX}/lib/libogg.a)
set_property(TARGET Ogg::Ogg PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${OGG_PREFIX}/include)

add_library(Theora::Theora STATIC IMPORTED)
set_property(TARGET Theora::Theora PROPERTY IMPORTED_LOCATION ${THEORA_PREFIX}/lib/libtheoradec.a)
set_property(TARGET Theora::Theora PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${THEORA_PREFIX}/include)
set_property(TARGET Theora::Theora PROPERTY INTERFACE_LINK_LIBRARIES Ogg::Ogg)

add_library(Vorbis::Vorbis STATIC IMPORTED)
set_property(TARGET Vorbis::Vorbis PROPERTY IMPORTED_LOCATION ${OGG_PREFIX}/lib/libvorbis.a)
set_property(TARGET Vorbis::Vorbis PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${OGG_PREFIX}/include)
set_property(TARGET Vorbis::Vorbis PROPERTY INTERFACE_LINK_LIBRARIES Ogg::Ogg)

add_library(Vorbis::VorbisFile STATIC IMPORTED)
set_property(TARGET Vorbis::VorbisFile PROPERTY IMPORTED_LOCATION ${OGG_PREFIX}/lib/libvorbisfile.a)
set_property(TARGET Vorbis::VorbisFile PROPERTY INTERFACE_INCLUDE_DIRECTORIES ${OGG_PREFIX}/include)
set_property(TARGET Vorbis::VorbisFile PROPERTY INTERFACE_LINK_LIBRARIES Vorbis::Vorbis Ogg::Ogg)
