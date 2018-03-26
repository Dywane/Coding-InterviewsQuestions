
//
//  TestMergeTwoSortedList.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/26.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LinkList.h"
#import "MergeTwoSortedList.h"

@interface TestMergeTwoSortedList : XCTestCase

@end

@implementation TestMergeTwoSortedList

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
    LinkList *list1 = [LinkList listWithArray:@[@1, @3, @4, @7, @99]];
    LinkList *list2 = [LinkList listWithArray:@[@5, @7, @9, @10]];
    LinkList *list3 = [LinkList listWithArray:@[@2]];
    
    LinkList *list1_2 = [LinkList listWithArray:@[@1, @3, @4, @5, @7, @7, @9, @10, @99]];
    LinkList *list1_3 = [LinkList listWithArray:@[@1, @2, @3, @4, @7, @99]];
    LinkList *list2_3 = [LinkList listWithArray:@[@2, @5, @7, @9, @10]];
    
    XCTAssertTrue([LinkList isSameList:list1_2 list2:[MergeTwoSortedList mergeTwoSortedList:list1 list2:list2]]);
    XCTAssertTrue([LinkList isSameList:list1_3 list2:[MergeTwoSortedList mergeTwoSortedList:list1 list2:list3]]);
    XCTAssertTrue([LinkList isSameList:list2_3 list2:[MergeTwoSortedList mergeTwoSortedList:list3 list2:list2]]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
