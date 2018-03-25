//
//  TestMinNumberInRotatedArray.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "MinNumberInRotatedArray.h"

@interface TestMinNumberInRotatedArray : XCTestCase

@end

@implementation TestMinNumberInRotatedArray

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSArray *testArray1 = [NSArray arrayWithObjects:@3, @4, @5, @1, @2, nil];
    NSArray *testArray2 = [NSArray arrayWithObjects:@1, @0, @1, @1, @1, nil];
    XCTAssertEqualObjects(@1, [MinNumberInRotatedArray min:testArray1]);
    XCTAssertEqualObjects(@0, [MinNumberInRotatedArray min:testArray2]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
