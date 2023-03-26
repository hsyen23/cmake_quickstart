# src/CMakeLists.txt

### TODO 1
```
target_include_directories(myLibrary INTERFACE 
				$<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
				$<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
```
BUILD_INTERFACE is the stage when you build the target.

INSTALL_INTERFACE is the stage when you try to install the target.

Without INSTALL_INTERFACE, when you link the installed target (myLibrary) you are not able find the include directory.

${CMAKE_INSTALL_PREFIX} is CMAKE variable to usr/local defaultly.

### TODO 2
```
install(FILES ${CMAKE_SOURCE_DIR}/include/myFunction.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
```
Intsall acts just like copy file.

We set the DESTINATION to "${CMAKE_INSTALL_PREFIX}/include" because in TODO 1 we assign "${CMAKE_INSTALL_PREFIX}/include" to be the directory for target to include.

### TODO 3
```
install(TARGETS myLibrary
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
	EXPORT myLibraryExportTarget)
```
install target and specify EXPORT, so CMAKE know this target is a part of export while creating export .cmake file.

EXPORT name needs to be same for your export .cmake file.

# CMakeLists.txt

### TODO 4
```
install(EXPORT myLibraryExportTarget
	FILE myLibraryExportTarget.cmake
	NAMESPACE myLibrary::
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
```
Create export file, so another CMAKE file is able to use our target rapidly.

EXPORT: the export target name, need to match all EXPORT name for all targets waiting exporting.

FILE: the physical export .cmake file name.

NAMESPACE: Prefix for other people who want to use the library, so CMAKE know this is imported file in other CMakeLists.txt.

DESTINATION: Where to store the export .cmake file. Convention is usr/local/lib/cmake/{Library_Name}

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
sudo cmake --install .
```
Now, your build folder should be exactly same as build-done.

And, after installation you will see following files.
```
usr/local/include/myFunction.h
```
^-- created by TODO 2
```
usr/local/lib/libmyLibrary.a
```
^-- created by TODO 3
```
/usr/local/lib/cmake/myLibrary/myLibraryExportTarget.cmake
/usr/local/lib/cmake/myLibrary/myLibraryExportTarget-noconfig.cmake
```
^-- created by TODO 4
