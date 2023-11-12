# CMakeLists.txt

### TODO 1
```
find_package(myLibrary REQUIRED)
```
Find package created in Step7.1.

Now, we can directly use all the things specified with EXPORT.

The rule for cmake to find packages is that cmake is looking for {}Config.cmake file in the ${CMAKE_INSTALL_PREFIX}/lib/cmake.

Since it's looking for {}Config.cmake, the following structure still works but not a good habit.

/usr/local/lib/cmake/myLibrary_different_name/myLibraryConfig.cmake


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
