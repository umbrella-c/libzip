

include_directories(extlibs)

if (UNIX AND LIBZIP_COMPILE_AS_PIC)
    add_definitions(-fPIC)
endif ()

if (NOT LIBZIP_USE_SYSTEM_LIBZ)
    message (STATUS "Using the builtin libz library sources")
    add_subdirectory (extlibs/zlib)
endif ()

if (NOT LIBZIP_USE_SYSTEM_LZMA)
    message (STATUS "Using the builtin lzma library sources")
    add_subdirectory (extlibs/lzma)
endif ()

if (NOT LIBZIP_USE_SYSTEM_BZIP2)
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

# Install library headers
install(DIRECTORY compression detail methods streams utils DESTINATION include/libzip)
install(FILES ZipArchive.h ZipArchiveEntry.h ZipFile.h DESTINATION include/libzip)

# Add a new install target
install(TARGETS zip bzip2 lzma z
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
