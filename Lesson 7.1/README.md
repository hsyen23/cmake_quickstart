# Breief introduction

Packages provide dependency information to CMake based buildsystems. Packages are found with the `find_package()` command. The result of using `find_package()` is either a set of `IMPORTED` targets, or a set of variables corresponding to build-relevant information.

`find_package` has two modes, `Module Mode` and `Config Mode`.

`Module Mode`: search for `Find<LibraryName>.cmake` in `share/cmake-<version>/Modules` and `CMAKE_MODULE_PATH`.

`Config Mode`: search for `LibraryName>Config.cmake` in `/usr/local/lib/cmake/<LibraryName>/`.

In this tutorial, we will focus on `Config Mode`.

---
# Prepare `Config.cmake.in` file
Create `Config.cmake.in` alongside your `CMakeLists.txt`, and type following content.
```
@PACKAGE_INIT@

include(${CMAKE_CURRENT_LIST_DIR}/myLibraryExportTarget.cmake)

check_required_components(myLibrary)
```
Explanation:

`Config.cmake.in` is a tool file that will be used to create `xxxConfig.cmake`. 

Commands below `@PACKAGE_INIT@` will be written into `xxxConfig.cmake`. These commands will be executed when another project use `find_package()` for this package.


`check_required_components(packageName)`: This macro checks whether all requested, non-optional components have been found, and if this is not the case, sets the `xxx_FOUND` variable to FALSE, so that the package is considered to be not found.

`${CMAKE_CURRENT_LIST_DIR}`: Full directory of the listfile currently being processed.

`CMAKE_CURRENT_SOURCE_DIR:`: The path to the source directory currently being processed.

See difference, check https://stackoverflow.com/questions/15662497/difference-between-cmake-current-source-dir-and-cmake-current-list-dir

---
# CMakeLists.txt
### TODO 1
```
include(CMakePackageConfigHelpers)
```
`CMakePackageConfigHelpers` module can help us create `xxxConfig.cmake` file from `Config.cmake.in`.

### TODO 2
```
configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary
)
```
First argument is `input`, and we select the `Config.cmake.in` file

Second argument is `output`, and we assign it to be generated in the build directory with name myLibraryConfig.cmake. (the naming convention is `xxxConfig.cmake` and `xxx` is the package name)

Third argument is to let the `xxxConfig.cmake` file know where will be its `PACKAGE_PREFIX_DIR`. (We need this because right now `xxxConfig.cmake` will be generated in build folder, it has no idea what will be its prefix in the future. Therefore, we need to add this line to include this information.) More detail to check this discussion: https://stackoverflow.com/questions/70209356/whats-the-use-of-configure-package-config-file-option-install-destination.

Path explanation:

`${CMAKE_CURRENT_SOURCE_DIR}` : points to the directory of the CMakeLists.txt currently being processed

`${CMAKE_CURRENT_BINARY_DIR}` : points to the build directory corresponding to the `CMAKE_CURRENT_SOURCE_DIR`. In this example, it is "build" folder.

`INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary` : it needs to the same with install DESTINATION in TODO 3. (The convention is that all packages that can be find by find_package() will be located in `usr/local/lib/cmake/{package name}`).

### TODO 3
```
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
```
This is will install(copy) `myLibraryConfig.cmake`(generated by configure_package_config_file) to `DESTINATION`.

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
^-- created by `install()` command before TODO 1
