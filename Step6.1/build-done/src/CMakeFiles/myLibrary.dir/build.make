# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/cmake_quickstart/Step6.1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/cmake_quickstart/Step6.1/build-done

# Include any dependencies generated for this target.
include src/CMakeFiles/myLibrary.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/myLibrary.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/myLibrary.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/myLibrary.dir/flags.make

src/CMakeFiles/myLibrary.dir/myFunction.cpp.o: src/CMakeFiles/myLibrary.dir/flags.make
src/CMakeFiles/myLibrary.dir/myFunction.cpp.o: ../src/myFunction.cpp
src/CMakeFiles/myLibrary.dir/myFunction.cpp.o: src/CMakeFiles/myLibrary.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/cmake_quickstart/Step6.1/build-done/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/myLibrary.dir/myFunction.cpp.o"
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myLibrary.dir/myFunction.cpp.o -MF CMakeFiles/myLibrary.dir/myFunction.cpp.o.d -o CMakeFiles/myLibrary.dir/myFunction.cpp.o -c /home/user/cmake_quickstart/Step6.1/src/myFunction.cpp

src/CMakeFiles/myLibrary.dir/myFunction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myLibrary.dir/myFunction.cpp.i"
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/cmake_quickstart/Step6.1/src/myFunction.cpp > CMakeFiles/myLibrary.dir/myFunction.cpp.i

src/CMakeFiles/myLibrary.dir/myFunction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myLibrary.dir/myFunction.cpp.s"
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/cmake_quickstart/Step6.1/src/myFunction.cpp -o CMakeFiles/myLibrary.dir/myFunction.cpp.s

# Object files for target myLibrary
myLibrary_OBJECTS = \
"CMakeFiles/myLibrary.dir/myFunction.cpp.o"

# External object files for target myLibrary
myLibrary_EXTERNAL_OBJECTS =

src/libmyLibrary.a: src/CMakeFiles/myLibrary.dir/myFunction.cpp.o
src/libmyLibrary.a: src/CMakeFiles/myLibrary.dir/build.make
src/libmyLibrary.a: src/CMakeFiles/myLibrary.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/cmake_quickstart/Step6.1/build-done/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libmyLibrary.a"
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && $(CMAKE_COMMAND) -P CMakeFiles/myLibrary.dir/cmake_clean_target.cmake
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myLibrary.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/myLibrary.dir/build: src/libmyLibrary.a
.PHONY : src/CMakeFiles/myLibrary.dir/build

src/CMakeFiles/myLibrary.dir/clean:
	cd /home/user/cmake_quickstart/Step6.1/build-done/src && $(CMAKE_COMMAND) -P CMakeFiles/myLibrary.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/myLibrary.dir/clean

src/CMakeFiles/myLibrary.dir/depend:
	cd /home/user/cmake_quickstart/Step6.1/build-done && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/cmake_quickstart/Step6.1 /home/user/cmake_quickstart/Step6.1/src /home/user/cmake_quickstart/Step6.1/build-done /home/user/cmake_quickstart/Step6.1/build-done/src /home/user/cmake_quickstart/Step6.1/build-done/src/CMakeFiles/myLibrary.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/myLibrary.dir/depend

