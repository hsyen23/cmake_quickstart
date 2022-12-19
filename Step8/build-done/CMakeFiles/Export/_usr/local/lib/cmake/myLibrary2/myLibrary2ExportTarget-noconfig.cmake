#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "myLibrary2::myLibrary2" for configuration ""
set_property(TARGET myLibrary2::myLibrary2 APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(myLibrary2::myLibrary2 PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libmyLibrary2.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS myLibrary2::myLibrary2 )
list(APPEND _IMPORT_CHECK_FILES_FOR_myLibrary2::myLibrary2 "/usr/local/lib/libmyLibrary2.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
