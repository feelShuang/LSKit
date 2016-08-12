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
    
    // 创建位图上下文
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

+ (instancetype)ls_imageWithCricleImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor {
    
    // 图片的宽高
    CGFloat imageW = image.size.width;
    CGFloat imageH = imageW;
    
    // 开启上下文的宽高
    CGFloat circleW = imageW + borderWidth * 2;
    CGFloat circleH = circleW;
    
    // 创建位图上下文
    UIGraphicsBeginImageContextWithOptions(CGSizeMake(circleW, circleH), NO, 0);
    
    // 画底部大圆
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, circleW, circleH)];
    [borderColor set];
    [path fill];
    
    // 设置裁剪区域
    UIBezierPath *clipPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(borderWidth, borderWidth, imageW, imageH)];
    [clipPath addClip];
    
    // 绘制图片
    [image drawAtPoint:CGPointMake(borderWidth, borderWidth)];
    
    // 获取图片
    UIImage *clipIamge = UIGraphicsGetImageFromCurrentImageContext();
    
    // 关闭上下文
    UIGraphicsEndImageContext();
    
    return clipIamge;
}

+ (instancetype)ls_circleImage:(UIImage *)image {
    
    return [self ls_imageWithCricleImage:image borderWidth:0 borderColor:nil];
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

+ (UIImage *)resizedImage:(NSString *)imgName
{
    return [self resizedImage:imgName xPos:0.5 yPos:0.5];
}

+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos
{
    /**
     *  创建一个内容可拉伸，而边角不拉伸的图片，
     *  需要两个参数，第一个是左边不拉伸区域的宽度，第二个参数是上面不拉伸的高度。
     *  根据设置的宽度和高度，将接下来的一个像素进行左右扩展和上下拉伸
     */
    UIImage *image = [UIImage imageNamed:imgName];
    return [image stretchableImageWithLeftCapWidth:image.size.width * xPos topCapHeight:image.size.height * yPos];
}

@end
