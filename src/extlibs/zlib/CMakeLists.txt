
set(ADDITIONAL_SOURCES)

set(SHARED_SOURCES
    adler32.c
    compress.c
    crc32.c
    deflate.c
    infback.c
    inffast.c
    inflate.c
    inftrees.c
    trees.c
    uncompr.c
    zutil.c
)

if(BUILD_SHARED_LIBS AND MOLLENOS)
    set(ADDITIONAL_SOURCES main.c)
    #add_definitions(-DZLIB_DLL)
endif()

add_library(z STATIC
    ${SHARED_SOURCES}
)

# Install library headers
install(FILES zlib.h zconf.h DESTINATION include/zlib)

# Add a new install target
install(TARGETS z
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
