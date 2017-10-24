//
//  Calculator.h
//  grammer
//
//  Created by lizhufeng on 05/09/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#ifndef Calculator_h
#define Calculator_h

#import <Foundation/Foundation.h>

@interface Calculator : NSObject

//累加方法
-(void) setAccumulator:(double) value;
-(void) clear;
-(double) accumulator;

//算术方法
-(void) add: (double) value;
-(void) substract: (double) value;
-(void) multiply: (double) value;
-(void) divide: (double) value;
@end

#endif /* Calculator_h */
