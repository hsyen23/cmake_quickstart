# CMakeLists.txt

### TODO 1
```
include(${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary/myLibraryExportTarget.cmake)
```
Include our previous work from Lesson 6.1.

`include` just acts like `import xxx` in pythion.

We can use all the things specified with EXPORT in myLibrary.

### TODO 2
```
target_link_libraries(myExecutable PRIVATE myLibrary::myLibrary)
```
Link executable file with library.

myLibrary::myLibrary is a combination of `NAMESPACE`+`Target_Name`.

We don't need to give include directory here because we did it through `INTERFACE` when export the library.

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
