//
//  RebuildBinaryTree.h
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BinaryTree;
@interface RebuildBinaryTree : NSObject

+ (BinaryTree *) rebuildBinaryTreeWithPreorderSequence: (NSArray <NSNumber *> *)preorder inorderSequence: (NSArray <NSNumber *> *)inorder;

@end
