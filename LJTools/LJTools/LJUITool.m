//
//  LJUITool.m
//
//  Created by Li Jie on 14/10/1.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "LJUITool.h"

@implementation LJUITool

+ (CGPoint)getPointWithFrame:(CGRect)rect {
    
    return CGPointMake(rect.origin.x+rect.size.width*0.5, rect.origin.y+rect.size.height*0.5);
}

@end
