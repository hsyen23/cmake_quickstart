cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

add_executable(myExecutable main.cpp)

#TODO 2: tell our target where to find include directory (List of directories for preprocessor to find head files)
target_include_directories(myExecutable PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

#TODO 3: create a library from a source file by add_library
add_library(myLibrary ./myFunction.cpp)

#TODO 4: link executable file with the library
target_link_libraries(myExecutable PRIVATE myLibrary)
