//
//  hello.hpp
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#ifndef hello_hpp
#define hello_hpp

#include <stdio.h>
#include <iostream>
#include <list>
#include <string>
using namespace std;
class Hello{
    public:
        string name;
        void sayHello();
        int callBackFunc(void (* postEvent)(int what, int arg1, int arg2, char* data, int len));
    
};

#endif /* hello_hpp */


