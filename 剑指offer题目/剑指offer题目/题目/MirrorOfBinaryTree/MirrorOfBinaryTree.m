//
//  MirrorOfBinaryTree.m
//  剑指offer题目
//
//  Created by 张枞楷 on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "MirrorOfBinaryTree.h"
#import "BinaryTree.h"
@implementation MirrorOfBinaryTree

+ (BinaryTree *) mirrorRecursivelyWithTreeNode:(BinaryTree *)treeNode{
    
    if (!treeNode || (!treeNode.left && !treeNode.right)) {
        return nil;
    }
    BinaryTree *tempNode = treeNode.left;
    treeNode.left = treeNode.right;
    treeNode.right = tempNode;
    if (treeNode.left) {
        [self mirrorRecursivelyWithTreeNode:treeNode.left];
    }
    if (treeNode.right) {
        [self mirrorRecursivelyWithTreeNode:treeNode.right];
    }
    return treeNode;
}
@end
