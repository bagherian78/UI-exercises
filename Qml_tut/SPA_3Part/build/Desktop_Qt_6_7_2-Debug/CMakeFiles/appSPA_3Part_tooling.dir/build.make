# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /home/soroush/Qt/Tools/CMake/bin/cmake

# The command to remove a file.
RM = /home/soroush/Qt/Tools/CMake/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug

# Utility rule file for appSPA_3Part_tooling.

# Include any custom commands dependencies for this target.
include CMakeFiles/appSPA_3Part_tooling.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appSPA_3Part_tooling.dir/progress.make

SPA_3Part/Main.qml: /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/Main.qml
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Copying Main.qml to /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/SPA_3Part/Main.qml"
	cd /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part && /home/soroush/Qt/Tools/CMake/bin/cmake -E copy /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/Main.qml /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/SPA_3Part/Main.qml

SPA_3Part/resources.qrc: /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/resources.qrc
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --blue --bold --progress-dir=/home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Copying resources.qrc to /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/SPA_3Part/resources.qrc"
	cd /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part && /home/soroush/Qt/Tools/CMake/bin/cmake -E copy /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/resources.qrc /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/SPA_3Part/resources.qrc

appSPA_3Part_tooling: SPA_3Part/Main.qml
appSPA_3Part_tooling: SPA_3Part/resources.qrc
appSPA_3Part_tooling: CMakeFiles/appSPA_3Part_tooling.dir/build.make
.PHONY : appSPA_3Part_tooling

# Rule to build all files generated by this target.
CMakeFiles/appSPA_3Part_tooling.dir/build: appSPA_3Part_tooling
.PHONY : CMakeFiles/appSPA_3Part_tooling.dir/build

CMakeFiles/appSPA_3Part_tooling.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appSPA_3Part_tooling.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appSPA_3Part_tooling.dir/clean

CMakeFiles/appSPA_3Part_tooling.dir/depend:
	cd /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/CMakeFiles/appSPA_3Part_tooling.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appSPA_3Part_tooling.dir/depend

