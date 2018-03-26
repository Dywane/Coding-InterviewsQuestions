
//
//  MergeTwoSortedList.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/26.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "MergeTwoSortedList.h"
#import "LinkList.h"

@implementation MergeTwoSortedList

/*
 输入两个递增排序的链表，合并这两个链表，并使新的链表也是递增排序
 */

/*
 1.选择头节点值更小的节点作为新的链表的头节点
 2.继续比较原来两个链表头节点的值，选择更小的拼接到新链表
 */

+ (LinkList *)mergeTwoSortedList: (LinkList *)linklist1 list2: (LinkList *)linklist2 {
    LinkList *list1 = [linklist1 copy];
    LinkList *list2 = [linklist2 copy];
    if(list1 == nil) {
        return list2;
    }
    if(list2 == nil) {
        return list1;
    }
    LinkList *mergedHead = nil;
    if(list1.value < list2.value) {
        mergedHead = list1;
        mergedHead.next = [self mergeTwoSortedList:list1.next list2:list2];
    } else {
        mergedHead = list2;
        mergedHead.next = [self mergeTwoSortedList:list1 list2:list2.next];
    }
    return mergedHead;
}

@end
