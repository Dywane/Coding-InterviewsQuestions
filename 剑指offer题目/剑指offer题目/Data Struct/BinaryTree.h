//
//  BinaryTree.h
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BinaryTree : NSObject

@property (strong, nonatomic) NSNumber* value;

@property (strong, nonatomic) BinaryTree* left;

@property (strong, nonatomic) BinaryTree* right;

+ (BinaryTree *)treeNodeWithNumber: (NSNumber *)number;

- (void)inorderTravesal;
- (void)preoderTravesal;

@end
