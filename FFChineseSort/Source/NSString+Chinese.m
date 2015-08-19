//
//  NSString+Chinese.m
//  FFChineseSort
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import "NSString+Chinese.h"

@implementation NSString (Chinese)

- (NSString *)pinyinString {
    NSAssert([self isKindOfClass:[NSString class]], @"必须是字符串");
    
    if (self == nil) {
        return nil;
    }
    
    NSMutableString *pinyin = [self mutableCopy];
    
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformMandarinLatin, NO);
    CFStringTransform((__bridge CFMutableStringRef)pinyin, NULL, kCFStringTransformStripDiacritics, NO);
    
    return pinyin;
}

@end
