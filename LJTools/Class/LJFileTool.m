//
//  LJFileTool.m
//
//  Created by 李杰 on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "LJFileTool.h"

@implementation LJFileTool

+ (void)writeToFileContent:(id)content withFileName:(NSString *)fileName
{
    if (!content) return;
    [content writeToFile:[self getFilePath:fileName] atomically:YES];
}

#pragma mark 
+ (NSString *)getFilePath:(NSString *)fileName
{
    if (!fileName) return @"error";
    NSString *home = NSHomeDirectory();
    
    NSString *docPath = [home stringByAppendingPathComponent:@"Documents"];
    
    NSString *filePath = [docPath stringByAppendingPathComponent:fileName];
    
    return filePath;
}

+ (void)writeImageToFileName:(NSString *)imgName withImgURL:(NSString *)webURL
{
    if (!webURL) return;
    NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:webURL]];
    if (!data) return;
    UIImage *img = [[UIImage alloc] initWithData:data];
    [self writeToFileContent:UIImagePNGRepresentation(img) withFileName:imgName];
}

@end
