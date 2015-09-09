//
//  LJUITool.h
//
//  Created by Li Jie on 14/10/1.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface LJUITool : NSObject

/**
 *  得到中点坐标
 *
 *  @param rect 当前的frame
 *
 *  @return 点坐标
 */
+ (CGPoint)getPointWithFrame:(CGRect)rect;

@end
