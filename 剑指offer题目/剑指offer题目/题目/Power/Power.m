//
//  Power.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "Power.h"

@implementation Power

+ (NSNumber *)power: (NSNumber *)base exponent: (NSNumber *)exponent {
    if(base == nil || exponent == nil || ([exponent isEqualToNumber:@0] && [base isEqualToNumber:@0])) {
        NSLog(@"error input");
        return nil;
    }
    double result = [self powerWithUnsignedExponent:base.doubleValue exponent: abs(exponent.intValue)];
    if(exponent.intValue < 0) {
        return [NSNumber numberWithDouble:(1.0 / result)];
    }
    return [NSNumber numberWithDouble:result];
}

+ (double)powerWithUnsignedExponent: (double)base exponent: (int)exponent {
    double result = 1.0;
    for(int i = 1; i <= exponent; i ++) {
        result *= base;
    }
    return result;
}

@end
