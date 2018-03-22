//
//  PrintListReversingly.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "PrintListReversingly.h"
#import "LinkList.h"

@implementation PrintListReversingly

/*
 输入一个链表的头节点，从尾到头反过来打印每个节点的值
 */

/*
 利用递归实现
 1.每访问一个节点，先递归输出它后面的节点，再输出该节点自身
 */

- (void) printListReversingly_Recursively: (LinkList *)listHead {
    if(listHead == nil) {
        return;
    }
    if(listHead.next != nil) {
        [self printListReversingly_Recursively:listHead.next];
    }
    NSLog(@"%d", listHead.key);
}

@end
