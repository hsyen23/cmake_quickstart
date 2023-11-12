#TODO 3: use IMPORTED keyword to import external library
add_library(myThirdPartyLibrary STATIC IMPORTED GLOBAL)

#TODO 4: tell CMAKE where is the imported library
set_property(TARGET myThirdPartyLibrary
	     PROPERTY IMPORTED_LOCATION ${CMAKE_CURRENT_SOURCE_DIR}/lib/libexternalLibrary.a)
	     
#TODO 5: set up include directory
target_include_directories(myThirdPartyLibrary INTERFACE ${CMAKE_CURRENT_SOURCE_DIR}/include)
