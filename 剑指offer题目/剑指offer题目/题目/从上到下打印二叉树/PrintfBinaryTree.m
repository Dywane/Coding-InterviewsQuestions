//
//  PrintfBinaryTree.m
//  剑指offer题目
//
//  Created by 张枞楷 on 2018/3/26.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "PrintfBinaryTree.h"
#import "BinaryTree.h"
#import "Queue.h"
@implementation PrintfBinaryTree
/*
 从上往下打印出二叉树的每个节点,同一层从做到有的顺序打印
 */
+ (void)printfBinaryTree:(BinaryTree *)tree{
    if(!tree){
        return ;
    }
    Queue *queue = [[Queue alloc]init];
    [queue enqueue:tree];
    while (queue.length) {
        BinaryTree *fontNode = queue.head;
        NSLog(@"%@",fontNode.value);
        [queue dequeue];
        if (fontNode.left) {
            [queue enqueue:fontNode.left];
        }
        if(fontNode.right){
            [queue enqueue:fontNode.right];
        }
    }
    
    
    
    
}

@end
