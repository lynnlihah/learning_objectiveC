//
//  BaseGrammer.h
//  grammer
//
//  Created by lizhufeng on 09/10/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#ifndef BaseGrammer_h
#define BaseGrammer_h

#import <Foundation/Foundation.h>

@interface BaseGrammer : NSObject

//selection structure
-(void) if_structure:(int)number;
-(void) switch_structure:(int)number;
@end

//作用域 @protected @private @public @package
//变量名： _value  实例变量
//       gValue   全局变量，可以在其他地方用extern访问（？同一文件不用也行），格式： extern int gMoveNumber=0；
//       static   静态变量
//       enum 枚举类型 enum flag {false, true};
//       typedef int Counter； // 同 C
//       使用步骤 1. 像声明所需类型的变量那样编写一条语句 2 在通常应该出现声明的变量名的地方，将其替换为新的类型名。3. 在语句的前面加上关键字typedef
//       typedef enum {east, south, west, north} Direction;
//       类型转换 （）
//       位运算： & | ^ ~ << >>
#endif /* BaseGrammer_h */
