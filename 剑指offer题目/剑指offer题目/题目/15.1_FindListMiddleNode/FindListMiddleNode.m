//
//  FindListMiddleNode.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "FindListMiddleNode.h"
#import "LinkList.h"

@implementation FindListMiddleNode

/*
 求链表的中间节点，如果链表的节点数是奇数，则直接返回中间节点，如果链表节点数是偶数，则返回两个中间节点的任意一个
 */

/*
 1.维护两个指针，一个一次走两步，一个一次走一步
 2.当走的快的走到末尾，走的慢的就在中间点
 */

+ (NSNumber *)findMiddleNodeOfList: (LinkList *)list {
    if(list == nil) {
        return nil;
    }
    LinkList *fast = list;
    LinkList *slow = list;
    while(fast.next != nil) {
        if(fast.next.next != nil) {
            fast = fast.next.next;
            slow = slow.next;
        } else {
            fast = fast.next;
            slow = slow.next;
        }
    }
    return slow.value;
}

@end
