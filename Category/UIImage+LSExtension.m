//
//  UIImage+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 16/3/13.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//


#import "UIImage+LSExtension.h"

@implementation UIImage (LSExtension)

- (instancetype)ls_circleImage {
    
    // 开启上下文
    UIGraphicsBeginImageContext(self.size);
    
    // 获取当前上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    
    // 裁剪
    CGContextClip(ctx);
    
    // 绘制图片
    [self drawInRect:rect];
    
    // 获得图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭图形上下文
    UIGraphicsEndImageContext();
    
    return image;
}

+ (instancetype)ls_circleImage:(NSString *)name {
    
    return [[self imageNamed:name] ls_circleImage];
}

@end
