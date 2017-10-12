//
//  Rectangle.h
//  grammer
//
//  Created by lizhufeng on 12/10/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#import <Foundation/Foundation.h>

@class XYPoint; // 可以代替 #import “XYPoint.h”
             // 提高效率，以为编译器不需要引入对应的头文件，只需要在出现这样的语句
             // XYPoint *origin;
             // 知道 XYPoint 是一个类名

@interface Rectangle : NSObject

@property int width, height;

-(XYPoint *) origin;
-(void) setOrigin: (XYPoint *)pt;
-(int) area;
-(int) perimeter;
-(void) setWidth: (int) w andHeight: (int) h;

@end
