cmake_minimum_required(VERSION 3.1)

project(SimpleCmakeProject)

add_subdirectory(src)

#TODO 4: create export file, so another CMAKE file is able to use our target rapidly.
install(EXPORT myLibraryExportTarget
	FILE myLibraryExportTarget.cmake
	NAMESPACE myLibrary::
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/myLibrary)
	
#NOTE: after building, you should see myLibraryExportTarget.cmake in the export folder. Then run "cmake --install .",  it will start intall everything to your DESTINATION.
