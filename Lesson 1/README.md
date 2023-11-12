# CMakeLists.txt

### TODO 1
```
cmake_minimum_required(VERSION 3.1)
```
`cmake_minimum_required` is always required for each cmake project.

### TODO 2
```
project(SimpleCmakeProject)
```
`project` is always required for each cmake project.

You can name the project arbitrary.

### TODO 3
```
add_executable(myExecutable main.cpp)
```
To create an executable file, use `add_executable`.

You can name the executable file arbitrary.

Normally, people name executable files after source files.

In this tutorial, I use different naming method on purpose to avoid confusion. 

# Build
```
mkdir build
cd build
cmake ..
cmake --build .
```
Now, your build folder should be exactly same as build-done.
(cmake --build . = make)

Run
```
./myExecutable
```
See the output from your executable file.
```
Hello World!
```
 
