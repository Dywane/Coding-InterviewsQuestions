//
//  TestRebuildBinaryTree.m
//  剑指Offer题目测试
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "RebuildBinaryTree.h"
#import "BinaryTree.h"

@interface TestRebuildBinaryTree : XCTestCase

@property (copy, nonatomic) NSArray<NSNumber *> *inorder;
@property (copy, nonatomic) NSArray<NSNumber *> *preorder;

@end

@implementation TestRebuildBinaryTree

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
    
    _inorder = [NSArray arrayWithObjects:@4, @7, @2, @1, @5, @3, @8, @6, nil];
    _preorder = [NSArray arrayWithObjects:@1, @2, @4, @7, @3, @5, @6, @8, nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    BinaryTree *tree = [RebuildBinaryTree rebuildBinaryTreeWithPreorderSequence:_preorder inorderSequence:_inorder];
    NSLog(@"preorder:");
    [tree preoderTravesal];
    NSLog(@"inoreder:");
    [tree inorderTravesal];
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
