//
//  NSArray+Chinese.m
//  FFChineseSort
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import "NSArray+Chinese.h"
#import "NSString+Chinese.h"

@implementation NSArray (Chinese)

- (NSArray *)sortedWithChineseKey:(NSString *)chineseKey {
    
    NSMutableArray *tmpArray = [NSMutableArray arrayWithCapacity:self.count];
    
    for (int i = 0; i < self.count; ++i) {
        NSString *chineseString = (chineseKey == nil) ? self[i] : [self[i] valueForKeyPath:chineseKey];
        [tmpArray addObject:@{@"obj": self[i], @"pinyin": chineseString.pinyinString.lowercaseString}];
    }
    
    [tmpArray sortUsingComparator:^NSComparisonResult(NSDictionary *obj1, NSDictionary *obj2) {
        return [obj1[@"pinyin"] compare:obj2[@"pinyin"]];
    }];
    
    return [tmpArray valueForKey:@"obj"];;
}

@end
