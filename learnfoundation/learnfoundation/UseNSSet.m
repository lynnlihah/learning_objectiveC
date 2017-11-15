//
//  UseNSSet.m
//  learnfoundation
//
//  Created by lizhufeng on 13/11/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "UseNSSet.h"
#define INTOBJ(v) [NSNumber numberWithInteger: v]

@implementation UseNSSet
-(void)UseExample{
    NSMutableSet *set1 = [NSMutableSet setWithObjects:
                          INTOBJ(1), INTOBJ(3), INTOBJ(5), INTOBJ(10), nil];
    NSSet *set2 = [NSSet setWithObjects:
                   INTOBJ(-5), INTOBJ(100), INTOBJ(3), INTOBJ(5), nil];
    NSSet *set3 = [NSSet setWithObjects:
                   INTOBJ(12), INTOBJ(200), INTOBJ(3), nil];
    NSLog(@"Set1: ");
    [set1 print];
    NSLog(@"set2: ");
    [set2 print];
//    相等性测试
    if([set1 isEqualToSet: set2] == YES)
        NSLog(@"set1 equals set2");
    else
        NSLog(@"set1 is not equal to set2");
//    成员测试
    if ([set1 containsObject: INTOBJ(10)] == YES)
        NSLog(@"set1 contains 10");
    else
        NSLog(@"set does not contain 10");

    if ([set2 containsObject: INTOBJ(10)] == YES)
        NSLog(@"set2 contains 10");
    else
        NSLog(@"set2 does not contain 10");
//    在可变集合set1中添加和移除对象
    [set1 addObject:INTOBJ(4)];
    [set1 removeObject:INTOBJ(10)];
    NSLog(@"set1 after adding 4 and removing 10: ");
    [set1 print];
//    获得两个集合的交集
    [set1 intersectSet:set2];
    NSLog(@"set1 intersect set2: ");
    [set1 print];
//    两个集合的并集
    [set1 unionSet:set3];
    NSLog(@"set1 union set3: ");
    [set1 print];

}
@end
