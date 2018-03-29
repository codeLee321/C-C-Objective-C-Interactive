//
//  hello.cpp
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#include "hello.hpp"
void Hello::sayHello(){
    cout<<"hello the world write by rongli ! \n";
}

int Hello::callBackFunc(void (* postEvent)(int what, int arg1, int arg2, char* data, int len)){
    cout<<"run hear ! \n";
    if (!this->name.compare("hel1")) { // 用于触发回调的条件
        cout<<"run hear 2! \n";
        string str = "1";
        char *charStr=(char*)str.c_str();
        postEvent(1,1,1,charStr,1);
    }
    return 1;
}
