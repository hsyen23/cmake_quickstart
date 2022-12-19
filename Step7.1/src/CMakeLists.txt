add_library(myLibrary myFunction.cpp)

target_include_directories(myLibrary INTERFACE 
				$<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
				$<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
				
install(FILES ${CMAKE_SOURCE_DIR}/include/myFunction.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
	
install(TARGETS myLibrary
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
	EXPORT myLibraryExportTarget)
