//
//  ViewController.m
//  FFChineseSort Demo
//
//  Created by 刘凡 on 15/8/20.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"
#import "NSArray+Chinese.h"
#import "NSString+Chinese.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    NSMutableArray *persons = [NSMutableArray array];
    
    Person *p = [Person personWithDict:@{@"name": @"张三", @"title": @"经理", @"age": @20, @"height": @1.7}];
    [persons addObject:p];
    p = [Person personWithDict:@{@"name": @"李四", @"title": @"老板", @"age": @18, @"height": @1.6}];
    [persons addObject:p];
    
    // 按照 name 排序
    NSLog(@"--- 按照 name 排序 ---");
    NSArray *result = [persons sortedWithChineseKey:@"name"];
    [result enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
    
    // 按照 title 排序
    NSLog(@"--- 按照 title 排序 ---");
    result = [persons sortedWithChineseKey:@"title"];
    [result enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
    
    // 排序字典数组
    NSMutableArray *arrayM = [NSMutableArray array];
    NSDictionary *dict1 = @{@"name": @"张三", @"title": @"经理", @"age": @20, @"height": @1.7};
    [arrayM addObject:dict1];
    NSDictionary *dict2 = @{@"name": @"李四", @"title": @"老板", @"age": @18, @"height": @1.6};
    [arrayM addObject:dict2];
    
    NSLog(@"--- 排序字典数组 ---");
    result = [arrayM sortedWithChineseKey:@"name"];
    [result enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@ - %@ - %@ - %@", obj[@"name"], obj[@"title"], obj[@"age"], obj[@"height"]);
    }];
    
    // 排序字符串数组
    NSArray *strings = @[@"张三", @"李四", @"王五", @"赵六", @"安娜"];
    NSLog(@"--- 排序字符串数组 ---");
    result = [strings sortedWithChineseKey:nil];
    [result enumerateObjectsUsingBlock:^(id obj, NSUInteger idx, BOOL *stop) {
        NSLog(@"%@", obj);
    }];
}

@end
