cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

# TODO 1
find_package(myLibrary2 REQUIRED)

add_executable(myExecutable main.cpp)

target_link_libraries(myExecutable PRIVATE myLibrary2::myLibrary2)
