//
//  ReverseList.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "ReverseList.h"
#import "LinkList.h"

@implementation ReverseList

/*
 输入一个链表，输出该链表反转后的头节点
 */

/*
 1.定义三个指针，第一个指向交换节点的上一个节点，第二个指向交换节点，第三个指向交换节的下一个节点
 2.进行交换时，交换节点的next指向上一个节点，然后移动动交换节点的下一个节点。
 */

+ (LinkList *)reverseList: (LinkList *)list {
    if(list == nil) {
        return nil;
    }
    LinkList *reverseHead = nil;
    LinkList *current = list;
    LinkList *previous = nil;
    while(current != nil) {
        LinkList *next = current.next;
        if(next == nil) {
            reverseHead = current;
        }
        current.next = previous;//交换
        
        previous = current;//移动
        current = next;//移动
    }
    return reverseHead;
}


@end
