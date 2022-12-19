# List

## step 1: build an executable file
Learn
```
cmake_minimum_required(VERSION )
project()
add_library()
```

## step 2: create a library and use it
Learn
```
target_include_directories()
add_library()
target_link_libraries()
```

## step 3: use subdirectories to organize libraries
Learn
```
add_subdirectory()
target_include_directories({} INTERFACE {})
```

## step 4: use interface library
Learn
```
add_library({} INTERFACE)
target_include_directories({} INTERFACE {})
```

## step 5: use external library
Learn
```
add_library({} STATIC IMPORTED GLOBAL)
set_property(TARGET {} PROPERTY {})
```

## step 6.1: export library
Learn
```
target_include_directories({} INTERFACE 
				$<BUILD_INTERFACE:{}>
				$<INSTALL_INTERFACE:{}>)
install(FILES {} DESTINATION {})
install(TARGETS {} DESTINATION {} EXPORT {})
install(EXPORT      {}
	FILE 	    {}
	NAMESPACE   {}
	DESTINATION {})
```

## step 6.2: use exported library in another project
Learn
```
include()
```

## step 7.1: make exported file a package
Learn
```
include(CMakePackageConfigHelpers)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/{}Config.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/{})
```

## step 7.2: use find_package() to get library quickly
Learn
```
find_package({} REQUIRED)
```

## Step 8: build library that requires existed packages

## Step 9: use find_dependency()

## Step 10.1: add find_dependency() in Config.cmake.in

## Step 10.2: we don't need to find_dependency() for executalbe in CMakeLists.txt anymore beacuse when you find the package, it will find the dependency for you (due to Step 10.1)

