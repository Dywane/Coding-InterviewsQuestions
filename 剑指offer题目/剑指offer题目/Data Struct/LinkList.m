//
//  LinkList.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "LinkList.h"

@implementation LinkList

+ (LinkList *) listWithArray: (NSArray<NSNumber *> *)numberArray {
    if(numberArray == nil || numberArray.count < 1) {
        return nil;
    }
    LinkList *headNode = [[LinkList alloc] initWithKey:numberArray[0]];
    LinkList *head = headNode;
    for(int i = 1; i < numberArray.count; i ++) {
        LinkList *node = [[LinkList alloc] initWithKey:numberArray[i]];
        head.next = node;
        head = head.next;
    }
    return headNode;
}

- (instancetype)initWithKey: (NSNumber *)key {
    if (self = [super init]) {
        self.key = key;
    }
    return self;
}

@end
