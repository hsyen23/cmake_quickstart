# Brief introduction
The situation here is that our program needs to use function from myLibrary2(a library) from myLibrary2 package.

However, the library(myLibrary2) is built upon another package(myLibrary).

In this case, we say myLibrary is one of the dependencies of myLibrary2.

That is why we need to specify `find_dependency()`, otherwise functions from myLibrary2 are not complete (miss parts from myLibrary).

`find_dependency()` is just a wrapper around `find_package()` with better informative diagnostic message.

# CMakeLists.txt

### TODO 1
```
include(CMakeFindDependencyMacro)
```
To use find_dependency(), we need to include CMakeFindDependencyMacro.

### TODO 2
```
find_dependency(myLibrary)
```
Let cmake find myLibrary, the dependency of myLibrary2.

Without this line, there will be compile error obviously.
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
Hello world from myFunc2() sourced by myFunction2.cpp
Use myFunc() from myFunction.h
Hello world from myFunc sourced from myFunction.cpp
```
