//
//  TwoStackQueue.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "TwoStackQueue.h"
#import "Stack.h"

@interface TwoStackQueue()

@property (strong, nonatomic) Stack* stack1;
@property (strong, nonatomic) Stack* stack2;

@end

@implementation TwoStackQueue

/*
 用两个栈实现队列，实现从尾部插入节点和在队列头部删除节点功能
 */

/*
 插入步骤：
 直接压入stack1
 
 删除步骤：
 1.当stack2不为空，则stack2栈顶元素是最先进入队列的元素，可以弹出
 2.如果stack2为空，则把stack1中的元素诸葛弹出并压入stack2，之后stack2顶端元素为最先进入元素，可以弹出
 */

- (instancetype)init {
    if(self = [super init]) {
        _stack1 = [[Stack alloc] init];
        _stack2 = [[Stack alloc] init];
    }
    return self;
}

- (void)appendTail:(NSNumber *)value {
    [_stack1 push:value];
}

- (NSNumber *)deleteHead {
    if(_stack2.isEmpty) {
        while(!_stack1.isEmpty) {
            [_stack2 push:[_stack1 pop]];
        }
    }
    
    if(_stack2.isEmpty) {
        NSLog(@"queue is empty");
    }
    
    return [_stack2 pop];
}

@end
