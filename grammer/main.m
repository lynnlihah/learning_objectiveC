//
//  main.m
//  grammer
//
//  Created by zdns on 2017/7/19.
//  Copyright © 2017年 temp. All rights reserved.
//
// 30分钟 入门教程地址 - http://www.cnblogs.com/BigFeng/p/4852040.html

#import <Foundation/Foundation.h>
//类用@interface定义，而不是@class，相当于Java中的class了。而Object-C中接口(Java中的接口)是用@protocol（下面有介绍）表示。
//.h 头文件，与c++的头文件类似
@interface Fraction : NSObject
//成员变量
{
@protected
    int numerator;
    int denominator;
}
//类方法
-(void) print;
//多参数函数
-(id)initSetNum:(int) n over:(int) d;
-(id) init;
@end

//#import "Fraction.h"
//实现.m文件（相当于c中的.cpp）
@implementation Fraction

-(void) print {
    NSLog(@"print");
}

-(id)init{
    self = [super init];
    if (self != nil) {
        self->denominator = 1;
        self->numerator = 1;
    }
    return self;
}
// init 模板
/*
-(id)init{
    self = [super init];
    if (self) {
        //do init
    }
    return self;
}
*/
-(void)set:(int)n over:(int)d {
    self->denominator = d;
    self->numerator = n;
}

@end

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}
