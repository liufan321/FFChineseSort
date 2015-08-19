//
//  Person.m
//  ChineseSort
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import "Person.h"

@implementation Person

+ (instancetype)personWithDict:(NSDictionary *)dict {
    id obj = [[self alloc] init];
    
    [obj setValuesForKeysWithDictionary:dict];
    
    return obj;
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ - %@ - %zd -%.02f", _name, _title, _age, _height];
}

@end
