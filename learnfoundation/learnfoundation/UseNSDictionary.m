//
//  UseNSDictionary.m
//  learnfoundation
//
//  Created by lizhufeng on 04/11/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "UseNSDictionary.h"

@implementation UseNSDictionary

-(void)UseExample_1{
    NSMutableDictionary *glossary = [NSMutableDictionary dictionary];
    
    //存储三个条目在类别中
    [glossary setObject: @"A class defined so other classes can inherit from it"
                 forKey: @"abstract class"];
    [glossary setObject: @"To implement all the methods defined in a protocol"
                 forKey: @"adopt"];
    [glossary setObject: @"Sorting an object for later use"
                 forKey: @"archiving"];
    
    //检索并显示它们
    NSLog (@"abstract class: %@", [glossary objectForKey: @"abstract class"]);
    NSLog (@"adopt: %@",[glossary objectForKey: @"adopt"]);
    NSLog (@"archiving: %@",[glossary objectForKey: @"archiving"]);
}

-(void)UseExample_2{ // 枚举词典
    NSDictionary *glossary = [NSDictionary dictionaryWithObjectsAndKeys:
                              @"A class defined so other classes can inherit from it",
                              @"abstract class",
                              @"To implement all the methods defined in a protocol",
                              @"adopt",
                              @"Sorting an object for later use",
                              @"archiving",
                              nil];

    // 打印词典中所有的键-值对
    for(NSString *key in glossary)
        NSLog(@"%@: %@", key, [glossary objectForKey: key]);
}
@end
