//
//  FindListKthTail.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "FindListKthTail.h"
#import "LinkList.h"

@implementation FindListKthTail

/*
 输入一个链表，返回一个链表的倒数第k个节点
 */

/*
 1.两个指针，一个走的快，一个走得慢
 2.第一个指针先走k步，然后第一第二个一起走，当第一个指针指到末尾时，第一个指针指向的就是倒数第k个节点
 */

+ (NSNumber *)findKthTail: (LinkList *)list k: (unsigned int)k {
    if(list == nil || k <= 0) {
        return nil;
    }
    LinkList *head = list;
    LinkList *behind = list;
    for(int i = 0; i < k - 1; i ++) {
        if(head.next != nil) {
            head = head.next;
        } else {    //k大于列表总长度
            return nil;
        }
    }
    while(head.next != nil) {
        head = head.next;
        behind = behind.next;
    }
    return behind.value;
}

@end
