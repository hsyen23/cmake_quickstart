# CMakeLists.txt

### TODO 1
```
add_subdirectory(src)
add_subdirectory(example)
```
use add_subdirectory to make CMAKE run CMakeLists.txt in those subdirectories.

# src/CMakeLists.txt

### TODO 2
```
add_library(myLibrary myFunction.cpp)
```
create library target, so we can use it later in the project.

### TODO 3
```
target_include_directories(myLibrary INTERFACE ${CMAKE_SOURCE_DIR}/include)
```
Use INTERFACE to let all other targets linking to the library have include directory in specified path.

${CMAKE_SOURCE_DIR} is a CMake variable which tell the full path to the top level of the current CMake source tree.

PUBLIC will work here, too! But the library object (myLibrary) doesn't need the header file to make it work, so INTERFACE is enough.

### TODO 4
```
add_executable(myExecutable main.cpp)
```
Create an executable file.

### TODO 5
```
target_link_libraries(myExecutable PRIVATE myLibrary)
```
Link the executable file with library, so the function can work.



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
