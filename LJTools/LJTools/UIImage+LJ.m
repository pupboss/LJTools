//
//  UIImage+LJ.m
//  LJTools
//
//  Created by Li Jie on 14/10/16.
//  Copyright (c) 2014年 PUPBOSS. All rights reserved.
//

#import "UIImage+LJ.h"

@implementation UIImage (LJ)

+ (UIImage *)imageWithName:(NSString *)name {
    
    return [UIImage imageNamed:name];
}

+ (UIImage *)resizedImageWithName:(NSString *)name {
    
    return [self resizedImageWithName:name left:0.5 top:0.5];
}

+ (UIImage *)resizedImageWithName:(NSString *)name left:(CGFloat)left top:(CGFloat)top {
    
    UIImage *image = [self imageWithName:name];
    return [image stretchableImageWithLeftCapWidth:image.size.width * left topCapHeight:image.size.height * top];
}
@end
