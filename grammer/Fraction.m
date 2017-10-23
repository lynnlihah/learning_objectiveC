//
//  Fraction.m
//  grammer
//
//  Created by li on 2017/8/15.
//  Copyright © 2017年 temp. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Fraction.h"

//实现.m文件（相当于c中的.cpp）
@implementation Fraction

@synthesize numerator = _abc, denominator = _def;
-(void) print {
    NSLog(@"print %i %i",_abc,_def);
//    self-> _abc = 12;
//    self-> _def =30;
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
    self = [super init]; //调用父类的初始化方法
    //必须将父类init方法的执行结果赋值给self，因为初始化过程改变了对象在内存中的位置
    //意味着引用将要改变
    if (self != nil) { // or if (self) //self 非空 说明初始化过程成功
        self->_abc = 1;
        self->_def = 1;
    }
    return self;
    //return [self initWith: 0 over:0]; 指定初始化规则
}
-(Fraction *) initWith:(int) n over:(int) d{
    self = [super init];
    if (self)
        [self initSetNum: n over: d]; //调用类的一个方法
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

// 为Fraction添加分类
@interface Fraction(MathOps)
-(Fraction *) add: (Fraction *) f;
-(Fraction *) mul: (Fraction *) f;
-(Fraction *) sub: (Fraction *) f;
-(Fraction *) div: (Fraction *) f;
@end

@implementation Fraction(MathOps)
-(Fraction *) add: (Fraction *) f{
    //a/b + c/d = ((a*d) + (b*c))/(b*d)
    Fraction *result = [[Fraction alloc] init];
    return result;
};

-(Fraction *) mul: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    return result;
};

-(Fraction *) sub: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    return result;
};

-(Fraction *) div: (Fraction *) f{
    Fraction *result = [[Fraction alloc] init];
    return result;
};

@end

//@interface GraphicObject()// 括号内不填写分类名-类的扩展
//@end

//@protocol 协议 ： 多个类共享一个方法列表

