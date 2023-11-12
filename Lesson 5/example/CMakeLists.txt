add_executable(myExecutable main.cpp)

#TODO 6: link the executable file with library
target_link_libraries(myExecutable PRIVATE myThirdPartyLibrary)

