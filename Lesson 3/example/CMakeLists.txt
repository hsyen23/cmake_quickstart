#TODO 4: create executable file
add_executable(myExecutable main.cpp)

#TODO 5: link the executable file with library
target_link_libraries(myExecutable PRIVATE myLibrary)

