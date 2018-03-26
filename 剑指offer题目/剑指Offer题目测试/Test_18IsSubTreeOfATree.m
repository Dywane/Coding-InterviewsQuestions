//
//  Test_18IsSubTreeOfATree.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/26.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RebuildBinaryTree.h"
#import "BinaryTree.h"
#import "IsSubTreeOfATree.h"

@interface Test_18IsSubTreeOfATree : XCTestCase

@end

@implementation Test_18IsSubTreeOfATree

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
    BinaryTree *tree = [RebuildBinaryTree rebuildBinaryTreeWithPreorderSequence:@[@10, @8, @9, @2, @4, @7, @1] inorderSequence:@[@9, @8, @4, @2, @7, @10, @1]];
    BinaryTree *subTree = [RebuildBinaryTree rebuildBinaryTreeWithPreorderSequence:@[@8, @9, @2] inorderSequence:@[@9, @8, @2]];
    XCTAssertTrue([IsSubTreeOfATree isSubTreeOfTree:tree subTree:subTree]);
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
