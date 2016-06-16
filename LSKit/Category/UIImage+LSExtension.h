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
 *  返回圆形图片
 */
- (instancetype)ls_circleImage;

/**
 *  @function 类方法返回圆形图片
 *
 *  @param name 需要处理的图片名称
 */
+ (instancetype)ls_circleImage:(NSString *)name;

/**
 *  @function 截屏
 *
 *  @param view 需要截取的View
 *
 *  @return 截取获得的的图片
 */
+ (instancetype)captureWithView:(UIView *)view;

/**
 *  @function 自定义图片拉伸
 *
 *  @param imgName 原图名称
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName;

/**
 *  @function 指定图片拉伸像素的位置
 *  注意：只是对一个像素进行上下左右复制。而图像后面的剩余像素也不会被拉伸。
 *
 *  @param imgName 原图名称
 *  @param xPos    被拉伸像素的x - 1值
 *  @param yPos    被拉伸像素的y - 1值
 *
 *  @return 拉伸后的图片
 */
+ (UIImage *)resizedImage:(NSString *)imgName xPos:(CGFloat)xPos yPos:(CGFloat)yPos;

@end
