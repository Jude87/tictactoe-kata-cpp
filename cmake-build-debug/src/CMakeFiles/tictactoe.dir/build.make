# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.14

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.1.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.1.2\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\Jude\CLionProjects\tictactoe-kata-cpp

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug

# Include any dependencies generated for this target.
include src/CMakeFiles/tictactoe.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/tictactoe.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/tictactoe.dir/flags.make

src/CMakeFiles/tictactoe.dir/main_src.cpp.obj: src/CMakeFiles/tictactoe.dir/flags.make
src/CMakeFiles/tictactoe.dir/main_src.cpp.obj: src/CMakeFiles/tictactoe.dir/includes_CXX.rsp
src/CMakeFiles/tictactoe.dir/main_src.cpp.obj: ../src/main_src.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/tictactoe.dir/main_src.cpp.obj"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src && C:\Rtools\mingw_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\tictactoe.dir\main_src.cpp.obj -c C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\src\main_src.cpp

src/CMakeFiles/tictactoe.dir/main_src.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe.dir/main_src.cpp.i"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\src\main_src.cpp > CMakeFiles\tictactoe.dir\main_src.cpp.i

src/CMakeFiles/tictactoe.dir/main_src.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe.dir/main_src.cpp.s"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\src\main_src.cpp -o CMakeFiles\tictactoe.dir\main_src.cpp.s

# Object files for target tictactoe
tictactoe_OBJECTS = \
"CMakeFiles/tictactoe.dir/main_src.cpp.obj"

# External object files for target tictactoe
tictactoe_EXTERNAL_OBJECTS =

src/tictactoe.exe: src/CMakeFiles/tictactoe.dir/main_src.cpp.obj
src/tictactoe.exe: src/CMakeFiles/tictactoe.dir/build.make
src/tictactoe.exe: src/libsrc.a
src/tictactoe.exe: src/CMakeFiles/tictactoe.dir/linklibs.rsp
src/tictactoe.exe: src/CMakeFiles/tictactoe.dir/objects1.rsp
src/tictactoe.exe: src/CMakeFiles/tictactoe.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable tictactoe.exe"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tictactoe.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/tictactoe.dir/build: src/tictactoe.exe

.PHONY : src/CMakeFiles/tictactoe.dir/build

src/CMakeFiles/tictactoe.dir/clean:
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src && $(CMAKE_COMMAND) -P CMakeFiles\tictactoe.dir\cmake_clean.cmake
.PHONY : src/CMakeFiles/tictactoe.dir/clean

src/CMakeFiles/tictactoe.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Jude\CLionProjects\tictactoe-kata-cpp C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\src C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\src\CMakeFiles\tictactoe.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/tictactoe.dir/depend
