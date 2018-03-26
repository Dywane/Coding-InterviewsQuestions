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

+ (BOOL)isSameList: (LinkList *)list1 list2: (LinkList *)list2 {
    if(list1 == nil && list2 == nil) {
        return true;
    }
    while(list1.next != nil && list2.next != nil) {
        if(list1.value != list2.value) {
            return false;
        }
        list1 = list1.next;
        list2 = list2.next;
    }
    return list1.next == nil && list2.next == nil;
}

- (instancetype)initWithKey: (NSNumber *)key {
    if (self = [super init]) {
        self.value = key;
    }
    return self;
}

- (id)copyWithZone:(NSZone *)zone {
    // deep copy
    LinkList *list = [LinkList allocWithZone:zone];
    list.value = self.value;
    list.next = self.next;
    if(self.next != nil) {
        [list.next copy];
    }
    return list;
}



@end
