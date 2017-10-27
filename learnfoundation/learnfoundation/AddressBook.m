//
//  AddressBook.m
//  learnfoundation
//
//  Created by lizhufeng on 27/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "AddressBook.h"

@implementation AddressBook

@synthesize bookName, book;

//设置AddressBook的名称和一个空的AddressBook
-(id) initWithName:(NSString *)name{
    self = [super init];
    if(self){
        bookName = [NSString stringWithString: name];
        book = [NSMutableArray array];
    }
    return self;
}
-(id) init{
    return [self initWithName:@"NoName"];
}
-(void) addCard:(AddressCard *)theCard{
    [book addObject: theCard];
}
-(int) entries{
    return [book count];
}
-(void) list{
    NSLog(@"================== Contents of: %@ =================", bookName);
    for(AddressCard *theCard in book)
        NSLog(@"%-20s   %-32s", [theCard.name UTF8String],
              [theCard.email UTF8String]);
    NSLog(@"===============================================================");
}
@end
