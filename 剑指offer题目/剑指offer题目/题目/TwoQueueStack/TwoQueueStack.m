//
//  TwoQueueStack.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "TwoQueueStack.h"
#import "Queue.h"

@interface TwoQueueStack()

@property (strong, nonatomic) Queue* queue1;
@property (strong, nonatomic) Queue* queue2;

@end

@implementation TwoQueueStack

- (instancetype)init {
    if(self = [super init]) {
        _queue2 = [[Queue alloc] init];
        _queue1 = [[Queue alloc] init];
    }
    return self;
}

/*
 用两个队列来实现栈
 */

/*
 插入：
 插入到不为空的队列，如果都为空则插入到queue1
 
 删除：
 假设queue1不为空，则将queue1中n-1个元素加入到queue2，然后把queue1中最后一个元素弹出，则为最后加入的元素
 */

- (NSNumber *)pop {
    Queue *emptyQueue = _queue1.isEmpty ? _queue1 : _queue2;
    Queue *notEmptyQueue = _queue1.isEmpty ? _queue2: _queue1;
    
    if(emptyQueue.isEmpty) {
        if(!notEmptyQueue.isEmpty) {
            NSUInteger length = notEmptyQueue.length;
            for(int i = 0; i < length - 1; i ++) {
                [emptyQueue enqueue:[notEmptyQueue dequeue]];
            }
        } else {
            NSLog(@"stack is empty");
            return nil;
        }
    } else {
        NSLog(@"something wrong");
        return nil;
    }
    return [notEmptyQueue dequeue];
}

- (void)push:(NSNumber *)value {
    Queue *notEmptyQueue = _queue1.isEmpty ? _queue2: _queue1;
    [notEmptyQueue enqueue:value];
}

@end
