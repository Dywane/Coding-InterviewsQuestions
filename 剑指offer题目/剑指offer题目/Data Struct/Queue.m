//
//  Queue.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "Queue.h"

@interface Queue()

@property (strong, nonatomic) NSMutableArray<NSNumber *> * queueArray;

@end

@implementation Queue

- (instancetype)init {
    if(self = [super init]) {
        _queueArray = [NSMutableArray array];
    }
    return self;
}

- (void)enqueue:(id)value {
    [_queueArray addObject:value];
}

- (id)dequeue {
    if(self.isEmpty) {
        NSLog(@"queue empty");
        return nil;
    }
    NSNumber *head = self.head;
    [_queueArray removeObjectAtIndex:0];
    return head;
}

#pragma mark - setter getter
- (BOOL)isEmpty {
    return !_queueArray.count;
}

- (NSUInteger)length {
    return _queueArray.count;
}

- (id)head {
    return _queueArray.firstObject;
}

@end
