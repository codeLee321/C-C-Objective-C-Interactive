//
//  testStaticLibrary.h
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CPPDataOBJ.h"
#import "CallBackOBJ.h"
typedef void(^CallBlock)(CallBackOBJ *obj);
@interface testStaticLibrary : NSObject

- (void)sayHelloWithCallBack:(CallBlock)callBack;

- (NSMutableArray <CPPDataOBJ *> *)getListData;
@end
