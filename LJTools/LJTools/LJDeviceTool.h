//
//  LJDeviceTool.h
//
//  Created by Li Jie on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJDeviceTool : NSObject

/**
 *  获得设备型号
 *
 *  @return
 */
+ (NSString *)getCurrentDeviceModel;

/**
 *  获得系统版本
 *
 *  @return
 */
+ (NSString *)getCurrentSystemVersion;

/**
 *  获得软件版本
 *
 *  @return
 */
+ (NSString *)getCurrentAppVersion;

/**
 *  获得build版本
 *
 *  @return 
 */
+ (NSString *)getCurrentAppBuild;

@end
