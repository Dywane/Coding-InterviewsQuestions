//
//  AdjustOddEven.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "AdjustOddEven.h"

@implementation AdjustOddEven

/*
 输入一个整数数组，调整该数组中数字顺序，使得所有奇数位于数组前半部分，偶数位于后半部分
 */

/*
 1.两个指针，一个指向数组第一个元素，另一个指向末尾元素
 2.第一个指针往后移动，第二个指针往前移动，如果第一个指针指向偶数的同时，第二个指针指向奇数，则交换这两个数字
 3.两个指针相遇，结束排序
 */

+ (NSArray<NSNumber *> *)reorderOddEven: (NSArray <NSNumber *> *)array {
    if(array == nil) {
        return nil;
    }
    NSMutableArray<NSNumber *> *numberArray = [NSMutableArray arrayWithArray:array];
    int index1 = 0;
    int index2 = (int)numberArray.count - 1;
    while(index1 < index2) {
        if(index2 - index1 == 1) {
            break;
        }
        while((numberArray[index1].intValue & 0x1) != 0 && index1 < index2) {   //找第一个偶数
            index1 ++;
        }
        while((numberArray[index2].intValue & 0x1) == 0 && index1 < index2) {   //找第一个奇数
            index2 --;
        }
        if(index1 < index2) {
            NSNumber *temp = numberArray[index1];
            numberArray[index1] = numberArray[index2];
            numberArray[index2] = temp;
        }
    }
    return numberArray;
}

@end
