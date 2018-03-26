//
//  TestReverseList.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LinkList.h"
#import "ReverseList.h"

@interface TestReverseList : XCTestCase

@end

@implementation TestReverseList

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
    LinkList *testExample1 = [LinkList listWithArray:@[@1, @2, @3, @4, @5]];
    LinkList *testExample2 = [LinkList listWithArray:@[@1]];
    
    LinkList *reverseExample1 = [LinkList listWithArray:@[@5, @4, @3, @2, @1]];
    XCTAssertTrue([LinkList isSameList: reverseExample1 list2: [ReverseList reverseList:testExample1]]);
    XCTAssertTrue([LinkList isSameList: testExample2 list2: [ReverseList reverseList:testExample2]]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
