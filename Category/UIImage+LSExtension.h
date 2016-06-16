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
 *  类方法返回圆形图片
 *
 *  @param name 需要处理的图片名称
 */
+ (instancetype)ls_circleImage:(NSString *)name;

@end
