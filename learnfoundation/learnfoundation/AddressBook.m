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
-(void) removeCard:(AddressCard *)theCard{
    [book removeObjectIdenticalTo: theCard]; // 会删除和参数相同的所有对象
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
-(AddressCard *) lookup: (NSString*) theName{
    for(AddressCard *nextCard in book)
        if([nextCard.name caseInsensitiveCompare: theName] == NSOrderedSame)
            return nextCard;
    return nil;
}
@end
