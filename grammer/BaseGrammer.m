//
//  BaseGrammer.m
//  grammer
//
//  Created by lizhufeng on 09/10/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#import "BaseGrammer.h"

@implementation BaseGrammer

-(void) if_structure : (int) number {
    int sign;
    if (number < 0 )
        sign = -1;
    else if (number == 0)
        sign = 0;
    else
        sign = 1;
        
    NSLog(@"Sign = %i", sign);
}

-(void) switch_structure:(int)number{
    int sign;
    switch (number) {
        case 1:
            sign = 1;
            break;
        case 0:
            sign = 0;
            break;
        default:
            sign = -1;
            break;
    }
    NSLog(@"Sign = %i", sign);
}

@end
