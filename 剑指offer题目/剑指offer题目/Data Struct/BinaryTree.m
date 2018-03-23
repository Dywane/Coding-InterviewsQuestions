//
//  BinaryTree.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "BinaryTree.h"

@implementation BinaryTree

+ (BinaryTree *)treeNodeWithNumber: (NSNumber *)number {
    BinaryTree *node = [[BinaryTree alloc] init];
    node.value = number;
    node.left = nil;
    node.right = nil;
    return node;
}

- (void)preoderTravesal {
    if(self == nil) {
        return;
    }
    NSLog(@"%@", self.value);
    if(self.left != nil) {
        [self.left preoderTravesal];
    }
    if (self.right != nil) {
        [self.right preoderTravesal];
    }
}

- (void)inorderTravesal {
    if(self == nil) {
        return;
    }
    if(self.left != nil) {
        [self.left inorderTravesal];
    }
    NSLog(@"%@", self.value);
    if(self.right != nil) {
        [self.right inorderTravesal];
    }
}

@end
