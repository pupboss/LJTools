//
//  LJDeviceTool.h
//
//  Created by Li Jie on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJDeviceTool : NSObject


+ (NSString *)getCurrentAppName;

+ (NSString *)getCurrentDeviceModel;

+ (NSString *)getCurrentSystemVersion;

+ (NSString *)getCurrentAppVersion;

+ (NSString *)getCurrentAppBuild;
@end
