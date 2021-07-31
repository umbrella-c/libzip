set(ADDITIONAL_SOURCES)

set(SHARED_SOURCES
    blocksort.c
    bzerror.c
    bzlib.c
    compress.c
    crctable.c
    decompress.c
    huffman.c
    randtable.c
)

if(BUILD_SHARED_LIBS AND MOLLENOS)
    set(ADDITIONAL_SOURCES main.c)
    #add_definitions(-DBZ_DLL)
endif()

add_definitions(-DBZ_INTERNAL)
add_library(bzip2 STATIC
    ${SHARED_SOURCES}
)

# Install library headers
install(FILES bzlib.h DESTINATION include/bzip2)

# Add a new install target
install(TARGETS bzip2
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
