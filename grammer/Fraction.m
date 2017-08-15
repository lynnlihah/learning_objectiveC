//
//  Fraction.m
//  grammer
//
//  Created by zdns on 2017/8/15.
//  Copyright © 2017年 temp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

//实现.m文件（相当于c中的.cpp）
@implementation Fraction

@synthesize numerator = _abc, denominator = _def;
-(void) print {
//    NSLog(@"print");
    self-> _abc = 12;
    self-> _def =30;
}

//@property int numerator, denominator; //在.h中
//@synthesize numerator = _abc, denominator = _def;
//两句话为我们生成了(暂时不考虑内存管理)
//(void) setNumerator:(int) n {
//    //@synthesize numerator, denominator; 若是这样则
//    //self->numerator = n;
//    self->_abc = n;
//}
//
//(void) setDenominator:(int) n {
//    self->_def = n;
//}
//
//(int) numerator {
//    return self->_abc;
//}
//
//(int) denominator {
//    return self->_abc;
//}
//如果不写@synthesize，编译器会自动生成@ synthesize name = _name

-(id)init{
    self = [super init];
    if (self != nil) {
        self->_abc = 1;
        self->_def = 1;
    }
    return self;
}

-(void)initSetNum:(int)n over:(int)d {
    self->_abc = d;
    self->_def = n;
}

@end

// init 模板
/*
 -(id)init{
 self = [super init];
 if (self) {
 //do init
 }
 return self;
 }
 */
