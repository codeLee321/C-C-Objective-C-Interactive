//
//  Person.cpp
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#include "Person.hpp"
#include <sstream>
list<Hello *> Person::coutPersonList(){
    list<Hello *>H;
    for (int i = 0; i<3; i++) {
        Hello * hel = new Hello();
        ostringstream oss;
        oss << "hel" << i << endl;
        hel->name = oss.str();
        H.push_back(hel);
    }
    
    cout<<"run hear .....\n";
    return H;
}
