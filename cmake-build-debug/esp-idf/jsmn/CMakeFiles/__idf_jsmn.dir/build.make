# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake

# The command to remove a file.
RM = /Applications/CLion.app/Contents/bin/cmake/mac/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/merturk/Playground/esp/l3d20h

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/merturk/Playground/esp/l3d20h/cmake-build-debug

# Include any dependencies generated for this target.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend.make

# Include the progress variables for this target.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/progress.make

# Include the compile flags for this target's objects.
include esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/flags.make

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/flags.make
esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj: /Users/merturk/Playground/esp/esp-idf/components/jsmn/src/jsmn.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/merturk/Playground/esp/l3d20h/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj"
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && /Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj   -c /Users/merturk/Playground/esp/esp-idf/components/jsmn/src/jsmn.c

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i"
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && /Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /Users/merturk/Playground/esp/esp-idf/components/jsmn/src/jsmn.c > CMakeFiles/__idf_jsmn.dir/src/jsmn.c.i

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s"
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && /Users/merturk/Playground/esp/xtensa-esp32-elf/bin/xtensa-esp32-elf-gcc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /Users/merturk/Playground/esp/esp-idf/components/jsmn/src/jsmn.c -o CMakeFiles/__idf_jsmn.dir/src/jsmn.c.s

# Object files for target __idf_jsmn
__idf_jsmn_OBJECTS = \
"CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj"

# External object files for target __idf_jsmn
__idf_jsmn_EXTERNAL_OBJECTS =

esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/src/jsmn.c.obj
esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build.make
esp-idf/jsmn/libjsmn.a: esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/merturk/Playground/esp/l3d20h/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX static library libjsmn.a"
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && $(CMAKE_COMMAND) -P CMakeFiles/__idf_jsmn.dir/cmake_clean_target.cmake
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/__idf_jsmn.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build: esp-idf/jsmn/libjsmn.a

.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/build

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/clean:
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn && $(CMAKE_COMMAND) -P CMakeFiles/__idf_jsmn.dir/cmake_clean.cmake
.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/clean

esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend:
	cd /Users/merturk/Playground/esp/l3d20h/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/merturk/Playground/esp/l3d20h /Users/merturk/Playground/esp/esp-idf/components/jsmn /Users/merturk/Playground/esp/l3d20h/cmake-build-debug /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn /Users/merturk/Playground/esp/l3d20h/cmake-build-debug/esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esp-idf/jsmn/CMakeFiles/__idf_jsmn.dir/depend

