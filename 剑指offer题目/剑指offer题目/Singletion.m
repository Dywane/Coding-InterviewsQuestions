//
//  Singletion.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "Singletion.h"

@implementation Singletion

+ (instancetype)sharedInstance {
    static id instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[self alloc] init];
    });
    return instance;
}

@end
