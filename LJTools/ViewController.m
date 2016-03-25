//
//  ViewController.m
//  LJTools
//
//  Created by Li Jie on 14/10/2.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"build版本号:%@",[LJDeviceTool getCurrentAppBuild]);
    NSLog(@"软件版本号:%@",[LJDeviceTool getCurrentAppVersion]);
    NSLog(@"当前设备型号:%@",[LJDeviceTool getCurrentDeviceModel]);
    NSLog(@"当前系统版本:%@",[LJDeviceTool getCurrentSystemVersion]);
    
    NSLog(@"当前年份:%ld",(long)[LJTimeTool getCurrentWeek]);
    
    [LJHTTPTool getJSONWithURL:@"https://api.douban.com/v2/book/1220562" params:nil success:^(id responseJSON) {
        
    } failure:^(NSURLSessionDataTask *task, NSError *error) {
        
    }];
}

@end
