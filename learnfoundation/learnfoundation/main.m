//
//  main.m
//  learnfoundation
//
//  Created by lizhufeng on 24/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

//  术语Cocoa总的来说指的是foundation框架、Application Kit框架和名为Core Data的第三方框架

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...m
//        NSLog(@"Hello, World!");
        NSNumber *myNumber, *floatNumber, *intNumber;
        NSInteger myInt;
        
        //integer 型值
        intNumber = [NSNumber numberWithInteger: 100];
        myInt = [intNumber integerValue];
        NSLog(@"%li", (long)myInt);
        
        // long 型值
        myNumber = [NSNumber numberWithLong: 0xabcdef];
        NSLog(@"%lx",[myNumber longValue]);
        
        // char 型值
        myNumber = [NSNumber numberWithChar: 'X'];
        NSLog(@"%c", [myNumber charValue]);
        
        // float 型值
        floatNumber = [NSNumber numberWithFloat: 100.00];
        NSLog(@"%g", [floatNumber floatValue]);
        
        // double
        myNumber = [NSNumber numberWithDouble: 12345e+15];
        NSLog(@"%lg", [myNumber doubleValue]);
        
        // 发生错误
        NSLog(@"%li", (long)[myNumber integerValue]);
        
        //验证两个 Number 是否相等
        if([intNumber isEqualToNumber:floatNumber] == YES)
            NSLog(@"Numbers are equal");
        else
            NSLog(@"Numbers are not equal");
        
        //验证一个Number 是否小于、等于或大于另一个Number
        if([intNumber compare: myNumber] == NSOrderedAscending)
            NSLog(@"First number is less than second");
        
        //Page 318
    }
    return 0;
}
