# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zhourunnan/program/openRTSP

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zhourunnan/program/openRTSP/build

# Include any dependencies generated for this target.
include src/CMakeFiles/openRTSP.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/openRTSP.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/openRTSP.dir/flags.make

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o: src/CMakeFiles/openRTSP.dir/flags.make
src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o: ../src/openRTSP.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhourunnan/program/openRTSP/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/openRTSP.dir/openRTSP.cpp.o -c /Users/zhourunnan/program/openRTSP/src/openRTSP.cpp

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openRTSP.dir/openRTSP.cpp.i"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhourunnan/program/openRTSP/src/openRTSP.cpp > CMakeFiles/openRTSP.dir/openRTSP.cpp.i

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openRTSP.dir/openRTSP.cpp.s"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhourunnan/program/openRTSP/src/openRTSP.cpp -o CMakeFiles/openRTSP.dir/openRTSP.cpp.s

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.requires:
.PHONY : src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.requires

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.provides: src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/openRTSP.dir/build.make src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.provides.build
.PHONY : src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.provides

src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.provides.build: src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o

src/CMakeFiles/openRTSP.dir/playCommon.cpp.o: src/CMakeFiles/openRTSP.dir/flags.make
src/CMakeFiles/openRTSP.dir/playCommon.cpp.o: ../src/playCommon.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zhourunnan/program/openRTSP/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/openRTSP.dir/playCommon.cpp.o"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/openRTSP.dir/playCommon.cpp.o -c /Users/zhourunnan/program/openRTSP/src/playCommon.cpp

src/CMakeFiles/openRTSP.dir/playCommon.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openRTSP.dir/playCommon.cpp.i"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zhourunnan/program/openRTSP/src/playCommon.cpp > CMakeFiles/openRTSP.dir/playCommon.cpp.i

src/CMakeFiles/openRTSP.dir/playCommon.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openRTSP.dir/playCommon.cpp.s"
	cd /Users/zhourunnan/program/openRTSP/build/src && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zhourunnan/program/openRTSP/src/playCommon.cpp -o CMakeFiles/openRTSP.dir/playCommon.cpp.s

src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.requires:
.PHONY : src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.requires

src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.provides: src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/openRTSP.dir/build.make src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.provides.build
.PHONY : src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.provides

src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.provides.build: src/CMakeFiles/openRTSP.dir/playCommon.cpp.o

# Object files for target openRTSP
openRTSP_OBJECTS = \
"CMakeFiles/openRTSP.dir/openRTSP.cpp.o" \
"CMakeFiles/openRTSP.dir/playCommon.cpp.o"

# External object files for target openRTSP
openRTSP_EXTERNAL_OBJECTS =

../bin/openRTSP: src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o
../bin/openRTSP: src/CMakeFiles/openRTSP.dir/playCommon.cpp.o
../bin/openRTSP: src/CMakeFiles/openRTSP.dir/build.make
../bin/openRTSP: /usr/local/lib/libopencv_videostab.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_ts.a
../bin/openRTSP: /usr/local/lib/libopencv_superres.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_stitching.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_contrib.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_nonfree.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_ocl.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_gpu.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_photo.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_objdetect.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_legacy.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_video.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_ml.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_calib3d.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_features2d.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_highgui.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_imgproc.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_flann.2.4.11.dylib
../bin/openRTSP: /usr/local/lib/libopencv_core.2.4.11.dylib
../bin/openRTSP: src/CMakeFiles/openRTSP.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/openRTSP"
	cd /Users/zhourunnan/program/openRTSP/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openRTSP.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/openRTSP.dir/build: ../bin/openRTSP
.PHONY : src/CMakeFiles/openRTSP.dir/build

src/CMakeFiles/openRTSP.dir/requires: src/CMakeFiles/openRTSP.dir/openRTSP.cpp.o.requires
src/CMakeFiles/openRTSP.dir/requires: src/CMakeFiles/openRTSP.dir/playCommon.cpp.o.requires
.PHONY : src/CMakeFiles/openRTSP.dir/requires

src/CMakeFiles/openRTSP.dir/clean:
	cd /Users/zhourunnan/program/openRTSP/build/src && $(CMAKE_COMMAND) -P CMakeFiles/openRTSP.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/openRTSP.dir/clean

src/CMakeFiles/openRTSP.dir/depend:
	cd /Users/zhourunnan/program/openRTSP/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zhourunnan/program/openRTSP /Users/zhourunnan/program/openRTSP/src /Users/zhourunnan/program/openRTSP/build /Users/zhourunnan/program/openRTSP/build/src /Users/zhourunnan/program/openRTSP/build/src/CMakeFiles/openRTSP.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/openRTSP.dir/depend
