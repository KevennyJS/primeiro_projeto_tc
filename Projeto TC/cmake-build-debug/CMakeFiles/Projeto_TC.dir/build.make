# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.17

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

# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "D:\Programas\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "D:\Programas\CLion 2020.3.2\bin\cmake\win\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "F:\primeiro_projeto_tc\Projeto TC"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/Projeto_TC.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/Projeto_TC.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Projeto_TC.dir/flags.make

CMakeFiles/Projeto_TC.dir/main.cpp.obj: CMakeFiles/Projeto_TC.dir/flags.make
CMakeFiles/Projeto_TC.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Projeto_TC.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\Projeto_TC.dir\main.cpp.obj -c "F:\primeiro_projeto_tc\Projeto TC\main.cpp"

CMakeFiles/Projeto_TC.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Projeto_TC.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "F:\primeiro_projeto_tc\Projeto TC\main.cpp" > CMakeFiles\Projeto_TC.dir\main.cpp.i

CMakeFiles/Projeto_TC.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Projeto_TC.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "F:\primeiro_projeto_tc\Projeto TC\main.cpp" -o CMakeFiles\Projeto_TC.dir\main.cpp.s

# Object files for target Projeto_TC
Projeto_TC_OBJECTS = \
"CMakeFiles/Projeto_TC.dir/main.cpp.obj"

# External object files for target Projeto_TC
Projeto_TC_EXTERNAL_OBJECTS =

Projeto_TC.exe: CMakeFiles/Projeto_TC.dir/main.cpp.obj
Projeto_TC.exe: CMakeFiles/Projeto_TC.dir/build.make
Projeto_TC.exe: CMakeFiles/Projeto_TC.dir/linklibs.rsp
Projeto_TC.exe: CMakeFiles/Projeto_TC.dir/objects1.rsp
Projeto_TC.exe: CMakeFiles/Projeto_TC.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable Projeto_TC.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Projeto_TC.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Projeto_TC.dir/build: Projeto_TC.exe

.PHONY : CMakeFiles/Projeto_TC.dir/build

CMakeFiles/Projeto_TC.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Projeto_TC.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Projeto_TC.dir/clean

CMakeFiles/Projeto_TC.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "F:\primeiro_projeto_tc\Projeto TC" "F:\primeiro_projeto_tc\Projeto TC" "F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug" "F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug" "F:\primeiro_projeto_tc\Projeto TC\cmake-build-debug\CMakeFiles\Projeto_TC.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Projeto_TC.dir/depend

