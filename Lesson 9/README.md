# Brief introduction
The situation here is that our program needs to use function of myLibrary2(a library) in the myLibrary2 package.

However, the library(myLibrary2) is built upon another package(myLibrary).

Then, we say myLibrary is one of the dependencies of myLibrary2.

That is why we need to specify find_dependency(), otherwise functions from myLibrary2 are not complete (miss parts from myLibrary).

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
Let cmake find the dependencies of myLibrary2.

We use find_package(myLibrary2), therefore it's clear that cmake doesn't know about myLibrary.

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
