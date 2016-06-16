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

- (instancetype)resizeableImage{
    UIImage *img = self;
    CGFloat w = img.size.width/2;
    CGFloat h = img.size.height/2;
    return [img stretchableImageWithLeftCapWidth:w topCapHeight:h];
}

+ (instancetype)captureWithView:(UIView *)view{
    // 开启上下文
    UIGraphicsBeginImageContextWithOptions(view.frame.size, NO, 0.0);
    
    // 将self.view.layer渲染到上下文中
    [view.layer renderInContext:UIGraphicsGetCurrentContext()];
    
    // 取出上下文中的图片
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    // 结束上下文
    UIGraphicsEndImageContext();
    
    // 返回
    return image;
}

#pragma mark 可以自由拉伸的图片
+ (UIImage *)resizedImage:(NSString *)imgName
{
    return [self resizedImage:imgName xPos:0.5 yPos:0.5];
}

+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos
{
    UIImage *image = [UIImage imageNamed:imgName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * xPos topCapHeight:image.size.height * yPos];
}

@end
