//
//  UseNSArray.m
//  learnfoundation
//
//  Created by lizhufeng on 27/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "UseNSArray.h"

@implementation UseNSArray
-(void)UesExample{
    NSArray *monthNames = [NSArray arrayWithObjects:
       @"January", @"February", @"March", @"April",
       @"May", @"June", @"July", @"August", @"September",
       @"October", @"November", @"December", nil];
    
    // 列出数组中所有的元素
    NSLog(@"Month Name");
    NSLog(@"===== ====");
    
    for(int i = 0; i < 12; ++i)
        NSLog(@" %2i    %@", i + 1, [monthNames objectAtIndex: i]);
    
    NSMutableArray *numbers = [NSMutableArray array];
    NSNumber *myNumber;
    int i;
    
    // 创建0～9数字的数组
    for(i = 0; i < 10; ++i){
        myNumber = [NSNumber numberWithInteger: i];
        [numbers addObject: myNumber];
    }
    
    // 遍历数组与显示其值
    for(i = 0; i < 10; ++i){
        myNumber = [numbers objectAtIndex: i];
        NSLog(@"%@", myNumber);
    }
    
    // 使用带有%@格式的NSLog显示
    NSLog(@"====== Using a sing NSLog");
    NSLog(@"%@", numbers);
}
@end
