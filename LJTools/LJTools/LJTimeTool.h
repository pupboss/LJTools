//
//  LJTimeTool.h
//
//  Created by 李杰 on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJTimeTool : NSObject

/**
 *  获取当前时段
 *
 *  @return
 */
+ (NSString *)getCurrentInterval;

/**
 *  距离某天多少天
 *
 *  @param date yyyy_MM_dd格式
 *
 *  @return 天数
 */
+ (NSInteger)dayNumberSinceDateWithFormat_yyyy_MM_dd:(NSString *)date;

+ (NSInteger)getCurrentWeek;

+ (NSInteger)getCurrentWeekDay;

+ (NSInteger)getCurrentYear;

+ (NSInteger)getCurrentMonth;

@end
