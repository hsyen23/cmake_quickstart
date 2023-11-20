cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

# TODO 1: To use find_dependency(), we need to include CMakeFindDependencyMacro.
include(CMakeFindDependencyMacro)

# TODO 2: Let cmake find myLibrary, the dependency of myLibrary2.
find_dependency(myLibrary)

find_package(myLibrary2 REQUIRED)

add_executable(myExecutable main.cpp)

target_link_libraries(myExecutable PRIVATE myLibrary2::myLibrary2)
