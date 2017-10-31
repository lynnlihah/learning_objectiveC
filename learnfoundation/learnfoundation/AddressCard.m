//
//  AddressCard.m
//  learnfoundation
//
//  Created by lizhufeng on 27/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "AddressCard.h"

@implementation AddressCard
/*{
    NSString *name;
    NSString *email;
}

-(void) setName: (NSString *) theName{
    if(name != theName)
    name = [NSString stringWithString: theName];
}

-(void) setEmail: (NSString *) theEmail{
    if(email != theEmail)
    email = [NSString stringWithString: theEmail];
}

-(NSString *) name{
    return name;
}

-(NSString *) email{
    return email;
}*/

// 让系统生成访问器方法
@synthesize name, email;

// 添加一个能同时给两个属性赋值的方法
-(void) setName: (NSString *)theName andEmail: (NSString*) theEmail{
    self.name = theName;
    self.email = theEmail;
}

-(void) print{
    NSLog(@"=======================================");
    NSLog(@"|                                     |");
    NSLog(@"|   %-31s   |", [name UTF8String]);
    NSLog(@"|   %-31s   |", [email UTF8String]);
    NSLog(@"|                                     |");
    NSLog(@"|                                     |");
    NSLog(@"|                                     |");
    NSLog(@"|          O              O           |");
    NSLog(@"=======================================");
}

-(NSComparisonResult) compareNames: (id)element{
    return [name compare:[element name]];
}
@end
