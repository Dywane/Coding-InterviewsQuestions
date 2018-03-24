//
//  TestTwoQueueStack.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TwoQueueStack.h"

@interface TestTwoQueueStack : XCTestCase

@property (strong, nonatomic) TwoQueueStack *stack;

@end

@implementation TestTwoQueueStack

- (void)setUp {
    [super setUp];
    _stack = [[TwoQueueStack alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [_stack push:@1];
    XCTAssertEqualObjects(@1, [_stack pop]);
    [_stack push:@2];
    [_stack push:@3];
    [_stack push:@10];
    XCTAssertEqualObjects(@10, [_stack pop]);
    [_stack push:@5];
    [_stack push:@4];
    XCTAssertEqualObjects(@4, [_stack pop]);
    XCTAssertEqualObjects(@5, [_stack pop]);
    XCTAssertEqualObjects(@3, [_stack pop]);
    XCTAssertEqualObjects(@2, [_stack pop]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
