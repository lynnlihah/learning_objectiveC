//
//  AddressBook.h
//  learnfoundation
//
//  Created by lizhufeng on 27/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AddressCard.h"

// AddressCard的数组集合，用于批量管理AddressCard
@interface AddressBook : NSObject

@property (nonatomic, copy) NSString *bookName;
@property (nonatomic, strong) NSMutableArray *book; //strong特性-内存管理和自动引用计数

-(id) initWithName: (NSString *)name; //设置初始数组，用于存放地址卡片，同时保存地址簿的名称
-(void) addCard: (AddressCard *) theCard;
-(int) entries; //获取地址簿中卡片的数量
-(void) list;   //显示地址簿的全部内容

@end
