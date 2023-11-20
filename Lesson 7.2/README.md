# CMakeLists.txt

### TODO 1
```
find_package(myLibrary REQUIRED)
```
Find package created in Lesson 7.1.

Now, we can directly use all the things specified with `EXPORT`.

The rule for cmake to find packages is that cmake is looking for `xxxConfig.cmake` file in the `${CMAKE_INSTALL_PREFIX}/lib/cmake`.

It will search all subdirectories in `${CMAKE_INSTALL_PREFIX}/lib/cmake` for `xxxConfig.cmake`.


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
