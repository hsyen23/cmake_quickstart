cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

include(CMakeFindDependencyMacro)
find_dependency(myLibrary)

find_package(myLibrary2 REQUIRED)

add_executable(myExecutable main.cpp)

target_link_libraries(myExecutable PRIVATE myLibrary2::myLibrary2)
