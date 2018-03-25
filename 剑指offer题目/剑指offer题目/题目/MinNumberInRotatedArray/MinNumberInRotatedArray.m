//
//  MinNumberInRotatedArray.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/25.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "MinNumberInRotatedArray.h"

@implementation MinNumberInRotatedArray

/*
 把一个数组最开始的若干个元素搬到数组末尾，称之为数组的旋转。输入一个递增排序数组的一个选择，输入旋转
 数组的最小元素
 */

/*
 旋转数组可以划分为两个排序的子数组，最小元素刚好是两个子数组的分界点，可以使用二分查找法来寻找最小的元素
 旋转数组首元素应该是大于等于末尾元素。
 1.两个指针分别指向数组第一个和最后一个数字
 2.如果中间位置值比第一个指针所指的值要大，则可以认为最小元素在第一个指针后，则把第一个指针移动到中间位置，第二个指针不动
 3.如果中间位置值比第二个指针所指值要小，则可以认为最小元素在第一个指针前，则把第二个指针移动到中间位置，第一个指针不动
 4.重复操作，最终第一个指针指向前面递增数组的最后一个元素，第二个指针指向后面递增数组的第一个元素，循环结束，第二个指针指向最小元素
 */

+ (NSNumber *)min: (NSArray <NSNumber *> *)numberArray {
    if(numberArray == nil) {
        return nil;
    }
    int index1 = 0;
    int index2 = (int)(numberArray.count -1);
    int indexMid = index1;
    while(numberArray[index1] >= numberArray[index2]) {
        if(index2 - index1 == 1) {  //相邻
            indexMid = index2;
            break;
        }
        indexMid = (index2 + index1) / 2;
        if(numberArray[index1] == numberArray[index2] && numberArray[index1] == numberArray[indexMid]) {
            return [self minInOrder:numberArray];
        }
        if(numberArray[indexMid] >= numberArray[index1]) {
            index1 = indexMid;
        } else if (numberArray[indexMid] < numberArray[index2]) {
            index2 = indexMid;
        }
    }
    return numberArray[indexMid];
}

+ (NSNumber *)minInOrder: (NSArray <NSNumber *>*)numberArray {
    NSNumber *min = numberArray[0];
    for(int i = 1; i < numberArray.count; i++) {
        if(numberArray[i] < min) {
            min = numberArray[i];
        }
    }
    return min;
}

@end
