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
    if (number < 0 )
        number = - number;
    else
        NSLog(@"input number > 0");
        
    NSLog(@"The absolute value is %i", number);
}
@end
