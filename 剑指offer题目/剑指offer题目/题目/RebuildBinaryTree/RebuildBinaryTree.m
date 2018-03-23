//
//  RebuildBinaryTree.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "RebuildBinaryTree.h"
#import "BinaryTree.h"

@implementation RebuildBinaryTree

/*
 输入二叉树的前序遍历和中序遍历结果，重建出该二叉树
 */

/*
 1.前序遍历序列中，第一个数字总是根节点的值
 2.中序遍历序列中，根节点的值在中间，左子树的节点值位于根节点左边，右子树的节点值位于根节点右边
 3.根据中序遍历序列获取左右子树节点数量x和y，前序遍历序列中根节点后x个数字是左子树的值，再后面就是右子树的节点值
 4.递归分析左右子树
 */

+ (BinaryTree *) rebuildBinaryTreeWithPreorderSequence: (NSArray <NSNumber *> *)preorder inorderSequence: (NSArray <NSNumber *> *)inorder {
    if(preorder == nil || inorder == nil) {
        return nil;
    }
    if(preorder.count <= 0 || inorder.count <= 0 || preorder.count != inorder.count) {
        return nil;
    }
    return [self constructCore:preorder inorderSequence:inorder];
}

+ (BinaryTree *)constructCore: (NSArray< NSNumber *> *)preorderSequence inorderSequence: (NSArray< NSNumber *> *)inorderSequence
{
    NSNumber *rootValue = preorderSequence.firstObject;
    BinaryTree *rootNode = [BinaryTree treeNodeWithNumber:rootValue];
    
    if ([preorderSequence.firstObject isEqualToNumber:preorderSequence.lastObject]) {
        if([inorderSequence.firstObject isEqualToNumber:inorderSequence.lastObject]) {
            return rootNode;
        } else {
            NSLog(@"invalid input");
            return nil;
        }
    }
    
    //在中序遍历中找到根节点的值
    int inoderRootIndex = -1;
    for(int i = 0; i < inorderSequence.count; i++) {
        if([inorderSequence[i] isEqualToNumber:preorderSequence.firstObject]) {
            inoderRootIndex = i;
            break;
        }
    }
    if(inoderRootIndex == -1) { //没找到情况
        NSLog(@"invalid input");
        return nil;
    }
    if(inoderRootIndex > 0) {   //构建左子树
        rootNode.left = [self constructCore:[preorderSequence subarrayWithRange:NSMakeRange(1, inoderRootIndex)] inorderSequence:[inorderSequence subarrayWithRange:NSMakeRange(0, inoderRootIndex)]];  //前序遍历序列取根节点后x位 中序遍历序列取根节点左边x位，即前x位
    }
    if(inorderSequence.count - 1 - inoderRootIndex > 0) {   //构建右子树
        rootNode.right = [self constructCore:[preorderSequence subarrayWithRange:NSMakeRange(inoderRootIndex + 1, preorderSequence.count - 1 - inoderRootIndex)] inorderSequence:[inorderSequence subarrayWithRange:NSMakeRange(inoderRootIndex + 1, inorderSequence.count - 1 - inoderRootIndex)]];
            //前序遍历取根节点后x位后 中序遍历序列取根节点右边x位
    }
    return rootNode;
}

@end
