project (libzip C CXX)
cmake_minimum_required (VERSION 3.8)

option (LIBZIP_USE_SYSTEM_LIBZ "Use the system libz library instead of the builtin" OFF)
option (LIBZIP_USE_SYSTEM_LZMA "Use the system lzma library instead of the builtin" OFF)
option (LIBZIP_USE_SYSTEM_BZIP2 "Use the system bzip2 library instead of the builtin" OFF)
option (LIBZIP_BUILD_UTILS "Build the utility applications" ON)
option (LIBZIP_COMPILE_AS_PIC "Compile code using -fPIC argument" OFF)

include (CheckIncludeFiles)
macro (check_and_add inc def)
    check_include_files (${ARGV0} HAVE_${ARGV1})
    if (HAVE_${ARGV1})
        add_definitions (-DHAVE_${ARGV1})
    endif ()
endmacro ()

check_and_add (pthread.h PTHREAD_H)
check_and_add (threads.h THREADS_H)

add_subdirectory (src)
add_subdirectory (utils)
