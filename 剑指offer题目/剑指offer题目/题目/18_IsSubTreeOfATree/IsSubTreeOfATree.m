//
//  IsSubTreeOfATree.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/26.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "IsSubTreeOfATree.h"
#import "BinaryTree.h"

@implementation IsSubTreeOfATree

+ (BOOL)isSubTreeOfTree: (BinaryTree *)tree subTree: (BinaryTree *)subTree {
    BOOL result = false;
    if(tree != nil && subTree != nil) {
        if([tree.value isEqualToNumber:subTree.value]) {
            result = [self doesTree:tree haveSubTree:subTree];
        }
        if(!result) {
            result = [self isSubTreeOfTree:tree.left subTree:subTree];
        }
        if(!result) {
            result = [self isSubTreeOfTree:tree.right subTree:subTree];
        }
        return result;
    }
    return result;
}

+ (BOOL)doesTree: (BinaryTree *)tree haveSubTree: (BinaryTree *)subTree {    
    if(subTree == nil) {
        return true;
    }
    if(tree == nil) {
        return false;
    }
    if(tree.value != subTree.value) {
        return false;
    }
    return [self doesTree:tree.left haveSubTree:subTree.left] && [self doesTree:tree.right haveSubTree:tree.right];
}

@end
