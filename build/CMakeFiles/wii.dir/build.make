# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canoncical targets will work.
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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/gaudi/ros_workspace/lynxmotion

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/gaudi/ros_workspace/lynxmotion/build

# Include any dependencies generated for this target.
include CMakeFiles/wii.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/wii.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/wii.dir/flags.make

CMakeFiles/wii.dir/src/wii.o: CMakeFiles/wii.dir/flags.make
CMakeFiles/wii.dir/src/wii.o: ../src/wii.cpp
CMakeFiles/wii.dir/src/wii.o: ../manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/ros/tools/rospack/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/ros/core/roslib/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/messages/std_msgs/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/messages/rosgraph_msgs/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/ros/core/rosbuild/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/ros/core/roslang/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/rospy/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/utilities/cpp_common/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/cpp/roscpp_traits/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/utilities/rostime/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/cpp/roscpp_serialization/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/utilities/xmlrpcpp/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/tools/rosconsole/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/cpp/roscpp/manifest.xml
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/messages/std_msgs/msg_gen/generated
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/messages/rosgraph_msgs/msg_gen/generated
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/cpp/roscpp/msg_gen/generated
CMakeFiles/wii.dir/src/wii.o: /opt/ros/electric/stacks/ros_comm/clients/cpp/roscpp/srv_gen/generated
	$(CMAKE_COMMAND) -E cmake_progress_report /home/gaudi/ros_workspace/lynxmotion/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/wii.dir/src/wii.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/wii.dir/src/wii.o -c /home/gaudi/ros_workspace/lynxmotion/src/wii.cpp

CMakeFiles/wii.dir/src/wii.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/wii.dir/src/wii.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/gaudi/ros_workspace/lynxmotion/src/wii.cpp > CMakeFiles/wii.dir/src/wii.i

CMakeFiles/wii.dir/src/wii.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/wii.dir/src/wii.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/gaudi/ros_workspace/lynxmotion/src/wii.cpp -o CMakeFiles/wii.dir/src/wii.s

CMakeFiles/wii.dir/src/wii.o.requires:
.PHONY : CMakeFiles/wii.dir/src/wii.o.requires

CMakeFiles/wii.dir/src/wii.o.provides: CMakeFiles/wii.dir/src/wii.o.requires
	$(MAKE) -f CMakeFiles/wii.dir/build.make CMakeFiles/wii.dir/src/wii.o.provides.build
.PHONY : CMakeFiles/wii.dir/src/wii.o.provides

CMakeFiles/wii.dir/src/wii.o.provides.build: CMakeFiles/wii.dir/src/wii.o
.PHONY : CMakeFiles/wii.dir/src/wii.o.provides.build

# Object files for target wii
wii_OBJECTS = \
"CMakeFiles/wii.dir/src/wii.o"

# External object files for target wii
wii_EXTERNAL_OBJECTS =

../bin/wii: CMakeFiles/wii.dir/src/wii.o
../bin/wii: CMakeFiles/wii.dir/build.make
../bin/wii: CMakeFiles/wii.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/wii"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/wii.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/wii.dir/build: ../bin/wii
.PHONY : CMakeFiles/wii.dir/build

CMakeFiles/wii.dir/requires: CMakeFiles/wii.dir/src/wii.o.requires
.PHONY : CMakeFiles/wii.dir/requires

CMakeFiles/wii.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/wii.dir/cmake_clean.cmake
.PHONY : CMakeFiles/wii.dir/clean

CMakeFiles/wii.dir/depend:
	cd /home/gaudi/ros_workspace/lynxmotion/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/gaudi/ros_workspace/lynxmotion /home/gaudi/ros_workspace/lynxmotion /home/gaudi/ros_workspace/lynxmotion/build /home/gaudi/ros_workspace/lynxmotion/build /home/gaudi/ros_workspace/lynxmotion/build/CMakeFiles/wii.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/wii.dir/depend

