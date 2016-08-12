//
//  UIImage+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 16/3/13.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LSExtension)

/**
 *  @function   返回一个圆形的图片
 *
 *  @return     圆形的图片
 */
- (instancetype)ls_circleImage;

/**
 *  @function       图片切圆
 *
 *  @param image    需要处理的图片
 *
 *  @return         圆形的图片
 */
+ (instancetype)ls_circleImage:(UIImage *)image;

/**
 *  @function           剪切一个有边框的图片
 *
 *  @param image        需要处理的图片
 *  @param borderWidth  边框宽度
 *  @param borderColor  边框颜色
 *
 *  @return 有边框的图片
 */
+ (instancetype)ls_imageWithCricleImage:(UIImage *)image borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;

/**
 *  @function   控件截屏
 *
 *  @param view 需要截取的View
 *
 *  @return     传入控件view的截屏图片
 */
+ (instancetype)captureWithView:(UIView *)view;

/**
 *  @function       自定义图片拉伸
 *
 *  @param imgName  原图名称
 *
 *  @return         拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName;

/**
 *  @function       指定图片拉伸像素的位置
 *  注意：只是对一个像素进行上下左右复制。而图像后面的剩余像素也不会被拉伸。
 *
 *  @param imgName  原图名称
 *  @param xPos     被拉伸像素的x - 1值
 *  @param yPos     被拉伸像素的y - 1值
 *
 *  @return 指定拉伸位置 拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos;

@end
