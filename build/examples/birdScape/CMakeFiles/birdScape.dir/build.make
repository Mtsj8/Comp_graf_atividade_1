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
include examples/birdScape/CMakeFiles/birdScape.dir/depend.make

# Include the progress variables for this target.
include examples/birdScape/CMakeFiles/birdScape.dir/progress.make

# Include the compile flags for this target's objects.
include examples/birdScape/CMakeFiles/birdScape.dir/flags.make

examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.o: examples/birdScape/CMakeFiles/birdScape.dir/flags.make
examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.o: ../examples/birdScape/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.o"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/birdScape.dir/main.cpp.o -c /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/main.cpp

examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/birdScape.dir/main.cpp.i"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/main.cpp > CMakeFiles/birdScape.dir/main.cpp.i

examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/birdScape.dir/main.cpp.s"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/main.cpp -o CMakeFiles/birdScape.dir/main.cpp.s

examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.o: examples/birdScape/CMakeFiles/birdScape.dir/flags.make
examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.o: ../examples/birdScape/openglwindow.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.o"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/birdScape.dir/openglwindow.cpp.o -c /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/openglwindow.cpp

examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/birdScape.dir/openglwindow.cpp.i"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/openglwindow.cpp > CMakeFiles/birdScape.dir/openglwindow.cpp.i

examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/birdScape.dir/openglwindow.cpp.s"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/openglwindow.cpp -o CMakeFiles/birdScape.dir/openglwindow.cpp.s

examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.o: examples/birdScape/CMakeFiles/birdScape.dir/flags.make
examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.o: ../examples/birdScape/clouds.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.o"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/birdScape.dir/clouds.cpp.o -c /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/clouds.cpp

examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/birdScape.dir/clouds.cpp.i"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/clouds.cpp > CMakeFiles/birdScape.dir/clouds.cpp.i

examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/birdScape.dir/clouds.cpp.s"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/clouds.cpp -o CMakeFiles/birdScape.dir/clouds.cpp.s

examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.o: examples/birdScape/CMakeFiles/birdScape.dir/flags.make
examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.o: ../examples/birdScape/bird.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.o"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/ccache /usr/lib/ccache/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/birdScape.dir/bird.cpp.o -c /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/bird.cpp

examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/birdScape.dir/bird.cpp.i"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/bird.cpp > CMakeFiles/birdScape.dir/bird.cpp.i

examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/birdScape.dir/bird.cpp.s"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/lib/ccache/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/bird.cpp -o CMakeFiles/birdScape.dir/bird.cpp.s

# Object files for target birdScape
birdScape_OBJECTS = \
"CMakeFiles/birdScape.dir/main.cpp.o" \
"CMakeFiles/birdScape.dir/openglwindow.cpp.o" \
"CMakeFiles/birdScape.dir/clouds.cpp.o" \
"CMakeFiles/birdScape.dir/bird.cpp.o"

# External object files for target birdScape
birdScape_EXTERNAL_OBJECTS =

bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/main.cpp.o
bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/openglwindow.cpp.o
bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/clouds.cpp.o
bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/bird.cpp.o
bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/build.make
bin/birdScape: abcg/libabcg.a
bin/birdScape: /usr/lib/x86_64-linux-gnu/libGLX.so
bin/birdScape: /usr/lib/x86_64-linux-gnu/libOpenGL.so
bin/birdScape: /usr/lib/x86_64-linux-gnu/libGLEW.so
bin/birdScape: abcg/external/fmt/libfmt.a
bin/birdScape: abcg/external/imgui/libimgui.a
bin/birdScape: /usr/lib/x86_64-linux-gnu/libSDL2main.a
bin/birdScape: /usr/lib/x86_64-linux-gnu/libSDL2.so
bin/birdScape: /usr/lib/x86_64-linux-gnu/libSDL2_image.so
bin/birdScape: examples/birdScape/CMakeFiles/birdScape.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX executable ../../bin/birdScape"
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E remove_directory /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/birdScape.dir/link.txt --verbose=$(VERBOSE)
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E make_directory /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape.dir
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E copy /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape.dir/birdScape
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E remove /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E copy_directory /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape/assets /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape.dir/assets
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && /usr/bin/cmake -E rename /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape.dir /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/bin/birdScape

# Rule to build all files generated by this target.
examples/birdScape/CMakeFiles/birdScape.dir/build: bin/birdScape

.PHONY : examples/birdScape/CMakeFiles/birdScape.dir/build

examples/birdScape/CMakeFiles/birdScape.dir/clean:
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape && $(CMAKE_COMMAND) -P CMakeFiles/birdScape.dir/cmake_clean.cmake
.PHONY : examples/birdScape/CMakeFiles/birdScape.dir/clean

examples/birdScape/CMakeFiles/birdScape.dir/depend:
	cd /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1 /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/examples/birdScape /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape /home/marcelo/ufabc/comp-graf/Comp_graf_atividade_1/build/examples/birdScape/CMakeFiles/birdScape.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : examples/birdScape/CMakeFiles/birdScape.dir/depend
