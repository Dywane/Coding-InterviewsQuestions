//
//  Fibonacci.m
//  剑指offer题目
//
//  Created by 张枞楷 on 2018/3/24.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "Fibonacci.h"

/*
 Fibonacci (n) = 0;   n = 0
 
 Fibonacci (n) = 1;   n = 1
 
 Fibonacci (n) = Fibonacci(n-1) + Fibonacci(n-2)
 */
@implementation Fibonacci

+ (NSNumber *)fibonacciWithNumber:(NSNumber *)number{
    
    NSInteger n = [number integerValue];
    if (n <= 0) return @0;
    NSMutableArray *array = [NSMutableArray arrayWithCapacity:n+1];
    for (int i = 0; i <= n; i++) {
        [array addObject:@-1];
    }
    return [self fibWithNumber:number andMemoryArray:array];
}

+ (NSNumber *)fibWithNumber:(NSNumber *)number andMemoryArray:(NSMutableArray *)array{
    
    NSInteger n = [number integerValue];
    if (n <= 2) array[n] = @1;
    if (n < 0)  return @0;
    if (![array[n]  isEqual: @-1])  return array[n];
    NSInteger first = [[self fibWithNumber:@(n-1) andMemoryArray:array] integerValue];
    NSInteger second = [[self fibWithNumber:@(n-2) andMemoryArray:array] integerValue];
    return [NSNumber numberWithInteger:first+second];
}



@end












