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

# Utility rule file for appSPA_3Part_qmllint.

# Include any custom commands dependencies for this target.
include CMakeFiles/appSPA_3Part_qmllint.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/appSPA_3Part_qmllint.dir/progress.make

CMakeFiles/appSPA_3Part_qmllint: /home/soroush/Qt/6.7.2/gcc_64/bin/qmllint
CMakeFiles/appSPA_3Part_qmllint: /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/Main.qml
CMakeFiles/appSPA_3Part_qmllint: /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/BannerItem.qml
CMakeFiles/appSPA_3Part_qmllint: .rcc/qmllint/appSPA_3Part.rsp
	cd /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part && /home/soroush/Qt/6.7.2/gcc_64/bin/qmllint @/home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/.rcc/qmllint/appSPA_3Part.rsp

appSPA_3Part_qmllint: CMakeFiles/appSPA_3Part_qmllint
appSPA_3Part_qmllint: CMakeFiles/appSPA_3Part_qmllint.dir/build.make
.PHONY : appSPA_3Part_qmllint

# Rule to build all files generated by this target.
CMakeFiles/appSPA_3Part_qmllint.dir/build: appSPA_3Part_qmllint
.PHONY : CMakeFiles/appSPA_3Part_qmllint.dir/build

CMakeFiles/appSPA_3Part_qmllint.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/appSPA_3Part_qmllint.dir/cmake_clean.cmake
.PHONY : CMakeFiles/appSPA_3Part_qmllint.dir/clean

CMakeFiles/appSPA_3Part_qmllint.dir/depend:
	cd /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug /home/soroush/Desktop/MyWorks/Qml_tut/SPA_3Part/build/Desktop_Qt_6_7_2-Debug/CMakeFiles/appSPA_3Part_qmllint.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/appSPA_3Part_qmllint.dir/depend

