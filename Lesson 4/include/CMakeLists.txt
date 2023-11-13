#TODO 3: create a library as interface
add_library(myInterfaceLibrary INTERFACE)

#TODO 4: utilize library property, so other targets can also set up this include directory when linking to this interface library.
target_include_directories(myInterfaceLibrary INTERFACE ${CMAKE_CURRENT_SOURCE_DIR})
