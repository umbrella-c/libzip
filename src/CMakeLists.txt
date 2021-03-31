

if (NOT USE_SYSTEM_LIBZ)
    message (STATUS "Using the builtin libz library sources")
    add_subdirectory (extlibs/zlib)
endif ()

if (NOT USE_SYSTEM_LZMA)
    message (STATUS "Using the builtin lzma library sources")
    add_subdirectory (extlibs/lzma)
endif ()

if (NOT USE_SYSTEM_BZIP2)
    message (STATUS "Using the builtin bzip2 library sources")
    add_subdirectory (extlibs/bzip2)
endif ()

add_library (zip 
    detail/EndOfCentralDirectoryBlock.cpp
    detail/ZipCentralDirectoryFileHeader.cpp
    detail/ZipGenericExtraField.cpp
    detail/ZipLocalFileHeader.cpp

    ZipFile.cpp
    ZipArchiveEntry.cpp
    ZipArchive.cpp
)
add_dependencies (zip z bzip2 lzma)
