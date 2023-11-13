# example/main.cpp

### TODO 1
```
#include "externalLibrary.h"
```
include header file, so we can use functions in external library.

# CMakeLists.txt

### TODO 2
```
add_subdirectory(thirdparty)
add_subdirectory(example)
```
`add_subdirectory` to make CMAKE run CMakeLists.txt in the subdirectories.

# thirdparty/CMakeLists.txt

### TODO 3
```
add_library(myThirdPartyLibrary STATIC IMPORTED GLOBAL)
```
Create a library target.

`STATIC` because we will import a static library.

`IMPORTED` to specify this library is imported.

By default, the `IMPORTED` target name has scope in the directory in which it is created and below. We can use the `GLOBAL` option to extended visibility so that the target is accessible globally in the build system.

Without `GLOBAL`, CMakeLists.txt in example folder cannot link myThirdPartyLibrary.

### TODO 4
```
set_property(TARGET myThirdPartyLibrary
	     PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/lib/libexternalLibrary.a)
```
Tell CMAKE what is the file for the imported library.

### TODO 5
```
target_include_directories(myThirdPartyLibrary INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)
```
set up include directory


# exmaple/CMakeLists.txt

### TODO 6
```
target_link_libraries(myExecutable PRIVATE myThirdPartyLibrary)
```
Link the executable file with library, so the function can work.

Because we specify `GLOBAL` for myThirdPartyLibrary, so we can use it here.

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
Hello world from external library
```
