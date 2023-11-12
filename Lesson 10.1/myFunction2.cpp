#include <iostream>
#include "myFunction.h"

#include "myFunction2.h"

void myFunc2(){

    std::cout << "Hello world from myFunc2() sourced by myFunction2.cpp\n";
    std::cout << "Use myFunc() from myFunction.h\n";
    myFunc();

}
