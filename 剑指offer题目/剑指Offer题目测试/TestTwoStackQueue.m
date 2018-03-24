//
//  TestTwoStackQueue.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "TwoStackQueue.h"

@interface TestTwoStackQueue : XCTestCase

@property (strong, nonatomic) TwoStackQueue* queue;

@end

@implementation TestTwoStackQueue

- (void)setUp {
    [super setUp];
    _queue = [[TwoStackQueue alloc] init];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    [_queue appendTail:@1];
    XCTAssertEqualObjects(@1, [_queue deleteHead]);
    
    [_queue appendTail:@2];
    [_queue appendTail:@4];
    [_queue appendTail:@10];
    [_queue appendTail:@3];
    XCTAssertEqualObjects(@2, [_queue deleteHead]);
    
    [_queue appendTail:@5];
    XCTAssertEqualObjects(@4, [_queue deleteHead]);
    XCTAssertEqualObjects(@10, [_queue deleteHead]);
    XCTAssertEqualObjects(@3, [_queue deleteHead]);
    XCTAssertEqualObjects(@5, [_queue deleteHead]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
