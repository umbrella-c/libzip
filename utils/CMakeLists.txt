
if (BUILD_UTILS)
    add_executable (pakbuild pakbuild.cpp)
    target_link_libraries (pakbuild zip z bzip2 lzma)
    if (UNIX)
        target_link_libraries(pakbuild -lpthread)
    endif ()
endif ()
