# CMakeLists.txt

### TODO 1
```
add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(example)
```
Use add_subdirectory to make CMAKE run CMakeLists.txt in the subdirectories.

Order matter here, we need to create libraries first, so our executable file can link them.

# src/CMakeLists.txt

### TODO 2
```
- target_include_directories(myLibrary INTERFACE ${CMAKE_SOURCE_DIR}/include)
```
Delete target_include_directories here because we will use interface library to help us set up include directory.

# include/CMakeLists.txt

### TODO 3
```
add_library(myInterfaceLibrary INTERFACE)
```
Use INTERFACE keyword to create an interface library.

Interface library doesn't have source code which means it doesn't provide any function.

However, we can still utilize library property to help us in CMAKE, TODO 4 is one of the example.

### TODO 4
```
target_include_directories(myInterfaceLibrary INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
```
Let all other targets linking the the library (myInterfaceLibrary) have the include directory.

The nice thing here is that we can directly use ${CMAKE_CURRENT_SOURCE_DIR} to specify the include directory.

### TODO 5
```
target_link_libraries(myExecutable PRIVATE myLibrary)
target_link_libraries(myExecutable PRIVATE myInterfaceLibrary)
```
Link the executable file with library, so the function can work.

Without myLibrary, our executable doesn't know what is description of myFunc().

Without myInterfaceLibrary, our executable isn't able to include "myFunction.h".

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
```
Now, your build folder should be exactly same as build-done.

Run
```
./example/myExecutable
```
See the output from your executable file.
```
Hello World from main.cpp
Hello world from myFunc sourced from myFunction.cpp
```
