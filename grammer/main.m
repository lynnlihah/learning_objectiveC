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
#import "Calculator.h"
#import "BaseGrammer.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        Calculator *deskCalc = [[Calculator alloc] init];

        [deskCalc setAccumulator:100.0];
        [deskCalc add: 200.];
        [deskCalc divide: 15.0];
        [deskCalc substract: 10.];
        [deskCalc multiply: 5];
        NSLog(@"The result is %g", [deskCalc accumulator]);
        NSLog(@"Hello, World!");
        // insert code here...
//        Fraction * fraction = [[Fraction alloc]init];
//        [fraction setNumerator:10];
//        NSLog(@"numerator is %d", [fraction numerator]);
//        
//        fraction.numerator = 20;
//        NSLog(@"numerator is %d", fraction.numerator);
        NSLog(@"Type in your number:");
        int n;
        scanf("%i", &n);
        BaseGrammer *selstructure = [[BaseGrammer alloc] init];
        [selstructure if_structure: n];
    }
    return 0;
}
