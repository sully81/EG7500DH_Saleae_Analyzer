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
CMAKE_SOURCE_DIR = /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild

# Utility rule file for analyzersdk-populate.

# Include any custom commands dependencies for this target.
include CMakeFiles/analyzersdk-populate.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/analyzersdk-populate.dir/progress.make

CMakeFiles/analyzersdk-populate: CMakeFiles/analyzersdk-populate-complete

CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-mkdir
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-patch
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-build
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install
CMakeFiles/analyzersdk-populate-complete: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'analyzersdk-populate'"
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles
	/usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles/analyzersdk-populate-complete
	/usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-done

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update:
.PHONY : analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-build: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "No build step for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E echo_append
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-build

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure: analyzersdk-populate-prefix/tmp/analyzersdk-populate-cfgcmd.txt
analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "No configure step for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E echo_append
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-gitinfo.txt
analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (git clone) for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps && /usr/bin/cmake -P /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/tmp/analyzersdk-populate-gitclone.cmake
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps && /usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No install step for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E echo_append
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Creating directories for 'analyzersdk-populate'"
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-src
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/tmp
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src
	/usr/bin/cmake -E make_directory /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp
	/usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-mkdir

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-patch: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "No patch step for 'analyzersdk-populate'"
	/usr/bin/cmake -E echo_append
	/usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-patch

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update:
.PHONY : analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-test: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "No test step for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E echo_append
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-build && /usr/bin/cmake -E touch /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-test

analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing update step for 'analyzersdk-populate'"
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-src && /usr/bin/cmake -P /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/analyzersdk-populate-prefix/tmp/analyzersdk-populate-gitupdate.cmake

analyzersdk-populate: CMakeFiles/analyzersdk-populate
analyzersdk-populate: CMakeFiles/analyzersdk-populate-complete
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-build
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-configure
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-download
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-install
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-mkdir
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-patch
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-test
analyzersdk-populate: analyzersdk-populate-prefix/src/analyzersdk-populate-stamp/analyzersdk-populate-update
analyzersdk-populate: CMakeFiles/analyzersdk-populate.dir/build.make
.PHONY : analyzersdk-populate

# Rule to build all files generated by this target.
CMakeFiles/analyzersdk-populate.dir/build: analyzersdk-populate
.PHONY : CMakeFiles/analyzersdk-populate.dir/build

CMakeFiles/analyzersdk-populate.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/analyzersdk-populate.dir/cmake_clean.cmake
.PHONY : CMakeFiles/analyzersdk-populate.dir/clean

CMakeFiles/analyzersdk-populate.dir/depend:
	cd /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild /home/pat/EG7500_analyzer/EG7500DH_Saleae_Analyzer/build/_deps/analyzersdk-subbuild/CMakeFiles/analyzersdk-populate.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/analyzersdk-populate.dir/depend

