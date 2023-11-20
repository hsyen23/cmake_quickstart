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

## Lesson 7.1: How to create a package
Learn
```
include(CMakePackageConfigHelpers)

configure_package_config_file(${CMAKE_CURRENT_SOURCE_DIR}/Config.cmake.in
  ${CMAKE_CURRENT_BINARY_DIR}/{}Config.cmake
  INSTALL_DESTINATION ${CMAKE_INSTALL_PREFIX}/lib/cmake/{})
```

## Lesson 7.2: How to use `find_package()`
Learn
```
find_package({} REQUIRED)
```

## Lesson 8: build library that requires existed packages
Learn

How to build packages that use existed packages.

## Lesson 9: How to use `find_dependency()`
Learn
```
find_dependency()
```

## Lesson 10: pack `find_dependency()` into Package
Learn

Write `find_dependency()` inside `Config.cmake.in` while creating the package, so other package users will automatically search for the package's dependencies. 

## Step 10.2: we don't need to find_dependency() for executalbe in CMakeLists.txt anymore beacuse when you find the package, it will find the dependency for you (due to Step 10.1)
Learn

What is difference from Step 9.
