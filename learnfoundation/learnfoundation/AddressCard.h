//
//  AddressCard.h
//  learnfoundation
//
//  Created by lizhufeng on 27/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AddressCard : NSObject

//-(void) setName: (NSString *) theName;
//-(void) setEmail: (NSString *) theEmail;
//-(NSString *) name;
//-(NSString *) email;
// 让系统生成访问器方法
@property (copy, nonatomic) NSString *name, *email;
// copy 特性：在 setter 方法内生成实例变量的副本。默认的方法不会生成副本，仅仅进行赋值（默认为assign特性）
// nonatomic 特性：表明不必单行在竞争条件下多个线程试图同时获取实例变量的情形
-(void) setName: (NSString *)theName andEmail: (NSString*) theEmail;
-(void) print;
//比较方法
-(NSComparisonResult) compareNames: (id)element;
@end
