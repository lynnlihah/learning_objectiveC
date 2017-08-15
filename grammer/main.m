//
//  main.m
//  grammer
//
//  Created by li on 2017/7/19.
//  Copyright © 2017年 temp. All rights reserved.
//
// 30分钟 入门教程地址 - http://www.cnblogs.com/BigFeng/p/4852040.html - 教程还是太简短了，粗略看了下。

#import <Foundation/Foundation.h>
#import "Fraction.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
//        NSLog(@"Hello, World!");
        // insert code here...
        Fraction * fraction = [[Fraction alloc]init];
        [fraction setNumerator:10];
        NSLog(@"numerator is %d", [fraction numerator]);
        
        fraction.numerator = 20;
        NSLog(@"numerator is %d", fraction.numerator);
    }
    return 0;
}
