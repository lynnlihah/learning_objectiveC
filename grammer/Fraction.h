//
//  Fraction.h
//  grammer
//
//  Created by li on 2017/8/15.
//  Copyright © 2017年 temp. All rights reserved.
//

#ifndef Fraction_h
#define Fraction_h

#import <Foundation/Foundation.h>
//类用@interface定义，而不是@class，相当于Java中的class了。而Object-C中接口(Java中的接口)是用@protocol（下面有介绍）表示。
//.h 头文件，与c++的头文件类似
@interface Fraction : NSObject
//成员变量
//@protected
@property int numerator, denominator;
//类方法
-(void) print;
//多参数函数
-(void)initSetNum:(int) n over:(int) d;
-(id)init;
@end


#endif /* Fraction_h */
