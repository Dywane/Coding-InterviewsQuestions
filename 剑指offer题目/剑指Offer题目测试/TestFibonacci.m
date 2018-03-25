//
//  TestFibonacci.m
//  剑指Offer题目测试
//
//  Created by 张枞楷 on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "Fibonacci.h"
@interface TestFibonacci : XCTestCase

@end

@implementation TestFibonacci{
    NSNumber *_number;
}

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    _number = @6;
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    NSNumber *result = [Fibonacci fibonacciWithNumber:_number];
    NSLog(@"result: %@",result);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
