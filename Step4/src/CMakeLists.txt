add_library(myLibrary myFunction.cpp)

#TODO 2: delete target_include_directories here because we will use interface library to help us set up include directory.
#--delete target_include_directories(myLibrary INTERFACE ${CMAKE_SOURCE_DIR}/include)
