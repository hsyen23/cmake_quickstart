# Brief introduction
The situation here is that our program needs to use function of myLibrary2(a library) in the myLibrary2 package.

However, the library(myLibrary2) is built upon another package(myLibrary).

Then, we say myLibrary is one of the dependencies of myLibrary2.

That is why we need to specify find_dependency(), otherwise functions from myLibrary2 are not complete (miss parts from myLibrary).

# CMakeLists.txt

### TODO 1
```
find_package(myLibrary2 REQUIRED)
```
Use find_package() to use all the things in myLibrary2 package.

Now, we don't need to use find_dependency(myLibrary), this is because in find_package() the {}Config.cmake call find_dependency() for us.

It becomes very convenient for users because all dependencies will be found autommatically.

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

# Conclusion
Even though we don't need to write `find_dependency(myLibrary)` in `CMakeLists.txt`, it is still executed inside `find_package(myLibrary2)`. 

Moreover, `find_dependency(myLibrary)` is just a wrapper of `find_package(myLibrary)`, we still need to install `myLibrary` beforehand (has been done in Lesson 7.1). Otherwise, there will be compile error.
