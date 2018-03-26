//
//  LinkList.h
//  剑指offer题目
//
//  Created by duwei on 2018/3/22.
//  Copyright © 2018年 Dywane. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LinkList : NSObject<NSCopying>

@property (assign, nonatomic) NSNumber* value;

@property (strong, nonatomic) LinkList* next;

+ (LinkList *) listWithArray: (NSArray<NSNumber *> *)numberArray;
+ (BOOL)isSameList: (LinkList *)list1 list2: (LinkList *)list2;

@end
