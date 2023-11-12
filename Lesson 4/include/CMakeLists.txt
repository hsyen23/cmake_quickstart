#TODO 3: add interface library
add_library(myInterfaceLibrary INTERFACE)

#TODO 4: use library property, so other targets can set up the include directory (this folder).
target_include_directories(myInterfaceLibrary INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
