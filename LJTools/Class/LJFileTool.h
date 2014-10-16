//
//  LJFileTool.h
//
//  Created by 李杰 on 14/9/22.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface LJFileTool : NSObject

/**
 *  得到沙盒的路径
 *
 *  @param fileName 传入文件名
 *
 *  @return 返回完整路径
 */
+ (NSString *)getFilePath:(NSString *)fileName;

/**
 *  写入文件
 *
 *  @param content  要写入的内容 通常为字典类型、数组类型
 *  @param fileName 要写的文件名
 */
+ (void)writeToFileContent:(id)content withFileName:(NSString *)fileName;

/**
 *  写入网络图片
 *
 *  @param imgName 图片的文件名
 *  @param webURL  图片的URL
 */
+ (void)writeImageToFileName:(NSString *)imgName withImgURL:(NSString *)webURL;

@end
