//
//  LJDeviceTool.m
//
//  Created by 李杰 on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "LJDeviceTool.h"
#import <UIKit/UIKit.h>

@implementation LJDeviceTool

//获得设备型号
+ (NSString *)getCurrentDeviceModel:(UIViewController *)controller
{
    NSInteger height = controller.view.frame.size.height;
    
    if (height == 480) {
        return @"iPhone4s";
    }
    if (height == 568) {
        return @"iPhone5/5s";
    }
    if (height == 667) {
        return @"iPhone6";
    }
    if (height == 736) {
        return @"iPhone6 Plus";
    }
    else return @"Other";
}

//获得系统版本
+ (NSString *)getCurrentSystemVersion
{
    return [[UIDevice currentDevice] systemVersion];
}

//获得软件版本
+ (NSString *)getCurrentAppVersion
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *app_Version = [infoDictionary objectForKey:@"CFBundleShortVersionString"];
    return app_Version;
}

//获得build版本
+ (NSString *)getCurrentAppBuild
{
    NSDictionary *infoDictionary = [[NSBundle mainBundle] infoDictionary];
    NSString *app_build = [infoDictionary objectForKey:@"CFBundleVersion"];
    return app_build;
}

@end
