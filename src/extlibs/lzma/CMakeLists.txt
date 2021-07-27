set(ADDITIONAL_SOURCES)
if(BUILD_SHARED_LIBS AND MOLLENOS)
    set(ADDITIONAL_SOURCES main.c)
endif()

add_library(lzma
    7zAlloc.c
    7zArcIn.c
    7zBuf.c
    7zBuf2.c
    7zCrc.c
    7zCrcOpt.c
    7zDec.c
    7zFile.c
    7zStream.c
    Aes.c
    AesOpt.c
    Alloc.c
    Bcj2.c
    Bcj2Enc.c
    Bra.c
    Bra86.c
    BraIA64.c
    CpuArch.c
    Delta.c
    DllSecur.c
    LzFind.c
    LzFindMt.c
    Lzma2Dec.c
    Lzma2DecMt.c
    Lzma2Enc.c
    Lzma86Dec.c
    Lzma86Enc.c
    LzmaDec.c
    LzmaEnc.c
    LzmaLib.c
    MtCoder.c
    MtDec.c
    Ppmd7.c
    Ppmd7Dec.c
    Ppmd7Enc.c
    Sha256.c
    Sort.c
    Threads.c
    ThreadsP.c
    ThreadsV.c
    Xz.c
    XzCrc64.c
    XzCrc64Opt.c
    XzDec.c
    XzEnc.c
    XzIn.c
    ${ADDITIONAL_SOURCES}
)

# Install library headers
install(FILES 7z.h 7zTypes.h 7zVersion.h LzmaDec.h LzmaEnc.h DESTINATION include/lzma)

# Add a new install target
install(TARGETS lzma
    ARCHIVE DESTINATION lib
    LIBRARY DESTINATION lib
    RUNTIME DESTINATION bin
)
