# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# compile CXX with /Library/Developer/CommandLineTools/usr/bin/c++
CXX_FLAGS = -DOSX -g   -std=gnu++11

CXX_DEFINES = -DvtkIOExport_AUTOINIT="1(vtkIOExportOpenGL)" -DvtkRenderingContext2D_AUTOINIT="1(vtkRenderingContextOpenGL)" -DvtkRenderingCore_AUTOINIT="3(vtkInteractionStyle,vtkRenderingFreeType,vtkRenderingOpenGL)" -DvtkRenderingVolume_AUTOINIT="1(vtkRenderingVolumeOpenGL)"

CXX_INCLUDES = -I/Users/elaine/VTK-build/Charts/Core -I/Users/elaine/VTK/Charts/Core -I/Users/elaine/VTK-build/Common/Color -I/Users/elaine/VTK/Common/Color -I/Users/elaine/VTK-build/Common/Core -I/Users/elaine/VTK/Common/Core -I/Users/elaine/VTK-build/Utilities/KWIML -I/Users/elaine/VTK/Utilities/KWIML -I/Users/elaine/VTK-build/Utilities/KWSys -I/Users/elaine/VTK/Utilities/KWSys -I/Users/elaine/VTK-build/Common/DataModel -I/Users/elaine/VTK/Common/DataModel -I/Users/elaine/VTK-build/Common/Math -I/Users/elaine/VTK/Common/Math -I/Users/elaine/VTK-build/Common/Misc -I/Users/elaine/VTK/Common/Misc -I/Users/elaine/VTK-build/Common/System -I/Users/elaine/VTK/Common/System -I/Users/elaine/VTK-build/Common/Transforms -I/Users/elaine/VTK/Common/Transforms -I/Users/elaine/VTK-build/Common/ExecutionModel -I/Users/elaine/VTK/Common/ExecutionModel -I/Users/elaine/VTK-build/Filters/General -I/Users/elaine/VTK/Filters/General -I/Users/elaine/VTK-build/Common/ComputationalGeometry -I/Users/elaine/VTK/Common/ComputationalGeometry -I/Users/elaine/VTK-build/Filters/Core -I/Users/elaine/VTK/Filters/Core -I/Users/elaine/VTK-build/Infovis/Core -I/Users/elaine/VTK/Infovis/Core -I/Users/elaine/VTK-build/Filters/Extraction -I/Users/elaine/VTK/Filters/Extraction -I/Users/elaine/VTK-build/Filters/Statistics -I/Users/elaine/VTK/Filters/Statistics -I/Users/elaine/VTK-build/Imaging/Fourier -I/Users/elaine/VTK/Imaging/Fourier -I/Users/elaine/VTK-build/Imaging/Core -I/Users/elaine/VTK/Imaging/Core -I/Users/elaine/VTK-build/ThirdParty/alglib -I/Users/elaine/VTK/ThirdParty/alglib -I/Users/elaine/VTK-build/Rendering/Context2D -I/Users/elaine/VTK/Rendering/Context2D -I/Users/elaine/VTK-build/Rendering/Core -I/Users/elaine/VTK/Rendering/Core -I/Users/elaine/VTK-build/Filters/Geometry -I/Users/elaine/VTK/Filters/Geometry -I/Users/elaine/VTK-build/Filters/Sources -I/Users/elaine/VTK/Filters/Sources -I/Users/elaine/VTK-build/Rendering/FreeType -I/Users/elaine/VTK/Rendering/FreeType -I/Users/elaine/VTK-build/ThirdParty/freetype -I/Users/elaine/VTK/ThirdParty/freetype -I/Users/elaine/VTK-build/ThirdParty/zlib -I/Users/elaine/VTK/ThirdParty/zlib -I/Users/elaine/VTK-build/Utilities/DICOMParser -I/Users/elaine/VTK/Utilities/DICOMParser -I/Users/elaine/VTK-build/Domains/Chemistry -I/Users/elaine/VTK/Domains/Chemistry -I/Users/elaine/VTK-build/IO/Legacy -I/Users/elaine/VTK/IO/Legacy -I/Users/elaine/VTK-build/IO/Core -I/Users/elaine/VTK/IO/Core -I/Users/elaine/VTK/ThirdParty/lz4/vtklz4/lib -I/Users/elaine/VTK-build/ThirdParty/lz4/vtklz4 -I/Users/elaine/VTK-build/ThirdParty/lz4 -I/Users/elaine/VTK/ThirdParty/lz4 -I/Users/elaine/VTK-build/IO/XMLParser -I/Users/elaine/VTK/IO/XMLParser -I/Users/elaine/VTK-build/ThirdParty/expat -I/Users/elaine/VTK/ThirdParty/expat -I/Users/elaine/VTK-build/Filters/AMR -I/Users/elaine/VTK/Filters/AMR -I/Users/elaine/VTK-build/IO/XML -I/Users/elaine/VTK/IO/XML -I/Users/elaine/VTK-build/Parallel/Core -I/Users/elaine/VTK/Parallel/Core -I/Users/elaine/VTK-build/Utilities/HashSource -I/Users/elaine/VTK/Utilities/HashSource -I/Users/elaine/VTK-build/Filters/FlowPaths -I/Users/elaine/VTK/Filters/FlowPaths -I/Users/elaine/VTK-build/Filters/Generic -I/Users/elaine/VTK/Filters/Generic -I/Users/elaine/VTK-build/Filters/Hybrid -I/Users/elaine/VTK/Filters/Hybrid -I/Users/elaine/VTK-build/Imaging/Sources -I/Users/elaine/VTK/Imaging/Sources -I/Users/elaine/VTK-build/Filters/HyperTree -I/Users/elaine/VTK/Filters/HyperTree -I/Users/elaine/VTK-build/Filters/Imaging -I/Users/elaine/VTK/Filters/Imaging -I/Users/elaine/VTK-build/Imaging/General -I/Users/elaine/VTK/Imaging/General -I/Users/elaine/VTK-build/Filters/Modeling -I/Users/elaine/VTK/Filters/Modeling -I/Users/elaine/VTK-build/Filters/Parallel -I/Users/elaine/VTK/Filters/Parallel -I/Users/elaine/VTK-build/Filters/ParallelImaging -I/Users/elaine/VTK/Filters/ParallelImaging -I/Users/elaine/VTK-build/Filters/Points -I/Users/elaine/VTK/Filters/Points -I/Users/elaine/VTK-build/Filters/Programmable -I/Users/elaine/VTK/Filters/Programmable -I/Users/elaine/VTK-build/Filters/SMP -I/Users/elaine/VTK/Filters/SMP -I/Users/elaine/VTK-build/Filters/Selection -I/Users/elaine/VTK/Filters/Selection -I/Users/elaine/VTK-build/Filters/Texture -I/Users/elaine/VTK/Filters/Texture -I/Users/elaine/VTK-build/Filters/Topology -I/Users/elaine/VTK/Filters/Topology -I/Users/elaine/VTK-build/Filters/Verdict -I/Users/elaine/VTK/Filters/Verdict -I/Users/elaine/VTK-build/ThirdParty/verdict -I/Users/elaine/VTK/ThirdParty/verdict -I/Users/elaine/VTK-build/Geovis/Core -I/Users/elaine/VTK/Geovis/Core -I/Users/elaine/VTK-build/IO/Image -I/Users/elaine/VTK/IO/Image -I/Users/elaine/VTK-build/Utilities/MetaIO/vtkmetaio -I/Users/elaine/VTK-build/Utilities/MetaIO -I/Users/elaine/VTK/Utilities/MetaIO -I/Users/elaine/VTK-build/ThirdParty/jpeg -I/Users/elaine/VTK/ThirdParty/jpeg -I/Users/elaine/VTK-build/ThirdParty/png -I/Users/elaine/VTK/ThirdParty/png -I/Users/elaine/VTK-build/ThirdParty/tiff/vtktiff/libtiff -I/Users/elaine/VTK-build/ThirdParty/tiff -I/Users/elaine/VTK/ThirdParty/tiff -I/Users/elaine/VTK-build/Infovis/Layout -I/Users/elaine/VTK/Infovis/Layout -I/Users/elaine/VTK-build/Imaging/Hybrid -I/Users/elaine/VTK/Imaging/Hybrid -I/Users/elaine/VTK-build/Interaction/Style -I/Users/elaine/VTK/Interaction/Style -I/Users/elaine/VTK-build/Interaction/Widgets -I/Users/elaine/VTK/Interaction/Widgets -I/Users/elaine/VTK-build/Imaging/Color -I/Users/elaine/VTK/Imaging/Color -I/Users/elaine/VTK-build/Rendering/Annotation -I/Users/elaine/VTK/Rendering/Annotation -I/Users/elaine/VTK-build/Rendering/Volume -I/Users/elaine/VTK/Rendering/Volume -I/Users/elaine/VTK-build/Views/Core -I/Users/elaine/VTK/Views/Core -I/Users/elaine/VTK/ThirdParty/libproj4/vtklibproj4 -I/Users/elaine/VTK-build/ThirdParty/libproj4/vtklibproj4 -I/Users/elaine/VTK-build/ThirdParty/libproj4 -I/Users/elaine/VTK/ThirdParty/libproj4 -I/Users/elaine/VTK-build/IO/AMR -I/Users/elaine/VTK/IO/AMR -I/Users/elaine/VTK-build/ThirdParty/hdf5/vtkhdf5 -isystem /Users/elaine/VTK/ThirdParty/hdf5/vtkhdf5/hl/src -isystem /Users/elaine/VTK/ThirdParty/hdf5/vtkhdf5/src -I/Users/elaine/VTK-build/ThirdParty/hdf5 -I/Users/elaine/VTK/ThirdParty/hdf5 -I/Users/elaine/VTK-build/IO/EnSight -I/Users/elaine/VTK/IO/EnSight -I/Users/elaine/VTK-build/IO/Exodus -I/Users/elaine/VTK/IO/Exodus -I/Users/elaine/VTK-build/ThirdParty/exodusII -I/Users/elaine/VTK/ThirdParty/exodusII -I/Users/elaine/VTK/ThirdParty/netcdf/vtknetcdf/include -I/Users/elaine/VTK-build/ThirdParty/netcdf/vtknetcdf -I/Users/elaine/VTK-build/ThirdParty/netcdf -I/Users/elaine/VTK/ThirdParty/netcdf -I/Users/elaine/VTK-build/IO/Export -I/Users/elaine/VTK/IO/Export -I/Users/elaine/VTK-build/Rendering/GL2PS -I/Users/elaine/VTK/Rendering/GL2PS -I/Users/elaine/VTK-build/Rendering/ContextOpenGL -I/Users/elaine/VTK/Rendering/ContextOpenGL -I/Users/elaine/VTK-build/Rendering/OpenGL -I/Users/elaine/VTK/Rendering/OpenGL -I/Users/elaine/VTK-build/Utilities/ParseOGLExt -I/Users/elaine/VTK/Utilities/ParseOGLExt -I/Users/elaine/VTK-build/Utilities/EncodeString -I/Users/elaine/VTK/Utilities/EncodeString -I/Users/elaine/VTK-build/ThirdParty/gl2ps -I/Users/elaine/VTK/ThirdParty/gl2ps -I/Users/elaine/VTK/ThirdParty/libharu/vtklibharu/include -I/Users/elaine/VTK-build/ThirdParty/libharu/vtklibharu/include -I/Users/elaine/VTK-build/ThirdParty/libharu -I/Users/elaine/VTK/ThirdParty/libharu -I/Users/elaine/VTK-build/IO/ExportOpenGL -I/Users/elaine/VTK/IO/ExportOpenGL -I/Users/elaine/VTK-build/Rendering/Label -I/Users/elaine/VTK/Rendering/Label -I/Users/elaine/VTK-build/IO/Geometry -I/Users/elaine/VTK/IO/Geometry -I/Users/elaine/VTK-build/IO/Import -I/Users/elaine/VTK/IO/Import -I/Users/elaine/VTK-build/IO/Infovis -I/Users/elaine/VTK/IO/Infovis -I/Users/elaine/VTK-build/ThirdParty/libxml2/vtklibxml2 -I/Users/elaine/VTK-build/ThirdParty/libxml2 -I/Users/elaine/VTK/ThirdParty/libxml2 -I/Users/elaine/VTK-build/IO/LSDyna -I/Users/elaine/VTK/IO/LSDyna -I/Users/elaine/VTK-build/IO/MINC -I/Users/elaine/VTK/IO/MINC -I/Users/elaine/VTK-build/IO/Movie -I/Users/elaine/VTK/IO/Movie -I/Users/elaine/VTK-build/ThirdParty/oggtheora -I/Users/elaine/VTK/ThirdParty/oggtheora -I/Users/elaine/VTK-build/IO/NetCDF -I/Users/elaine/VTK/IO/NetCDF -I/Users/elaine/VTK-build/ThirdParty/netcdfcpp -I/Users/elaine/VTK/ThirdParty/netcdfcpp -I/Users/elaine/VTK-build/IO/PLY -I/Users/elaine/VTK/IO/PLY -I/Users/elaine/VTK-build/IO/Parallel -I/Users/elaine/VTK/IO/Parallel -I/Users/elaine/VTK-build/ThirdParty/jsoncpp -I/Users/elaine/VTK/ThirdParty/jsoncpp -I/Users/elaine/VTK-build/IO/ParallelXML -I/Users/elaine/VTK/IO/ParallelXML -I/Users/elaine/VTK-build/IO/SQL -I/Users/elaine/VTK/IO/SQL -I/Users/elaine/VTK-build/ThirdParty/sqlite -I/Users/elaine/VTK/ThirdParty/sqlite -I/Users/elaine/VTK-build/IO/TecplotTable -I/Users/elaine/VTK/IO/TecplotTable -I/Users/elaine/VTK-build/IO/Video -I/Users/elaine/VTK/IO/Video -I/Users/elaine/VTK-build/Imaging/Math -I/Users/elaine/VTK/Imaging/Math -I/Users/elaine/VTK-build/Imaging/Morphological -I/Users/elaine/VTK/Imaging/Morphological -I/Users/elaine/VTK-build/Imaging/Statistics -I/Users/elaine/VTK/Imaging/Statistics -I/Users/elaine/VTK-build/Imaging/Stencil -I/Users/elaine/VTK/Imaging/Stencil -I/Users/elaine/VTK-build/Interaction/Image -I/Users/elaine/VTK/Interaction/Image -I/Users/elaine/VTK-build/Examples/Build/vtkLocal -I/Users/elaine/VTK/Examples/Build/vtkLocal -I/Users/elaine/VTK-build/Rendering/External -I/Users/elaine/VTK/Rendering/External -I/Users/elaine/VTK-build/Rendering/Image -I/Users/elaine/VTK/Rendering/Image -I/Users/elaine/VTK-build/Rendering/LIC -I/Users/elaine/VTK/Rendering/LIC -I/Users/elaine/VTK-build/Rendering/LOD -I/Users/elaine/VTK/Rendering/LOD -I/Users/elaine/VTK-build/Rendering/VolumeOpenGL -I/Users/elaine/VTK/Rendering/VolumeOpenGL -I/Users/elaine/VTK-build/Testing/Core -I/Users/elaine/VTK/Testing/Core -I/Users/elaine/VTK-build/Testing/GenericBridge -I/Users/elaine/VTK/Testing/GenericBridge -I/Users/elaine/VTK-build/Testing/IOSQL -I/Users/elaine/VTK/Testing/IOSQL -I/Users/elaine/VTK-build/Testing/Rendering -I/Users/elaine/VTK/Testing/Rendering -I/Users/elaine/VTK-build/Views/Context2D -I/Users/elaine/VTK/Views/Context2D -I/Users/elaine/VTK-build/Views/Infovis -I/Users/elaine/VTK/Views/Infovis -I/Users/Elaine/YURT/MinVR/build/install/include -I/usr/local/Cellar/freeglut/3.0.0/include -I/usr/local/lib/libGLEW.dylib -isystem /Users/elaine/VTK-build/ThirdParty/hdf5/vtkhdf5/hl/src -isystem /Users/elaine/VTK-build/ThirdParty/hdf5/vtkhdf5/src -isystem /Users/elaine/VTK-build/ThirdParty/netcdfcpp/vtknetcdfcpp 

