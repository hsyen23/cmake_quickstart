cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

add_subdirectory(src)

install(EXPORT myLibraryExportTarget
	FILE myLibraryExportTarget.cmake
	NAMESPACE myLibrary::
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
	
#TODO 1: include CMakePackageConfigHelpers, so we can package our exoport files
include(CMakePackageConfigHelpers)

#TODO 2: call configure_package_config_file Marco to create Config.cmake that find_package() needs.
configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary
)

#TODO 3: install .cmake file to the same directory of the export .cmake file. 
install(FILES ${CMAKE_CURRENT_BINARY_DIR}/myLibraryConfig.cmake
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
