#include <iostream>

#include "myFunction.h" // we can use "myFunction.h" instead of "../include/myFunction.h" because we specify the include directory in CMAKE

int main(){
	
	std::cout << "Hello World from main.cpp\n";
	myFunc();
	return 0;
}
