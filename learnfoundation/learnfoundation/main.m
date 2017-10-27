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

void callAddressCard(void);

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
        callAddressCard();
        //Page 346
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
    NSString *bEmail = @"tony,iannino@techfitness.com";
    AddressCard *card1 = [[AddressCard alloc]init];
    AddressCard *card2 = [[AddressCard alloc]init];

    [card1 setName: aName andEmail: aEmail];
    [card2 setName: bName andEmail: bEmail];
    
    [card1 print];
    [card2 print];
    
    
}
