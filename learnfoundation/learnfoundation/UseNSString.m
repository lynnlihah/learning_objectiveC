//
//  UseNSString.m
//  learnfoundation
//
//  Created by lizhufeng on 25/10/2017.
//  Copyright © 2017 lizhufeng. All rights reserved.
//

#import "UseNSString.h"

@implementation UseNSString

-(void)UesExample_1{
    
    NSString *str = @"Programming is fun";
    NSLog(@"%@", str); // %@可用于显示数组、字典和集合的全部内容
    
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    NSComparisonResult compareResult;
    
    // 计算字符串长度
    NSLog(@"Length of str1: %lu",[str1 length]);
    
    // 将一个字符串复制到另一个字符串
    res = [NSString stringWithString: str1];
    NSLog(@"copy: %@", res);
    
    // 将一个字符串复制到另一个字符串的末尾
    str2 = [str1 stringByAppendingString: str2];
    NSLog(@"Concatentation: %@", str2);
    
    //验证两个字符串是否相等
    if ([str1 isEqualToString: res] == YES)
        NSLog(@"str1 == res");
    else
        NSLog(@"str1 != res");
    
    //验证一个字符串是否小于、等于或大于另一个字符串
    compareResult = [str1 compare: str2];
    
    if (compareResult == NSOrderedAscending)
        NSLog(@"str1 < str2");
    else if (compareResult == NSOrderedSame)
        NSLog(@"str1 == str2");
    else
        NSLog(@"str1 > str2");
    
    // 将字符串转换为大写
    res = [str1 uppercaseString];
    NSLog(@"Uppercase conversion: %s", [res UTF8String]);
    
    // 将字符串转换为小写
    res = [str1 lowercaseString];
    NSLog(@"Lowercase conversion: %@", res);
    
    NSLog(@"Original string: %@", str1);
}

-(void)UesExample_2{
    NSString *str1 = @"This is string A";
    NSString *str2 = @"This is string B";
    NSString *res;
    NSRange subRange;
    
    // 从字符串中提取前3个字符
    res = [str1 substringToIndex: 3];
    NSLog(@"First 3 chars of str1: %@", res);
    
    // 提取从索引5开始直到结尾的子字符串
    res = [str1 substringFromIndex: 5];
    NSLog(@"Chars from index 5 of str1: %@", res);
    
    // 提取从索引5开始到索引13的子字符串（6个字符）
    res = [[str1 substringFromIndex: 8] substringFromIndex:6];
    NSLog(@"Chars from index 8 through 13: %@", res);
    
    // 更简单的方法
    res = [str1 substringWithRange: NSMakeRange(8, 6)];
    NSLog(@"Chars from index 8 through 13: %@", res);
    
    // 从另一个字符串中查找一个字符串
    subRange = [str1 rangeOfString: @"string A"];
    NSLog(@"String is at index %lu, length is %lu",
          subRange.location, subRange.length);
    
    subRange = [str1 rangeOfString: @"string B"];
    
    if(subRange.location == NSNotFound)
        NSLog(@"String not found");
    else
        NSLog(@"String is at index %lu, length is %lu",
              subRange.location, subRange.length);
    
    
}

-(void)UesExample_3{
    NSString *str1 = @"This is string A";
    NSString *search, *replace;
    NSMutableString *mstr;
    NSRange substr;
    
    // 从不可变字符串创建可变字符串
    mstr = [NSMutableString stringWithString: str1];
    NSLog(@"%@", mstr);
    
    // 插入字符
    [mstr insertString: @" mutable" atIndex: 7];
    NSLog(@"%@", mstr);
    
    // 插入末尾进行有效拼接
    [mstr insertString: @" and string B" atIndex: [mstr length]];
    NSLog(@"%@", mstr);
    
    // 直接使用 appendString
    [mstr appendString: @" and string C"];
    NSLog(@"%@", mstr);

    // 根据范围删除子字符串
    [mstr deleteCharactersInRange: NSMakeRange (16, 13)] ;
    NSLog(@"%@", mstr);

    // 查找然后将其删除
    substr = [mstr rangeOfString: @"string B and "];

    if (substr.location != NSNotFound){
        [mstr deleteCharactersInRange: substr];
        NSLog(@"%@", mstr);
    }

    // 直接设置为可变的字符串
    [mstr setString: @"This is string A"];
    NSLog(@"%@", mstr);

    // 替换一些字符
    [mstr replaceCharactersInRange: NSMakeRange(8, 8)
                    withString: @"a mutable string"];
    NSLog(@"%@", mstr);

    // 查找和替换
    search = @"This is";
    replace = @"An example of";

    substr = [mstr rangeOfString: search];

    if(substr.location != NSNotFound){
        [mstr replaceCharactersInRange: substr
                    withString: replace];
        NSLog(@"%@", mstr);
    }

    // 查找和替换所有的匹配项
    search = @"a";
    replace = @"X";
    substr = [mstr rangeOfString: search];

    while(substr.location != NSNotFound){
        [mstr replaceCharactersInRange: substr
                    withString: replace];
        substr = [mstr rangeOfString: search];
    }

    NSLog(@"%@", mstr);
}

@end
