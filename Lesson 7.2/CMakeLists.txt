cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

#TODO 1: use find_package
find_package(myLibrary REQUIRED)

add_executable(myExecutable main.cpp)

target_link_libraries(myExecutable PRIVATE myLibrary::myLibrary)
