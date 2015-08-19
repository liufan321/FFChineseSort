//
//  FFChineseSortTests.m
//  FFChineseSortTests
//
//  Created by 刘凡 on 15/8/19.
//  Copyright © 2015年 joyios. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "NSString+Chinese.h"

@interface FFChineseSortTests : XCTestCase

@end

@implementation FFChineseSortTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    XCTAssertEqualObjects(@"张三".pinyinString, @"zhang san");
    XCTAssertEqualObjects(@"李四".pinyinString, @"li si");
    XCTAssertEqualObjects(@"重庆".pinyinString, @"chong qing");
    XCTAssertEqualObjects(@"重量".pinyinString, @"zhong liang");
    XCTAssertEqualObjects(@"".pinyinString, @"");
    XCTAssertEqualObjects(@"lisi".pinyinString, @"lisi");
    XCTAssertEqualObjects(@"123456张三".pinyinString, @"123456zhang san");
    XCTAssertEqualObjects(@"😄".pinyinString, @"😄");
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
