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
include tests/CMakeFiles/tictactoe_tests.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/tictactoe_tests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/tictactoe_tests.dir/flags.make

tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj: tests/CMakeFiles/tictactoe_tests.dir/flags.make
tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj: tests/CMakeFiles/tictactoe_tests.dir/includes_CXX.rsp
tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj: ../tests/main_tests.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\tictactoe_tests.dir\main_tests.cpp.obj -c C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\main_tests.cpp

tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe_tests.dir/main_tests.cpp.i"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\main_tests.cpp > CMakeFiles\tictactoe_tests.dir\main_tests.cpp.i

tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe_tests.dir/main_tests.cpp.s"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\main_tests.cpp -o CMakeFiles\tictactoe_tests.dir\main_tests.cpp.s

tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj: tests/CMakeFiles/tictactoe_tests.dir/flags.make
tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj: tests/CMakeFiles/tictactoe_tests.dir/includes_CXX.rsp
tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj: ../tests/test_tictactoe.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\tictactoe_tests.dir\test_tictactoe.cpp.obj -c C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\test_tictactoe.cpp

tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.i"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\test_tictactoe.cpp > CMakeFiles\tictactoe_tests.dir\test_tictactoe.cpp.i

tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.s"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && C:\Rtools\mingw_32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests\test_tictactoe.cpp -o CMakeFiles\tictactoe_tests.dir\test_tictactoe.cpp.s

# Object files for target tictactoe_tests
tictactoe_tests_OBJECTS = \
"CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj" \
"CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj"

# External object files for target tictactoe_tests
tictactoe_tests_EXTERNAL_OBJECTS =

tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/main_tests.cpp.obj
tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/test_tictactoe.cpp.obj
tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/build.make
tests/tictactoe_tests.exe: src/libsrc.a
tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/linklibs.rsp
tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/objects1.rsp
tests/tictactoe_tests.exe: tests/CMakeFiles/tictactoe_tests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable tictactoe_tests.exe"
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\tictactoe_tests.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/tictactoe_tests.dir/build: tests/tictactoe_tests.exe

.PHONY : tests/CMakeFiles/tictactoe_tests.dir/build

tests/CMakeFiles/tictactoe_tests.dir/clean:
	cd /d C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests && $(CMAKE_COMMAND) -P CMakeFiles\tictactoe_tests.dir\cmake_clean.cmake
.PHONY : tests/CMakeFiles/tictactoe_tests.dir/clean

tests/CMakeFiles/tictactoe_tests.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\Jude\CLionProjects\tictactoe-kata-cpp C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\tests C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests C:\Users\Jude\CLionProjects\tictactoe-kata-cpp\cmake-build-debug\tests\CMakeFiles\tictactoe_tests.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/tictactoe_tests.dir/depend

