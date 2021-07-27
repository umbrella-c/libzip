set(ADDITIONAL_SOURCES)
if(BUILD_SHARED_LIBS AND MOLLENOS)
    set(ADDITIONAL_SOURCES main.c)
endif()

add_library(bzip2
    blocksort.c
    bzerror.c
    bzlib.c
    compress.c
    crctable.c
    decompress.c
    huffman.c
    randtable.c
    ${ADDITIONAL_SOURCES}
)

# Install library headers
install(FILES bzlib.h DESTINATION include/bzip2)

# Add a new install target
install(TARGETS bzip2
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
