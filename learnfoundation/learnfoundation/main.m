//
//  main.m
//  learnfoundation
//
//  Created by lizhufeng on 24/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

//  术语Cocoa总的来说指的是foundation框架、Application Kit框架和名为Core Data的第三方框架

#import <Foundation/Foundation.h>
#import "UseNSNumber.h"
#import "UseNSString.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // insert code here...m
//        NSLog(@"Hello, World!");
        UseNSNumber *num = [[UseNSNumber alloc]init];
        [num UesExample];
        
        UseNSString *str = [[UseNSString alloc]init];
        [str UesExample];
       
        
        //Page 321
    }
    return 0;
}

