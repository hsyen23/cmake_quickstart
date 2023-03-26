# Brief introduction
Recall from Step9, we create a program that uses functions from myLibrary2, and myLibrary2 requires myLibrary. Therefore, we need to use find_dependency(myLibrary) to make myLibrary2 complete.

However, it is hard for the user to know all the depencies for the library he/she wants to use.

It will be super convenient if we can automatically find all the dependencies when we use find_package().

To achieve this, the library creator (of course he/she will know what dependencies are required for this package) just need to make find_dependency() one part of {}Config.cmake. Then anyone who use find_package() will automatically call all the find_dependency().

# Config.cmake.in

### TODO 1
```
include(CMakeFindDependencyMacro)
```
To use find_dependency(), we need to include CMakeFindDependencyMacro.

### TODO 2
```
find_dependency(myLibrary)
```
Let cmake find the required dependencies.

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
sudo cmake --install .
```
Now, your build folder should be exactly same as build-done.

We will use this package in Step10.2 to see the difference with Step9.
