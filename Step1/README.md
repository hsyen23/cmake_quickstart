# Step 1

### TODO 1
cmake_minimum_required is always required for each cmake project.
```
cmake_minimum_required(VERSION 3.1)
```

### TODO 2
Project is always required for each cmake project.
You can name the project arbitrary.
```
project(SimpleCmakeProject)
```

### TODO 3
To create an executable file, use add_executable.
You can name the executable file arbitrary.
Normally, people name executable files after source files.
In this tutorial, I use different naming method to avoid confusion. 
```
add_executable(myExecutable main.cpp)
```
