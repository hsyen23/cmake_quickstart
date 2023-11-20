cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

# TODO 1: use find_package() to load existed packages.
find_package(myLibrary REQUIRED)

# TODO 2: create and set up a new library sourced by our new .cpp file.
add_library(myLibrary2 myFunction2.cpp)

target_include_directories(myLibrary2 INTERFACE
			   $<BUILD_INTERFACE:${CMAKE_CURRENT_SOURCE_DIR}>
			   $<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)

install(FILES ./myFunction2.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include)

# TODO 3: link our new library with old library from package loaded before (TODO 1).
target_link_libraries(myLibrary2 PUBLIC myLibrary::myLibrary)

# Export and Package our new library
install(TARGETS myLibrary2
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
	EXPORT myLibrary2ExportTarget)
	
install(EXPORT myLibrary2ExportTarget
	FILE myLibrary2ExportTarget.cmake
	NAMESPACE myLibrary2::
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary2)
	
include(CMakePackageConfigHelpers)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/myLibrary2Config.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary2
)

install(FILES ${CMAKE_CURRENT_BINARY_DIR}/myLibrary2Config.cmake DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary2)
