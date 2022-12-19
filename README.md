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

## steo 6.1: export
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
