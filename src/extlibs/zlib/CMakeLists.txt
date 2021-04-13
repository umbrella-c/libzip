
add_library(z
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

# Install library headers
install(FILES zlib.h zconf.h DESTINATION include/zlib)

# Add a new install target
install(TARGETS z
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
