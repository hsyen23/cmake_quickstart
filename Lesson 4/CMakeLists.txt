cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

#TODO 1: we will create interface library in /include, so add subdirectory to make cmake can run CMakeLists.txt in include.
add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(example)

