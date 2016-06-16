//
//  UIBarButtonItem+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 15/7/28.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (LSExtension)

/**
 *  返回一个UIBarButtonItem对象
 *
 *  @param nomalImage     普通状态下的图片
 *  @param highlightIamge 高亮状态下的图片
 *  @param target         目标
 *  @param action         事件
 *
 *  @return UIBarButtonItem
 */
+ (UIBarButtonItem *)ls_itemWithNomalImage:(UIImage *)nomalImage highlightImage:(UIImage *)highlightIamge target:(id)target action:(SEL)action;

@end
