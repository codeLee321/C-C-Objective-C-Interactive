//
//  ViewController.m
//  OCCallC++
//
//  Created by 荣 li on 2018/3/26.
//  Copyright © 2018年 rongli. All rights reserved.
//

#import "ViewController.h"
#import "Header.h"
#import "CPPDataOBJ.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    testStaticLibrary  * obj = [[testStaticLibrary alloc] init];
    [obj sayHelloWithCallBack:^(CallBackOBJ *obj) {
        NSLog(@"obj.what=%d,obj.arg1=%d,obj.arg2=%d,obj.len=%d,obj.data=%@",obj.what,obj.arg1,obj.arg2,obj.len,obj.data);
    }];
    
    NSMutableArray * dataArr =  [obj getListData];
    for (CPPDataOBJ * obj in dataArr) {
        NSLog(@"name->%@",obj.name);
    }
    NSLog(@"dataArr - =%@",dataArr.description);
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
