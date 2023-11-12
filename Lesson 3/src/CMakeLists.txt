#TODO 2: create library target, so our project can use the library
add_library(myLibrary myFunction.cpp)

#TODO 3: use interface to tell all targets that link the library where is the include directory for this source file.
target_include_directories(myLibrary INTERFACE ${CMAKE_SOURCE_DIR}/include)
