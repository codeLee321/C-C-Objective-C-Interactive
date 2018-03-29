//
//  CallBackOBJ.m
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#import "CallBackOBJ.h"

@implementation CallBackOBJ
- (instancetype)initWithWhat:(int)what arg1:(int)arg1 arg2:(int)arg2 len:(int)len data:(NSString *)data{
    self = [super init];
    if (self) {
        self.what = what;
        self.arg1 = arg1;
        self.arg2 = arg2;
        self.len = len;
        self.data = data;
    }
    return self;
}
@end
