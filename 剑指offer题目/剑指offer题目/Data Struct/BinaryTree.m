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

- (void)preoderTravesal_Recursively {
    if(self == nil) {
        return;
    }
    NSLog(@"%@", self.value);
    if(self.left != nil) {
        [self.left preoderTravesal_Recursively];
    }
    if (self.right != nil) {
        [self.right preoderTravesal_Recursively];
    }
}

- (void)inorderTravesal_Recursively {
    if(self == nil) {
        return;
    }
    if(self.left != nil) {
        [self.left inorderTravesal_Recursively];
    }
    NSLog(@"%@", self.value); 
    if(self.right != nil) {
        [self.right inorderTravesal_Recursively];
    }
}

@end
