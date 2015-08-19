//
//  NSArray+Chinese.h
//  FFChineseSort
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSArray (Chinese)

/// 使用指定 key 的属性对数组进行排序
///
/// @param chineseKey 要排序属性的名称
///
/// @return 排序后的数组
- (NSArray *)sortedWithChineseKey:(NSString *)chineseKey;

@end
