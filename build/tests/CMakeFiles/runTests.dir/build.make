# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.31

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\CMake\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\daniil\Desktop\Cplus_project

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\daniil\Desktop\Cplus_project\build

# Include any dependencies generated for this target.
include tests/CMakeFiles/runTests.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include tests/CMakeFiles/runTests.dir/compiler_depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/runTests.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/runTests.dir/flags.make

tests/CMakeFiles/runTests.dir/codegen:
.PHONY : tests/CMakeFiles/runTests.dir/codegen

tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj: tests/CMakeFiles/runTests.dir/flags.make
tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj: tests/CMakeFiles/runTests.dir/includes_CXX.rsp
tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj: C:/Users/daniil/Desktop/Cplus_project/tests/test_fitness.cpp
tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj: tests/CMakeFiles/runTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\daniil\Desktop\Cplus_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj -MF CMakeFiles\runTests.dir\test_fitness.cpp.obj.d -o CMakeFiles\runTests.dir\test_fitness.cpp.obj -c C:\Users\daniil\Desktop\Cplus_project\tests\test_fitness.cpp

tests/CMakeFiles/runTests.dir/test_fitness.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runTests.dir/test_fitness.cpp.i"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\daniil\Desktop\Cplus_project\tests\test_fitness.cpp > CMakeFiles\runTests.dir\test_fitness.cpp.i

tests/CMakeFiles/runTests.dir/test_fitness.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/test_fitness.cpp.s"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\daniil\Desktop\Cplus_project\tests\test_fitness.cpp -o CMakeFiles\runTests.dir\test_fitness.cpp.s

tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj: tests/CMakeFiles/runTests.dir/flags.make
tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj: tests/CMakeFiles/runTests.dir/includes_CXX.rsp
tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj: C:/Users/daniil/Desktop/Cplus_project/src/fitness.cpp
tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj: tests/CMakeFiles/runTests.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=C:\Users\daniil\Desktop\Cplus_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj -MF CMakeFiles\runTests.dir\__\src\fitness.cpp.obj.d -o CMakeFiles\runTests.dir\__\src\fitness.cpp.obj -c C:\Users\daniil\Desktop\Cplus_project\src\fitness.cpp

tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/runTests.dir/__/src/fitness.cpp.i"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\daniil\Desktop\Cplus_project\src\fitness.cpp > CMakeFiles\runTests.dir\__\src\fitness.cpp.i

tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/runTests.dir/__/src/fitness.cpp.s"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && C:\msys64\mingw64\bin\c++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\daniil\Desktop\Cplus_project\src\fitness.cpp -o CMakeFiles\runTests.dir\__\src\fitness.cpp.s

# Object files for target runTests
runTests_OBJECTS = \
"CMakeFiles/runTests.dir/test_fitness.cpp.obj" \
"CMakeFiles/runTests.dir/__/src/fitness.cpp.obj"

# External object files for target runTests
runTests_EXTERNAL_OBJECTS =

tests/runTests.exe: tests/CMakeFiles/runTests.dir/test_fitness.cpp.obj
tests/runTests.exe: tests/CMakeFiles/runTests.dir/__/src/fitness.cpp.obj
tests/runTests.exe: tests/CMakeFiles/runTests.dir/build.make
tests/runTests.exe: tests/CMakeFiles/runTests.dir/linkLibs.rsp
tests/runTests.exe: tests/CMakeFiles/runTests.dir/objects1.rsp
tests/runTests.exe: tests/CMakeFiles/runTests.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=C:\Users\daniil\Desktop\Cplus_project\build\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable runTests.exe"
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\runTests.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/runTests.dir/build: tests/runTests.exe
.PHONY : tests/CMakeFiles/runTests.dir/build

tests/CMakeFiles/runTests.dir/clean:
	cd /d C:\Users\daniil\Desktop\Cplus_project\build\tests && $(CMAKE_COMMAND) -P CMakeFiles\runTests.dir\cmake_clean.cmake
.PHONY : tests/CMakeFiles/runTests.dir/clean

tests/CMakeFiles/runTests.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\daniil\Desktop\Cplus_project C:\Users\daniil\Desktop\Cplus_project\tests C:\Users\daniil\Desktop\Cplus_project\build C:\Users\daniil\Desktop\Cplus_project\build\tests C:\Users\daniil\Desktop\Cplus_project\build\tests\CMakeFiles\runTests.dir\DependInfo.cmake "--color=$(COLOR)"
.PHONY : tests/CMakeFiles/runTests.dir/depend

