//
//  Square.m
//  grammer
//
//  Created by lizhufeng on 12/10/2017.
//  Copyright © 2017 temp. All rights reserved.
//

#import "Square.h"

@implementation Square: Rectangle

-(void) setSide: (int) s{
    [self setWidth: s andHeight: s];
}

-(int) side{
    return self.width;
}
@end
