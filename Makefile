# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.17

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = "/Users/nikitakrutoy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake"

# The command to remove a file.
RM = "/Users/nikitakrutoy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nikitakrutoy/CLionProjects/TestOpenGLProject

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nikitakrutoy/CLionProjects/TestOpenGLProject

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	"/Users/nikitakrutoy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" --regenerate-during-build -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	"/Users/nikitakrutoy/Library/Application Support/JetBrains/Toolbox/apps/CLion/ch-0/202.7660.37/CLion.app/Contents/bin/cmake/mac/bin/cmake" -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/nikitakrutoy/CLionProjects/TestOpenGLProject/CMakeFiles /Users/nikitakrutoy/CLionProjects/TestOpenGLProject/CMakeFiles/progress.marks
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/nikitakrutoy/CLionProjects/TestOpenGLProject/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named MovingAround

# Build rule for target.
MovingAround: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 MovingAround
.PHONY : MovingAround

# fast build rule for target.
MovingAround/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/build
.PHONY : MovingAround/fast

#=============================================================================
# Target rules for targets named CoordinateSystem2

# Build rule for target.
CoordinateSystem2: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 CoordinateSystem2
.PHONY : CoordinateSystem2

# fast build rule for target.
CoordinateSystem2/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/build
.PHONY : CoordinateSystem2/fast

#=============================================================================
# Target rules for targets named CoordinateSystem

# Build rule for target.
CoordinateSystem: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 CoordinateSystem
.PHONY : CoordinateSystem

# fast build rule for target.
CoordinateSystem/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/build
.PHONY : CoordinateSystem/fast

#=============================================================================
# Target rules for targets named Translations

# Build rule for target.
Translations: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Translations
.PHONY : Translations

# fast build rule for target.
Translations/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/build
.PHONY : Translations/fast

#=============================================================================
# Target rules for targets named Camera

# Build rule for target.
Camera: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Camera
.PHONY : Camera

# fast build rule for target.
Camera/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/build
.PHONY : Camera/fast

#=============================================================================
# Target rules for targets named Textures

# Build rule for target.
Textures: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 Textures
.PHONY : Textures

# fast build rule for target.
Textures/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/build
.PHONY : Textures/fast

#=============================================================================
# Target rules for targets named MyFirstTriangle

# Build rule for target.
MyFirstTriangle: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 MyFirstTriangle
.PHONY : MyFirstTriangle

# fast build rule for target.
MyFirstTriangle/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/build
.PHONY : MyFirstTriangle/fast

#=============================================================================
# Target rules for targets named MyFirstQuad

# Build rule for target.
MyFirstQuad: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 MyFirstQuad
.PHONY : MyFirstQuad

# fast build rule for target.
MyFirstQuad/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/build
.PHONY : MyFirstQuad/fast

#=============================================================================
# Target rules for targets named TriangleRGB

# Build rule for target.
TriangleRGB: cmake_check_build_system
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Makefile2 TriangleRGB
.PHONY : TriangleRGB

# fast build rule for target.
TriangleRGB/fast:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/build
.PHONY : TriangleRGB/fast

src/camera.o: src/camera.cpp.o

.PHONY : src/camera.o

# target to build an object file
src/camera.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/camera.cpp.o
.PHONY : src/camera.cpp.o

src/camera.i: src/camera.cpp.i

.PHONY : src/camera.i

# target to preprocess a source file
src/camera.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/camera.cpp.i
.PHONY : src/camera.cpp.i

src/camera.s: src/camera.cpp.s

.PHONY : src/camera.s

# target to generate assembly for a file
src/camera.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/camera.cpp.s
.PHONY : src/camera.cpp.s

src/coordinateSystems.o: src/coordinateSystems.cpp.o

.PHONY : src/coordinateSystems.o

# target to build an object file
src/coordinateSystems.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/coordinateSystems.cpp.o
.PHONY : src/coordinateSystems.cpp.o

src/coordinateSystems.i: src/coordinateSystems.cpp.i

.PHONY : src/coordinateSystems.i

# target to preprocess a source file
src/coordinateSystems.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/coordinateSystems.cpp.i
.PHONY : src/coordinateSystems.cpp.i

src/coordinateSystems.s: src/coordinateSystems.cpp.s

.PHONY : src/coordinateSystems.s

# target to generate assembly for a file
src/coordinateSystems.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/coordinateSystems.cpp.s
.PHONY : src/coordinateSystems.cpp.s

src/coordinateSystems2.o: src/coordinateSystems2.cpp.o

.PHONY : src/coordinateSystems2.o

# target to build an object file
src/coordinateSystems2.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/coordinateSystems2.cpp.o
.PHONY : src/coordinateSystems2.cpp.o

src/coordinateSystems2.i: src/coordinateSystems2.cpp.i

.PHONY : src/coordinateSystems2.i

# target to preprocess a source file
src/coordinateSystems2.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/coordinateSystems2.cpp.i
.PHONY : src/coordinateSystems2.cpp.i

src/coordinateSystems2.s: src/coordinateSystems2.cpp.s

.PHONY : src/coordinateSystems2.s

# target to generate assembly for a file
src/coordinateSystems2.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/coordinateSystems2.cpp.s
.PHONY : src/coordinateSystems2.cpp.s

src/core/Shader.o: src/core/Shader.cpp.o

.PHONY : src/core/Shader.o

# target to build an object file
src/core/Shader.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/core/Shader.cpp.o
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/core/Shader.cpp.o
.PHONY : src/core/Shader.cpp.o

src/core/Shader.i: src/core/Shader.cpp.i

.PHONY : src/core/Shader.i

# target to preprocess a source file
src/core/Shader.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/core/Shader.cpp.i
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/core/Shader.cpp.i
.PHONY : src/core/Shader.cpp.i

src/core/Shader.s: src/core/Shader.cpp.s

.PHONY : src/core/Shader.s

# target to generate assembly for a file
src/core/Shader.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem2.dir/build.make CMakeFiles/CoordinateSystem2.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/CoordinateSystem.dir/build.make CMakeFiles/CoordinateSystem.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Camera.dir/build.make CMakeFiles/Camera.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/core/Shader.cpp.s
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/core/Shader.cpp.s
.PHONY : src/core/Shader.cpp.s

src/movingAround.o: src/movingAround.cpp.o

.PHONY : src/movingAround.o

# target to build an object file
src/movingAround.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/movingAround.cpp.o
.PHONY : src/movingAround.cpp.o

src/movingAround.i: src/movingAround.cpp.i

.PHONY : src/movingAround.i

# target to preprocess a source file
src/movingAround.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/movingAround.cpp.i
.PHONY : src/movingAround.cpp.i

src/movingAround.s: src/movingAround.cpp.s

.PHONY : src/movingAround.s

# target to generate assembly for a file
src/movingAround.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MovingAround.dir/build.make CMakeFiles/MovingAround.dir/src/movingAround.cpp.s
.PHONY : src/movingAround.cpp.s

src/myFirstQuad.o: src/myFirstQuad.cpp.o

.PHONY : src/myFirstQuad.o

# target to build an object file
src/myFirstQuad.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/myFirstQuad.cpp.o
.PHONY : src/myFirstQuad.cpp.o

src/myFirstQuad.i: src/myFirstQuad.cpp.i

.PHONY : src/myFirstQuad.i

# target to preprocess a source file
src/myFirstQuad.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/myFirstQuad.cpp.i
.PHONY : src/myFirstQuad.cpp.i

src/myFirstQuad.s: src/myFirstQuad.cpp.s

.PHONY : src/myFirstQuad.s

# target to generate assembly for a file
src/myFirstQuad.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstQuad.dir/build.make CMakeFiles/MyFirstQuad.dir/src/myFirstQuad.cpp.s
.PHONY : src/myFirstQuad.cpp.s

src/myFirstTriangle.o: src/myFirstTriangle.cpp.o

.PHONY : src/myFirstTriangle.o

# target to build an object file
src/myFirstTriangle.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/myFirstTriangle.cpp.o
.PHONY : src/myFirstTriangle.cpp.o

src/myFirstTriangle.i: src/myFirstTriangle.cpp.i

.PHONY : src/myFirstTriangle.i

# target to preprocess a source file
src/myFirstTriangle.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/myFirstTriangle.cpp.i
.PHONY : src/myFirstTriangle.cpp.i

src/myFirstTriangle.s: src/myFirstTriangle.cpp.s

.PHONY : src/myFirstTriangle.s

# target to generate assembly for a file
src/myFirstTriangle.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/MyFirstTriangle.dir/build.make CMakeFiles/MyFirstTriangle.dir/src/myFirstTriangle.cpp.s
.PHONY : src/myFirstTriangle.cpp.s

src/textures.o: src/textures.cpp.o

.PHONY : src/textures.o

# target to build an object file
src/textures.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/textures.cpp.o
.PHONY : src/textures.cpp.o

src/textures.i: src/textures.cpp.i

.PHONY : src/textures.i

# target to preprocess a source file
src/textures.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/textures.cpp.i
.PHONY : src/textures.cpp.i

src/textures.s: src/textures.cpp.s

.PHONY : src/textures.s

# target to generate assembly for a file
src/textures.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Textures.dir/build.make CMakeFiles/Textures.dir/src/textures.cpp.s
.PHONY : src/textures.cpp.s

src/translations.o: src/translations.cpp.o

.PHONY : src/translations.o

# target to build an object file
src/translations.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/translations.cpp.o
.PHONY : src/translations.cpp.o

src/translations.i: src/translations.cpp.i

.PHONY : src/translations.i

# target to preprocess a source file
src/translations.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/translations.cpp.i
.PHONY : src/translations.cpp.i

src/translations.s: src/translations.cpp.s

.PHONY : src/translations.s

# target to generate assembly for a file
src/translations.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/Translations.dir/build.make CMakeFiles/Translations.dir/src/translations.cpp.s
.PHONY : src/translations.cpp.s

src/triangleRGB.o: src/triangleRGB.cpp.o

.PHONY : src/triangleRGB.o

# target to build an object file
src/triangleRGB.cpp.o:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/triangleRGB.cpp.o
.PHONY : src/triangleRGB.cpp.o

src/triangleRGB.i: src/triangleRGB.cpp.i

.PHONY : src/triangleRGB.i

# target to preprocess a source file
src/triangleRGB.cpp.i:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/triangleRGB.cpp.i
.PHONY : src/triangleRGB.cpp.i

src/triangleRGB.s: src/triangleRGB.cpp.s

.PHONY : src/triangleRGB.s

# target to generate assembly for a file
src/triangleRGB.cpp.s:
	$(MAKE) $(MAKESILENT) -f CMakeFiles/TriangleRGB.dir/build.make CMakeFiles/TriangleRGB.dir/src/triangleRGB.cpp.s
.PHONY : src/triangleRGB.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... edit_cache"
	@echo "... rebuild_cache"
	@echo "... Camera"
	@echo "... CoordinateSystem"
	@echo "... CoordinateSystem2"
	@echo "... MovingAround"
	@echo "... MyFirstQuad"
	@echo "... MyFirstTriangle"
	@echo "... Textures"
	@echo "... Translations"
	@echo "... TriangleRGB"
	@echo "... src/camera.o"
	@echo "... src/camera.i"
	@echo "... src/camera.s"
	@echo "... src/coordinateSystems.o"
	@echo "... src/coordinateSystems.i"
	@echo "... src/coordinateSystems.s"
	@echo "... src/coordinateSystems2.o"
	@echo "... src/coordinateSystems2.i"
	@echo "... src/coordinateSystems2.s"
	@echo "... src/core/Shader.o"
	@echo "... src/core/Shader.i"
	@echo "... src/core/Shader.s"
	@echo "... src/movingAround.o"
	@echo "... src/movingAround.i"
	@echo "... src/movingAround.s"
	@echo "... src/myFirstQuad.o"
	@echo "... src/myFirstQuad.i"
	@echo "... src/myFirstQuad.s"
	@echo "... src/myFirstTriangle.o"
	@echo "... src/myFirstTriangle.i"
	@echo "... src/myFirstTriangle.s"
	@echo "... src/textures.o"
	@echo "... src/textures.i"
	@echo "... src/textures.s"
	@echo "... src/translations.o"
	@echo "... src/translations.i"
	@echo "... src/translations.s"
	@echo "... src/triangleRGB.o"
	@echo "... src/triangleRGB.i"
	@echo "... src/triangleRGB.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

