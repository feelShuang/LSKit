//
//  UIImageView+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 16/3/13.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView (LSExtension)

/**
 *  设置圆形图片
 *
 *  @param url               url
 *  @param pleaceholderImage 占位图片
 */
- (void)setCircleHeader:(NSString *)url pleaceholderImage:(UIImage *)pleaceholderImage;

/**
 *  设置方形图片
 *
 *  @param url               url
 *  @param pleaceholderImage 占位图片
 */
- (void)setRectHeader:(NSString *)url pleaceholderImage:(UIImage *)pleaceholderImage;

@end
