
if (LIBZIP_BUILD_UTILS)
    include_directories(../src/extlibs)
    add_executable (ziputil ziputil.cpp)
    target_link_libraries (ziputil zip z bzip2 lzma)
    if (UNIX)
        target_link_libraries(ziputil -lpthread)
    endif ()

    # Add a new install target
    install(TARGETS ziputil
        ARCHIVE DESTINATION lib
        LIBRARY DESTINATION lib
        RUNTIME DESTINATION bin
    )
endif ()
