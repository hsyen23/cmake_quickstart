# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /usr/local/lib/python3.10/dist-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /usr/local/lib/python3.10/dist-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/home/user/cmake_quickstart/Lesson 5"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/home/user/cmake_quickstart/Lesson 5/build-done"

# Include any dependencies generated for this target.
include example/CMakeFiles/myExecutable.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include example/CMakeFiles/myExecutable.dir/compiler_depend.make

# Include the progress variables for this target.
include example/CMakeFiles/myExecutable.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/myExecutable.dir/flags.make

example/CMakeFiles/myExecutable.dir/main.cpp.o: example/CMakeFiles/myExecutable.dir/flags.make
example/CMakeFiles/myExecutable.dir/main.cpp.o: /home/user/cmake_quickstart/Lesson\ 5/example/main.cpp
example/CMakeFiles/myExecutable.dir/main.cpp.o: example/CMakeFiles/myExecutable.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/home/user/cmake_quickstart/Lesson 5/build-done/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/myExecutable.dir/main.cpp.o"
	cd "/home/user/cmake_quickstart/Lesson 5/build-done/example" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT example/CMakeFiles/myExecutable.dir/main.cpp.o -MF CMakeFiles/myExecutable.dir/main.cpp.o.d -o CMakeFiles/myExecutable.dir/main.cpp.o -c "/home/user/cmake_quickstart/Lesson 5/example/main.cpp"

example/CMakeFiles/myExecutable.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myExecutable.dir/main.cpp.i"
	cd "/home/user/cmake_quickstart/Lesson 5/build-done/example" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/home/user/cmake_quickstart/Lesson 5/example/main.cpp" > CMakeFiles/myExecutable.dir/main.cpp.i

example/CMakeFiles/myExecutable.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myExecutable.dir/main.cpp.s"
	cd "/home/user/cmake_quickstart/Lesson 5/build-done/example" && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/home/user/cmake_quickstart/Lesson 5/example/main.cpp" -o CMakeFiles/myExecutable.dir/main.cpp.s

# Object files for target myExecutable
myExecutable_OBJECTS = \
"CMakeFiles/myExecutable.dir/main.cpp.o"

# External object files for target myExecutable
myExecutable_EXTERNAL_OBJECTS =

example/myExecutable: example/CMakeFiles/myExecutable.dir/main.cpp.o
example/myExecutable: example/CMakeFiles/myExecutable.dir/build.make
example/myExecutable: /home/user/cmake_quickstart/Lesson\ 5/thirdparty/lib/libexternalLibrary.a
example/myExecutable: example/CMakeFiles/myExecutable.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/home/user/cmake_quickstart/Lesson 5/build-done/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable myExecutable"
	cd "/home/user/cmake_quickstart/Lesson 5/build-done/example" && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myExecutable.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/myExecutable.dir/build: example/myExecutable
.PHONY : example/CMakeFiles/myExecutable.dir/build

example/CMakeFiles/myExecutable.dir/clean:
	cd "/home/user/cmake_quickstart/Lesson 5/build-done/example" && $(CMAKE_COMMAND) -P CMakeFiles/myExecutable.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/myExecutable.dir/clean

example/CMakeFiles/myExecutable.dir/depend:
	cd "/home/user/cmake_quickstart/Lesson 5/build-done" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/home/user/cmake_quickstart/Lesson 5" "/home/user/cmake_quickstart/Lesson 5/example" "/home/user/cmake_quickstart/Lesson 5/build-done" "/home/user/cmake_quickstart/Lesson 5/build-done/example" "/home/user/cmake_quickstart/Lesson 5/build-done/example/CMakeFiles/myExecutable.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : example/CMakeFiles/myExecutable.dir/depend

