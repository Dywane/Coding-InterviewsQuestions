//
//  Queue.h
//  剑指offer题目
//
//  Created by duwei on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Queue : NSObject

@property (strong, nonatomic, readonly) id head;
@property (assign, nonatomic, readonly) NSUInteger length;
@property (assign, nonatomic, readonly) BOOL isEmpty;

- (NSNumber *)dequeue;
- (void)enqueue: (id)value;

@end
