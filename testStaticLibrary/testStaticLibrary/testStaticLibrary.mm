//
//  testStaticLibrary.m
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#import "testStaticLibrary.h"
#include "hello.hpp"
#include "Person.hpp"
CallBlock _callBack = nil;

@interface testStaticLibrary()

@end

@implementation testStaticLibrary
// c++回调函数中调用OC的block回调
void postEvent(int what, int arg1, int arg2, char* data, int len){
    printf("waht:%d,arg1:%d,arg2:%d,data:%s,len:%d",what,arg1,arg2,data,len);
    CallBackOBJ * callObj = [[CallBackOBJ alloc] initWithWhat:what arg1:arg1 arg2:arg2 len:len data:[NSString stringWithUTF8String:data]];
    
    _callBack(callObj);
}

- (void)sayHelloWithCallBack:(CallBlock)callBack{
    Hello * helo = new Hello();
    helo->sayHello();
    helo->name = "hel1";
    _callBack = callBack;
    helo->callBackFunc(&postEvent);
    
}

- (NSMutableArray <CPPDataOBJ *> *)getListData{
    Person * p = new Person();
    list<Hello *> L = p->coutPersonList();
    list<Hello *>::iterator v;
    NSMutableArray * mutArr = [NSMutableArray array];
    for(v=L.begin();v!=L.end();++v){
        
        cout<<(*v)->name<<endl;
        char *charStr=(char*)((*v)->name).c_str(); // string 转 char *
        CPPDataOBJ * dataObj = [[CPPDataOBJ alloc] init];
        dataObj.name = [NSString stringWithUTF8String:charStr]; //[NSString stringWithCString:charStr encoding:[NSString defaultCStringEncoding]];
        [mutArr addObject:dataObj];
        
    }
    
    return mutArr;
}

@end
