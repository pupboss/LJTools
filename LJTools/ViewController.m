//
//  ViewController.m
//  LJTools
//
//  Created by 李杰 on 14/10/2.
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
}

@end
