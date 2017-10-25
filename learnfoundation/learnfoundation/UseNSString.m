//
//  UseNSString.m
//  learnfoundation
//
//  Created by lizhufeng on 25/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "UseNSString.h"

@implementation UseNSString

-(void)UesExample{
    
    NSString *str = @"Programming is fun";
    NSLog(@"%@", str); // %@可用于显示数组、字典和集合的全部内容
    
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    NSComparisonResult compareResult;
    
    //计算字符串长度
    NSLog(@"Length of str1: %lu",[str1 length]);
}

@end
