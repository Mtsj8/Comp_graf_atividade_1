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
CMAKE_SOURCE_DIR = /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build

# Include any dependencies generated for this target.
include abcg/external/fmt/CMakeFiles/fmt.dir/depend.make

# Include the progress variables for this target.
include abcg/external/fmt/CMakeFiles/fmt.dir/progress.make

# Include the compile flags for this target's objects.
include abcg/external/fmt/CMakeFiles/fmt.dir/flags.make

abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.o: abcg/external/fmt/CMakeFiles/fmt.dir/flags.make
abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.o: ../abcg/external/fmt/format.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.o"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/fmt.dir/format.cc.o -c /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/abcg/external/fmt/format.cc

abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/fmt.dir/format.cc.i"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/abcg/external/fmt/format.cc > CMakeFiles/fmt.dir/format.cc.i

abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/fmt.dir/format.cc.s"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/abcg/external/fmt/format.cc -o CMakeFiles/fmt.dir/format.cc.s

# Object files for target fmt
fmt_OBJECTS = \
"CMakeFiles/fmt.dir/format.cc.o"

# External object files for target fmt
fmt_EXTERNAL_OBJECTS =

abcg/external/fmt/libfmt.a: abcg/external/fmt/CMakeFiles/fmt.dir/format.cc.o
abcg/external/fmt/libfmt.a: abcg/external/fmt/CMakeFiles/fmt.dir/build.make
abcg/external/fmt/libfmt.a: abcg/external/fmt/CMakeFiles/fmt.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libfmt.a"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean_target.cmake
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/fmt.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
abcg/external/fmt/CMakeFiles/fmt.dir/build: abcg/external/fmt/libfmt.a

.PHONY : abcg/external/fmt/CMakeFiles/fmt.dir/build

abcg/external/fmt/CMakeFiles/fmt.dir/clean:
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt && $(CMAKE_COMMAND) -P CMakeFiles/fmt.dir/cmake_clean.cmake
.PHONY : abcg/external/fmt/CMakeFiles/fmt.dir/clean

abcg/external/fmt/CMakeFiles/fmt.dir/depend:
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1 /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/abcg/external/fmt /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/abcg/external/fmt/CMakeFiles/fmt.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : abcg/external/fmt/CMakeFiles/fmt.dir/depend

