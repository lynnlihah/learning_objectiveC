//
//  main.m
//  grammer
//
//  Created by li on 2017/7/19.
//  Copyright © 2017年 temp. All rights reserved.

#import <Foundation/Foundation.h>
#import "Fraction.h"
#import "Calculator.h"
#import "BaseGrammer.h"
//#import "Rectangle.h"
#import "Square.h"
#import "XYPoint.h"

//first try
void callFractionClass(void);
void callCalculationClass(void);
// grammer
void callBaseGrammerClass(void);
// class
void callSubCalss(void);

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...
        NSLog(@"Hello, World!");
//        callFractionClass();
//        callCalculationClass();
//        callBaseGrammerClass();
        callSubCalss();
        //page 171
    }
    return 0;
}

void callFractionClass()
{
    Fraction * fraction = [[Fraction alloc]init];
    [fraction setNumerator:10];
    NSLog(@"numerator is %d", [fraction numerator]);

    fraction.numerator = 20;
    NSLog(@"numerator is %d", fraction.numerator);
}

void callCalculationClass()
{
    Calculator *deskCalc = [[Calculator alloc] init];
    
    [deskCalc setAccumulator:100.0];
    [deskCalc add: 200.];
    [deskCalc divide: 15.0];
    [deskCalc substract: 10.];
    [deskCalc multiply: 5];
    NSLog(@"The result is %g", [deskCalc accumulator]);
}

void callBaseGrammerClass()
{
    NSLog(@"Type in your number:");
    int n;
    //        scanf("%i", &n);
    n = -20;
    BaseGrammer *selstructure = [[BaseGrammer alloc] init];
    [selstructure if_structure: n];
    [selstructure switch_structure: n];
}

void callSubCalss(){
    Rectangle *myRect = [[Rectangle alloc] init];
    XYPoint *myPoint = [[XYPoint alloc]init];
    
    [myPoint setX:100 andY:200];
    [myRect setWidth:5 andHeight:8];
    myRect.origin = myPoint;
    
    NSLog(@"Rectangle: w = %i, h = %i", myRect.width, myRect.height);
    NSLog(@"Origin at (%i, %i)", myRect.origin.x, myRect.origin.y);
    NSLog(@"Area = %i, Perimeter = %i", [myRect area], [myRect perimeter]);
    
    Square *mySquare = [[Square alloc] init];
    [mySquare setSide: 5];
    NSLog(@"Square: s = %i", [mySquare side]);
    NSLog(@"Area = %i, Perimeter = %i", [mySquare area], [mySquare perimeter]);
}
