//
//  Person.h
//  ChineseSort
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *title;
@property (nonatomic, assign) NSInteger age;
@property (nonatomic, assign) double height;

+ (instancetype)personWithDict:(NSDictionary *)dict;

@end
