# CMakeLists.txt

### TODO 1
```
find_package(myLibrary REQUIRED)
```
Find the package that we created in previous step because in our myFunction2.cpp we use functions existed in myLibrary.

### TODO 2
```
target_link_libraries(myLibrary2 PUBLIC myLibrary::myLibrary)
```
Link the old library existed in loaded package.

Note here that we don't need to specify include directory for header file of the old library.

This is because when we build the old package we use target_include_directories(), anyone uses the target(myLibrary) will automatically know the include direcotry.

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
sudo cmake --install .
```
Now, your build folder should be exactly same as build-done.

We will use this package in Step9 to learn find_dependency().
