#----------------------------------------------------------------
# Generated CMake target import file.
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "myLibrary::myLibrary" for configuration ""
set_property(TARGET myLibrary::myLibrary APPEND PROPERTY IMPORTED_CONFIGURATIONS NOCONFIG)
set_target_properties(myLibrary::myLibrary PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_NOCONFIG "CXX"
  IMPORTED_LOCATION_NOCONFIG "/usr/local/lib/libmyLibrary.a"
  )

list(APPEND _cmake_import_check_targets myLibrary::myLibrary )
list(APPEND _cmake_import_check_files_for_myLibrary::myLibrary "/usr/local/lib/libmyLibrary.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
