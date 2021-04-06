
if (BUILD_UTILS)
    add_executable (ziputil ziputil.cpp)
    target_link_libraries (ziputil zip z bzip2 lzma)
    if (UNIX)
        target_link_libraries(ziputil -lpthread)
    endif ()
endif ()
