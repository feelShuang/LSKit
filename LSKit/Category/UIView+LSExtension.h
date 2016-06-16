//
//  UIView+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 15/5/28.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (LSExtension)

@property (nonatomic, assign) CGFloat ls_x;
@property (nonatomic, assign) CGFloat ls_y;
@property (nonatomic, assign) CGFloat ls_width;
@property (nonatomic, assign) CGFloat ls_height;
@property (nonatomic, assign) CGFloat ls_centerX;
@property (nonatomic, assign) CGFloat ls_centerY;
@property (nonatomic, assign) CGFloat ls_right;
@property (nonatomic, assign) CGFloat ls_bottom;
@property (nonatomic, assign) CGSize ls_size;

/**
 *  加载xib
 */
+ (instancetype)ls_viewFromXib;

/**
 *  判断两个view是否重叠
 */
- (BOOL)ls_intersectWithView:(UIView *)view;

@end
