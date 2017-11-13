//
//  main.m
//  learnfoundation
//
//  Created by lizhufeng on 24/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

//  术语Cocoa总的来说指的是foundation框架、Application Kit框架和名为Core Data的第三方框架

#import <Foundation/Foundation.h>
#import "UseNSNumber.h"
#import "UseNSString.h"
#import "UseNSArray.h"
#import "AddressCard.h"
#import "AddressBook.h"
#import "UseNSDictionary.h"

void callAddressCard(void);
//知识点-NSValue-wrapping & unwrapping 即C语言中的结构转换为OC的对象
//NSArray只能存储对象
void callNSValue(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...m
//        NSLog(@"Hello, World!");
//        UseNSNumber *num = [[UseNSNumber alloc]init];
//        [num UesExample];
        
//        UseNSString *str = [[UseNSString alloc]init];
//        [str UesExample_1];
//        [str UesExample_2];
//        [str UesExample_3];
        
//        UseNSArray *arr = [[UseNSArray alloc]init];
//        [arr UesExample];
//        callAddressCard();
        
        UseNSDictionary *dic = [[UseNSDictionary alloc] init];
        [dic UseExample_1];
        [dic UseExample_2];
        //Page 363
    }
    return 0;
}

void callAddressCard(void){
    //手写类的属性处理方法调用
    NSString *aName = @"Julia Kochan";
    NSString *aEmail = @"jewls337@axlc.com";
//    AddressCard *card1 = [[AddressCard alloc]init];
//    [card1 setName: aName];
//    [card1 setEmail: aEmail];
//    [card1 print];
    
    //使用生成器自动生成属性处理方法
    NSString *bName = @"Tony Iannino";
    NSString *bEmail = @"tony.iannino@techfitness.com";
    AddressCard *card1 = [[AddressCard alloc]init];
    AddressCard *card2 = [[AddressCard alloc]init];

//    [card1 setName: aName andEmail: aEmail];
//    [card2 setName: bName andEmail: bEmail];
//
//    [card1 print];
//    [card2 print];
 
    //使用地址薄
    NSString *cName = @"Stephen Kochan";
    NSString *cEmail = @"steve@classroomM.com";
    NSString *dName = @"Jamie Baker";
    NSString *dEmail = @"jbaker@classroomM.com";
    
    AddressCard *card3 = [[AddressCard alloc]init];
    AddressCard *card4 = [[AddressCard alloc]init];
    
    // 创建一个新的地址薄
    AddressBook *myBook = [[AddressBook alloc]
                           initWithName: @"Linda's Addredd Book"];
    
    NSLog(@"entries in addredd book after creation: %i",
          [myBook entries]);
    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    [card3 setName: cName andEmail: cEmail];
    [card4 setName: dName andEmail: dEmail];
    
    [myBook addCard: card1];
    [myBook addCard: card2];
    [myBook addCard: card3];
    [myBook addCard: card4];
    
    NSLog(@"Entries in address book after adding cards: %i",
          [myBook entries]);
    [myBook list];
    
    // 排序后列出
    [myBook sort];
    [myBook list];
    
    // 通过名字查找一个人
    NSLog(@"Stephen Kochan");
    
    AddressCard *myCard;
    myCard = [myBook lookup: @"stephen Kochan"];
    if(myCard !=nil)
        [myCard print];
    else
        NSLog(@"Not found!");
    
    //尝试另一种查找
    NSLog(@"Haibo Zhange");
    myCard = [myBook lookup: @"Harbo Zhange"];
    if(myCard !=nil)
        [myCard print];
    else
        NSLog(@"Not found!");
}

void callNSValue(void){
    CGPoint myPoint;// 框架自带，但是typedef定义的
    NSValue *pointObj;
    NSMutableArray *touchPoints=[NSMutableArray array];
    
    myPoint.x = 100.;
    myPoint.y = 200.;
    
    pointObj = [NSValue valueWithPoint: myPoint];
    [touchPoints addObject: pointObj];
    
    //从数组touchPoints中取出最后一个点并将它转化成CGPoint
    myPoint = [[touchPoints lastObject] pointValue];
    
}
