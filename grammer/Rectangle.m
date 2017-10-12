//
//  Rectangle.m
//  grammer
//
//  Created by lizhufeng on 12/10/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#import "Rectangle.h"
#import "XYPoint.h"

@implementation Rectangle
{
    XYPoint *origin; // 具有对象的类
}

@synthesize width, height;

-(void) setWidth:(int) w andHeight: (int) h{
    width = w;
    height = h;
}

-(void) setOrigin:(XYPoint *)pt{
//    origin = pt; 指针 用@class即可
    if(!origin) //要用 #import 头文件
        origin = [[XYPoint alloc] init];
    origin.x = pt.x;
    origin.y = pt.y;
}

-(int) area{
    return width * height;
}

-(int) perimeter{
    return (width + height) * 2;
}

-(XYPoint *)origin{
    return origin;
}
@end
