# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pme/libzip

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pme/libzip/build

# Include any dependencies generated for this target.
include src/CMakeFiles/zip.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/zip.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/zip.dir/flags.make

src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o: ../src/detail/EndOfCentralDirectoryBlock.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o -c /home/pme/libzip/src/detail/EndOfCentralDirectoryBlock.cpp

src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/detail/EndOfCentralDirectoryBlock.cpp > CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.i

src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/detail/EndOfCentralDirectoryBlock.cpp -o CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.s

src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o: ../src/detail/ZipCentralDirectoryFileHeader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o -c /home/pme/libzip/src/detail/ZipCentralDirectoryFileHeader.cpp

src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/detail/ZipCentralDirectoryFileHeader.cpp > CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.i

src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/detail/ZipCentralDirectoryFileHeader.cpp -o CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.s

src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o: ../src/detail/ZipGenericExtraField.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o -c /home/pme/libzip/src/detail/ZipGenericExtraField.cpp

src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/detail/ZipGenericExtraField.cpp > CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.i

src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/detail/ZipGenericExtraField.cpp -o CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.s

src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o: ../src/detail/ZipLocalFileHeader.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o -c /home/pme/libzip/src/detail/ZipLocalFileHeader.cpp

src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/detail/ZipLocalFileHeader.cpp > CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.i

src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/detail/ZipLocalFileHeader.cpp -o CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.s

src/CMakeFiles/zip.dir/ZipFile.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/ZipFile.cpp.o: ../src/ZipFile.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/zip.dir/ZipFile.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/ZipFile.cpp.o -c /home/pme/libzip/src/ZipFile.cpp

src/CMakeFiles/zip.dir/ZipFile.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/ZipFile.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/ZipFile.cpp > CMakeFiles/zip.dir/ZipFile.cpp.i

src/CMakeFiles/zip.dir/ZipFile.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/ZipFile.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/ZipFile.cpp -o CMakeFiles/zip.dir/ZipFile.cpp.s

src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o: ../src/ZipArchiveEntry.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o -c /home/pme/libzip/src/ZipArchiveEntry.cpp

src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/ZipArchiveEntry.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/ZipArchiveEntry.cpp > CMakeFiles/zip.dir/ZipArchiveEntry.cpp.i

src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/ZipArchiveEntry.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/ZipArchiveEntry.cpp -o CMakeFiles/zip.dir/ZipArchiveEntry.cpp.s

src/CMakeFiles/zip.dir/ZipArchive.cpp.o: src/CMakeFiles/zip.dir/flags.make
src/CMakeFiles/zip.dir/ZipArchive.cpp.o: ../src/ZipArchive.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/zip.dir/ZipArchive.cpp.o"
	cd /home/pme/libzip/build/src && /bin/g++-9  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/zip.dir/ZipArchive.cpp.o -c /home/pme/libzip/src/ZipArchive.cpp

src/CMakeFiles/zip.dir/ZipArchive.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/zip.dir/ZipArchive.cpp.i"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pme/libzip/src/ZipArchive.cpp > CMakeFiles/zip.dir/ZipArchive.cpp.i

src/CMakeFiles/zip.dir/ZipArchive.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/zip.dir/ZipArchive.cpp.s"
	cd /home/pme/libzip/build/src && /bin/g++-9 $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pme/libzip/src/ZipArchive.cpp -o CMakeFiles/zip.dir/ZipArchive.cpp.s

# Object files for target zip
zip_OBJECTS = \
"CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o" \
"CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o" \
"CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o" \
"CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o" \
"CMakeFiles/zip.dir/ZipFile.cpp.o" \
"CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o" \
"CMakeFiles/zip.dir/ZipArchive.cpp.o"

# External object files for target zip
zip_EXTERNAL_OBJECTS =

src/libzip.a: src/CMakeFiles/zip.dir/detail/EndOfCentralDirectoryBlock.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/detail/ZipCentralDirectoryFileHeader.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/detail/ZipGenericExtraField.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/detail/ZipLocalFileHeader.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/ZipFile.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/ZipArchiveEntry.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/ZipArchive.cpp.o
src/libzip.a: src/CMakeFiles/zip.dir/build.make
src/libzip.a: src/CMakeFiles/zip.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pme/libzip/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Linking CXX static library libzip.a"
	cd /home/pme/libzip/build/src && $(CMAKE_COMMAND) -P CMakeFiles/zip.dir/cmake_clean_target.cmake
	cd /home/pme/libzip/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/zip.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/zip.dir/build: src/libzip.a

.PHONY : src/CMakeFiles/zip.dir/build

src/CMakeFiles/zip.dir/clean:
	cd /home/pme/libzip/build/src && $(CMAKE_COMMAND) -P CMakeFiles/zip.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/zip.dir/clean

src/CMakeFiles/zip.dir/depend:
	cd /home/pme/libzip/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pme/libzip /home/pme/libzip/src /home/pme/libzip/build /home/pme/libzip/build/src /home/pme/libzip/build/src/CMakeFiles/zip.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/zip.dir/depend

