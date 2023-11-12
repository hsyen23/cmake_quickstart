cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

#TODO 1: include our previous work from Step6.1
include(${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary/myLibraryExportTarget.cmake)

add_executable(myExecutable main.cpp)

#TODO 2: link executable file with library
target_link_libraries(myExecutable PRIVATE myLibrary::myLibrary)
