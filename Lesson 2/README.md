# main.cpp

### TODO 1
```
#include "myFunction.h"
```
we need to include header file for function signature.

# CMakeLists.txt

### TODO 2
```
target_include_directories(myExecutable PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
```
tell our target where to find include directory (List of directories for preprocessor to find head files)

`${CMAKE_CURRENT_SOURCE_DIR}` is CMAKE varaible that tells the full path to the source directory that is currently being processed by cmake.

include `${CMAKE_CURRENT_SOURCE_DIR}` because our header file is here.

### PUBLIC/PRIVATE/INTERFACE
PUBLIC: The target will include the directories, and any other targets link to the target will include the directories, too.

PRIVATE: Only the target link to the directories. Any other targets link to the target won't include the directories.

INTERFACE: Any other targets link to the target will include the directories, but the target itself doesn't include the directories.

### TODO 3
```
add_library(myLibrary ./myFunction.cpp)
```
To create a library, use `add_library`.

You can name the library arbitrary.

### TODO 4
```
target_link_libraries(myExecutable PRIVATE myLibrary)
```
Link library to the executable file.

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
./myExecutable
```
See the output from your executable file.
```
Hello World from main.cpp
Hello world from myFunc sourced from myFunction.cpp
```
