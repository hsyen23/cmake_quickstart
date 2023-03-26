# CMakeLists.txt

### TODO 1
```
include(CMakePackageConfigHelpers)
```
CMakePackageConfigHelpers module can help us create {}Config.cmake file from Config.cmake.in (Config.cmake.in need to be created by ourself beforehand)

### TODO 2
```
configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary
)
```
First argument is input, and we select the Config.cmake.in file

Second argument is output, and we assign it to be generated in the build directory with name myLibraryConfig.cmake

Third argument is to let the {}Config.cmake file know where will be its PACKAGE_PREFIX_DIR. (We need this because right now {}Config.cmake will be generated in build folder, it has no idea what will be its prefix in the future. Therefore, we need to add this line to include this information.) More detail to check this discussion: https://stackoverflow.com/questions/70209356/whats-the-use-of-configure-package-config-file-option-install-destination.

Path explanation:

${CMAKE_CURRENT_SOURCE_DIR} : points to the directory of the CMakeLists.txt currently being processed

${CMAKE_CURRENT_BINARY_DIR} : points to the build directory corresponding to the CMAKE_CURRENT_SOURCE_DIR. In this example, it is "build" folder.

INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary : it needs to the same with install DESTINATION in TODO 3. (The convention is that all packages that can be find by find_package() will be located in usr/local/lib/cmake/{package name}).

### TODO 3
```
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
```
This is will install(copy) myLibraryConfig.cmake(generated by configure_package_config_file) in DESTINATION.

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
./myLibraryConfig.cmake
```
^-- created by TODO 2
```
/usr/local/lib/cmake/myLibrary/myLibraryConfig.cmake
```
^-- created by TODO 3
```
/usr/local/lib/cmake/myLibrary/myLibraryExportTarget.cmake
/usr/local/lib/cmake/myLibrary/myLibraryExportTarget-noconfig.cmake
```
^-- created by install() command before TODO 1