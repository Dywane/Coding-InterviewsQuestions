//
//  duplicateNumber.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "duplicateNumber.h"
#import <Foundation/Foundation.h>

@implementation duplicateNumber

/*
 找出数组中重复的数字，有n个数字，数字范围在n-1内
 */
/*
 1.重排数组，依次扫描数组中的每个数字
 2.当扫描到下标为i的数字时，先比较这个数字是不是等于i，如果是则扫描下一个
 3.当扫描到这个数字不是等于i的，则将其与他对应的数字下标比较，如数字m，则与下标为m的数字比较，如果和[m]不想等则交换，相等则找到一个重复的数字
 */

- (BOOL)duplicateNumber: (NSArray<NSNumber *> *)numbers {
    
    NSMutableArray<NSNumber *> *numbersArray = [NSMutableArray arrayWithArray:numbers];
    if(numbersArray == nil || numbersArray.count <= 0) { //错误条件判断
        return false;
    }
    for (int i = 0; i < numbersArray.count; i ++) {
        while(numbersArray[i] != [NSNumber numberWithInt:i]) { //当number[i] 不等于i时
            if(numbersArray[i] == numbersArray[numbersArray[i].intValue]) {
                return true;
            }
            
            //交换i和m
            NSNumber *temp = numbersArray[i];
            numbersArray[i] = numbersArray[temp.intValue];
            numbersArray[temp.intValue] = temp;
        }
    }
    
    return false;
}

@end
