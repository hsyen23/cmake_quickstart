cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

#TODO 1: we will create an interface library in /include, therefore, use add_subdirectory for /include.
add_subdirectory(src)
add_subdirectory(include)
add_subdirectory(example)

