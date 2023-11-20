# Brief introduction
We can create a new library based on existed libraries.

However, this will make new library dependent on old libraries. This means users also need to import old libraries when they want to use the new libraries.

# CMakeLists.txt

### TODO 1
```
find_package(myLibrary REQUIRED)
```
Find the package that we created in Lesson 6.1 because our myFunction2.cpp will call functions from myLibrary.

### TODO 2
```
add_library(myLibrary2 myFunction2.cpp)

target_include_directories(myLibrary2 INTERFACE
			   $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
			   $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)

install(FILES ./myFunction2.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
```
Create and set up a new library sourced by our new .cpp file.

### TODO 3
```
target_link_libraries(myLibrary2 PUBLIC myLibrary::myLibrary)
```
Link the old library existed in loaded package.

Note that we don't need to specify include directory for header file of the old library.

This is because when we build the old package we use `target_include_directories()`, anyone uses the target(myLibrary) will automatically know the include direcotry.

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
sudo cmake --install .
```
Now, your build folder should be exactly same as build-done.

We will use this package in Lesson 9 to learn `find_dependency()`.
