# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.25

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
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build

# Include any dependencies generated for this target.
include ext_build/CMakeFiles/pugixml.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include ext_build/CMakeFiles/pugixml.dir/compiler_depend.make

# Include the progress variables for this target.
include ext_build/CMakeFiles/pugixml.dir/progress.make

# Include the compile flags for this target's objects.
include ext_build/CMakeFiles/pugixml.dir/flags.make

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o: ext_build/CMakeFiles/pugixml.dir/flags.make
ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o: /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/pugixml/src/pugixml.cpp
ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o: ext_build/CMakeFiles/pugixml.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o"
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o -MF CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o.d -o CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o -c /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/pugixml/src/pugixml.cpp

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i"
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/pugixml/src/pugixml.cpp > CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.i

ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s"
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext/pugixml/src/pugixml.cpp -o CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.s

# Object files for target pugixml
pugixml_OBJECTS = \
"CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o"

# External object files for target pugixml
pugixml_EXTERNAL_OBJECTS =

ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/pugixml/src/pugixml.cpp.o
ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/build.make
ext_build/libpugixml.a: ext_build/CMakeFiles/pugixml.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libpugixml.a"
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean_target.cmake
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/pugixml.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
ext_build/CMakeFiles/pugixml.dir/build: ext_build/libpugixml.a
.PHONY : ext_build/CMakeFiles/pugixml.dir/build

ext_build/CMakeFiles/pugixml.dir/clean:
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build && $(CMAKE_COMMAND) -P CMakeFiles/pugixml.dir/cmake_clean.cmake
.PHONY : ext_build/CMakeFiles/pugixml.dir/clean

ext_build/CMakeFiles/pugixml.dir/depend:
	cd /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/ext /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build /home/lanfear/Projects/GAMES202-QUIZ/PA2/prt/build/ext_build/CMakeFiles/pugixml.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : ext_build/CMakeFiles/pugixml.dir/depend

