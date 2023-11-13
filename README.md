# List

## Lesson 1: build an executable file
Learn
```
cmake_minimum_required(VERSION )
project()
add_executable()
```

## Lesson 2: create a library and use it
Learn
```
target_include_directories()
add_library()
target_link_libraries()
```

## Lesson 3: use subdirectories to organize structure
Learn
```
add_subdirectory()
target_include_directories({} INTERFACE {})
```

## Lesson 4: create interface library
Learn
```
add_library({} INTERFACE)
```

## Lesson 5: use external library (.a, .so)
Learn
```
add_library({} STATIC IMPORTED GLOBAL)
set_property(TARGET {} PROPERTY {})
```

## Lesson 6.1: export library
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

## Lesson 6.2: use exported library in another project
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
Learn

How to build packages that use existed packages.

## Step 9: use find_dependency()
Learn
```
find_dependency()
```

## Step 10.1: add find_dependency() in Config.cmake.in
Learn

How to exclude find_dependency() for user (now it is creator's respondsibility).

## Step 10.2: we don't need to find_dependency() for executalbe in CMakeLists.txt anymore beacuse when you find the package, it will find the dependency for you (due to Step 10.1)
Learn

What is difference from Step 9.
