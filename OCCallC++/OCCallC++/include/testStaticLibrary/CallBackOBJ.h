//
//  CallBackOBJ.h
//  testStaticLibrary
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#import <Foundation/Foundation.h>
@interface CallBackOBJ : NSObject
@property (nonatomic,assign)int what;
@property (nonatomic,assign)int arg1;
@property (nonatomic,assign)int arg2;
@property (nonatomic,assign)int len;
@property (nonatomic,copy)NSString * data;
- (instancetype)initWithWhat:(int)what arg1:(int)arg1 arg2:(int)arg2 len:(int)len data:(NSString *)data;
@end
