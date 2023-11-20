#include <iostream>
#include "myFunction.h"

#include "myFunction2.h"

void myFunc2(){

    std::cout << "Hello world from myFunc2() sourced by myFunction2.cpp\n";
    std::cout << "After this line, use myFunc() from myLibrary\n";
    myFunc();

}
