//
//  TestFindListMiddleNode.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LinkList.h"
#import "FindListMiddleNode.h"

@interface Test15_1FindListMiddleNode : XCTestCase

@end

@implementation Test15_1FindListMiddleNode

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
    LinkList *testExample1 = [LinkList listWithArray:@[@1, @2, @3, @4, @5, @6]];
    LinkList *testExample2 = [LinkList listWithArray:@[@1, @2, @3, @4, @5]];
    LinkList *testExample3 = [LinkList listWithArray:@[@1]];
    XCTAssertEqualObjects(@4, [FindListMiddleNode findMiddleNodeOfList:testExample1]);
    XCTAssertEqualObjects(@3, [FindListMiddleNode findMiddleNodeOfList:testExample2]);
    XCTAssertEqualObjects(@1, [FindListMiddleNode findMiddleNodeOfList:testExample3]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
