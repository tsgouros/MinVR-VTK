# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build

# Include any dependencies generated for this target.
include CMakeFiles/SmartVolumeMapper.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SmartVolumeMapper.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SmartVolumeMapper.dir/flags.make

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o: CMakeFiles/SmartVolumeMapper.dir/flags.make
CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o: ../SmartVolumeMapper.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o"
	/Library/Developer/CommandLineTools/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o -c /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/SmartVolumeMapper.cxx

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.i"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/SmartVolumeMapper.cxx > CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.i

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.s"
	/Library/Developer/CommandLineTools/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/SmartVolumeMapper.cxx -o CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.s

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.requires:

.PHONY : CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.requires

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.provides: CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.requires
	$(MAKE) -f CMakeFiles/SmartVolumeMapper.dir/build.make CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.provides.build
.PHONY : CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.provides

CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.provides.build: CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o


# Object files for target SmartVolumeMapper
SmartVolumeMapper_OBJECTS = \
"CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o"

# External object files for target SmartVolumeMapper
SmartVolumeMapper_EXTERNAL_OBJECTS =

SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: CMakeFiles/SmartVolumeMapper.dir/build.make
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkDomainsChemistryOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersFlowPaths-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersGeneric-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersHyperTree-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersParallelImaging-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersPoints-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersProgrammable-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersSMP-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersSelection-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersTexture-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersTopology-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersVerdict-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkverdict-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkGeovisCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkproj4-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOAMR-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOEnSight-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOExodus-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOExportOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOImport-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOInfovis-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtklibxml2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOLSDyna-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOMINC-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOMovie-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkoggtheora-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOPLY-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOParallel-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkjsoncpp-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOParallelXML-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOSQL-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtksqlite-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOTecplotTable-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOVideo-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingMorphological-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingStatistics-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingStencil-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkInteractionImage-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkLocalExample-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingContextOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingImage-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingLOD-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingVolumeOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkTestingGenericBridge-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkTestingIOSQL-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkTestingRendering-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkViewsContext2D-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkViewsInfovis-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkDomainsChemistry-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersAMR-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOExport-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtklibharu-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingGL2PSOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkgl2ps-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersParallel-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkexoIIc-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOGeometry-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIONetCDF-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtknetcdf_c++.4.2.0.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkNetCDF-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkhdf5_hl-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkhdf5-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkParallelCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOLegacy-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingOpenGL2-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkglew-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingMath-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkChartsCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingContext2D-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersImaging-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkInfovisLayout-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkInfovisCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkViewsCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkInteractionWidgets-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersHybrid-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingGeneral-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingSources-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersModeling-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingHybrid-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOImage-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkDICOMParser-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkmetaio-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkpng-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtktiff-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkjpeg-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /usr/lib/libm.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkInteractionStyle-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersExtraction-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersStatistics-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingFourier-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkalglib-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingAnnotation-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingColor-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingVolume-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkImagingCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOXML-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOXMLParser-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkIOCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtklz4-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkexpat-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingLabel-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingFreeType-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkRenderingCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonColor-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersGeometry-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersSources-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersGeneral-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonComputationalGeometry-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkFiltersCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonExecutionModel-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonDataModel-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonTransforms-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonMisc-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonMath-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonSystem-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkCommonCore-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtksys-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkfreetype-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: /Users/elaine/VTK-build/lib/libvtkzlib-8.1.1.dylib
SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper: CMakeFiles/SmartVolumeMapper.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SmartVolumeMapper.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SmartVolumeMapper.dir/build: SmartVolumeMapper.app/Contents/MacOS/SmartVolumeMapper

.PHONY : CMakeFiles/SmartVolumeMapper.dir/build

CMakeFiles/SmartVolumeMapper.dir/requires: CMakeFiles/SmartVolumeMapper.dir/SmartVolumeMapper.cxx.o.requires

.PHONY : CMakeFiles/SmartVolumeMapper.dir/requires

CMakeFiles/SmartVolumeMapper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/SmartVolumeMapper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/SmartVolumeMapper.dir/clean

CMakeFiles/SmartVolumeMapper.dir/depend:
	cd /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build /Users/elaine/YURT/MinVR-VTK/examples/SmartVolumeMapper/build/CMakeFiles/SmartVolumeMapper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/SmartVolumeMapper.dir/depend
