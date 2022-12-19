add_library(myLibrary myFunction.cpp)

#TODO 1: use $<INSTALL_INTERFACE:> to tell CMAKE include diretories while install.
target_include_directories(myLibrary INTERFACE 
				$<BUILD_INTERFACE:${CMAKE_SOURCE_DIR}/include>
				$<INSTALL_INTERFACE:${CMAKE_INSTALL_PREFIX}/include>)
				
#TODO 2: install header file to usr/local/include
install(FILES ${CMAKE_SOURCE_DIR}/include/myFunction.h
	DESTINATION ${CMAKE_INSTALL_PREFIX}/include)
	
#TODO 3: install target and specify EXPORT, so CMAKE know this target is a part of export while creating export .cmake file
install(TARGETS myLibrary
	DESTINATION ${CMAKE_INSTALL_PREFIX}/lib
	EXPORT myLibraryExportTarget)
