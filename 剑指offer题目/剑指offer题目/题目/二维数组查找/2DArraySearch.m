//
//  2DArraySearch.m
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import "2DArraySearch.h"

@implementation _DArraySearch

/*
 在一个二维数组中，每一行都按照从左到右递增顺序排序，每一列都按照从上到下递增的顺序排序，请完成
 这样一个函数，输入一个二维数组和整数，判断数组是否包含该整数。
 */

/*
 从数组的一个角上选取数字来和要查找的数字比较，先选取右上角，逐步缩小范围
 1.先选取右上角，如果该数字等于要查找的数字，则查找过程结束
 2.如果该数字大于要查的数字，就剔除这个数字的列，如果小于则剔除这个数字的行
 3.逐步缩小查找范围，知道找到数字或者范围为空
 */

- (BOOL) find: (NSArray<NSArray<NSNumber *> *> *)matrix _:(int) rows _:(int) columns number: (NSNumber *)number {
    if (matrix == nil || matrix.count <= 0 ) {
        return false;
    }
    int row = 0;
    int column = columns - 1;
    while(row < rows && column > 0) {
        if(matrix[row][columns] == number) {    //右上角是否等于该数字
            return true;
        } else if(matrix[row][columns] > number) {
            -- column;  //如果大于则排除该列（同一列递增）
        } else {
            ++ row; //如果小于则排除该行（同一行从左到右递增，左边都比右边小）
        }
    }
    
    return false;
}

@end
