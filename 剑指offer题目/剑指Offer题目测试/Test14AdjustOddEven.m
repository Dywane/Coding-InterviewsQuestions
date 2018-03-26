//
//  TestAdjustOddEven.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AdjustOddEven.h"

@interface Test14AdjustOddEven : XCTestCase

@end

@implementation Test14AdjustOddEven

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
    NSArray *testExample1 = @[@1, @2, @3, @4, @5];
    NSArray *testExample2 = @[@2, @4, @6, @8, @10];
    NSArray *testExample3 = @[@1, @3, @5, @7, @9];
    NSArray *testExample4 = @[@2, @4, @6, @1, @3];
    NSArray *testExample5 = @[@1, @3, @5, @2, @4];
    NSArray *testExample6 = @[@1];
    
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample1]]);
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample2]]);
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample3]]);
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample4]]);
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample5]]);
    XCTAssertTrue([self isOrderCorrect: [AdjustOddEven reorderOddEven:testExample6]]);
}

- (BOOL)isOrderCorrect: (NSArray <NSNumber *> *)array {
    BOOL startEven = false;
    for(int i = 0; i < array.count; i ++) {
        if((array[i].intValue & 0x1) == 0) {    //首次出现偶数
            startEven = true;
        }
        if(startEven) {
            if((array[i].intValue & 0x1) != 0) {    //如果出现偶数后再出现奇数
                return false;
            }
        }
    }
    return true;
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
