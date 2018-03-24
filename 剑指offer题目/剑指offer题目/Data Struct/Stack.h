//
//  Stack.h
//  剑指offer题目
//
//  Created by duwei on 2018/3/23.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Stack : NSObject

@property (strong, nonatomic, readonly) NSNumber *top;
@property (assign, nonatomic, readonly) NSUInteger stackLength;
@property (assign, nonatomic, readonly) BOOL isEmpty;

- (NSNumber *)pop;
- (void)push: (NSNumber *)value; 

@end
