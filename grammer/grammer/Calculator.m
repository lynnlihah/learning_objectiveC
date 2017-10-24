//
//  Calculator.m
//  grammer
//
//  Created by lizhufeng on 05/09/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Calculator.h"

@implementation Calculator
{
    double accumulator;
}

-(void) setAccumulator:(double)value
{
    accumulator = value;
}

-(void) clear
{
    accumulator = 0;
}

-(double) accumulator
{
    return accumulator;
}

-(void)add: (double) value
{
    accumulator += value;
}

-(void) substract:(double)value
{
    accumulator -= value;
}

-(void) multiply:(double)value
{
    accumulator *= value;
}

-(void) divide: (double) value
{
    accumulator /= value;
}

@end
