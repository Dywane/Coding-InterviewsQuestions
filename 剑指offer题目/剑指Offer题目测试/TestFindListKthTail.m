//
//  TestFindListKthTail.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "FindListKthTail.h"
#import "LinkList.h"

@interface TestFindListKthTail : XCTestCase

@end

@implementation TestFindListKthTail

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
    LinkList *testExample = [LinkList listWithArray:@[@1, @2, @3, @4, @5, @6]];
    XCTAssertEqualObjects(@6, [FindListKthTail findKthTail:testExample k:1]);
    XCTAssertEqualObjects(@3, [FindListKthTail findKthTail:testExample k:4]);
    XCTAssertEqualObjects(@1, [FindListKthTail findKthTail:testExample k:6]);
    XCTAssertNil([FindListKthTail findKthTail:testExample k:7]);
    XCTAssertNil([FindListKthTail findKthTail:testExample k:0]);
    XCTAssertNil([FindListKthTail findKthTail:nil k:7]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
