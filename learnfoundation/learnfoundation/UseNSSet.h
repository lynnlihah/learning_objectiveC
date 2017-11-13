//
//  UseNSSet.h
//  learnfoundation
//
//  Created by lizhufeng on 13/11/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#define INTOBJ(v) [NSNumber numberWithInteger: v]

@interface NSSet (Printing)
-(void) print;
@end

@implementation NSSet(Printing)
-(void) print{
    printf("{");
    for (NSNumber *element in self)
        printf("%li",(long)[element integerValue]);
    printf("}\n");
}
@end
@interface UseNSSet : NSObject

@end
