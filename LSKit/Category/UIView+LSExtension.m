//
//  UIView+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 15/5/28.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import "UIView+LSExtension.h"

@implementation UIView (LSExtension)

- (void)setLs_x:(CGFloat)ls_x {
    
    CGRect frame = self.frame;
    frame.origin.x = ls_x;
    self.frame = frame;
}

- (CGFloat)ls_x {
    
    return self.frame.origin.x;
}

- (void)setLs_y:(CGFloat)ls_y {
    
    CGRect frame = self.frame;
    frame.origin.y = ls_y;
    self.frame = frame;
}

- (CGFloat)ls_y {
    
    return self.frame.origin.y;
}

- (void)setLs_width:(CGFloat)ls_width {
    
    CGRect frame = self.frame;
    frame.size.width = ls_width;
    self.frame = frame;
}

- (CGFloat)ls_width {
    
    return self.frame.size.width;
}

- (void)setLs_height:(CGFloat)ls_height {
    
    CGRect frame = self.frame;
    frame.size.height = ls_height;
    self.frame = frame;
}

- (CGFloat)ls_height {
    
    return self.frame.size.height;
}

- (void)setLs_centerX:(CGFloat)ls_centerX {
    
    CGPoint center = self.center;
    center.x = ls_centerX;
    self.center = center;
}

- (CGFloat)ls_centerX {
    
    return self.center.x;
}

- (void)setLs_centerY:(CGFloat)ls_centerY {
    
    CGPoint center = self.center;
    center.y = ls_centerY;
    self.center = center;
}

- (CGFloat)ls_centerY {
    
    return self.center.y;
}

- (void)setLs_right:(CGFloat)ls_right {
    
    self.ls_x = ls_right - self.ls_width;
}

- (CGFloat)ls_right {
    
//    return self.ls_x + self.ls_width;
    return CGRectGetMaxX(self.frame);
}

- (void)setLs_bottom:(CGFloat)ls_bottom {
    
    self.ls_y = ls_bottom - self.ls_height;
}

- (CGFloat)ls_bottom {
    
    return CGRectGetMaxY(self.frame);
}

- (void)setLs_size:(CGSize)ls_size {
    
    CGRect frame = self.frame;
    frame.size = ls_size;
    self.frame = frame;
}

- (CGSize)ls_size {
    
    return self.frame.size;
}

#pragma mark - 加载Xib文件
+ (instancetype)ls_viewFromXib {
    
    return [[NSBundle mainBundle] loadNibNamed:NSStringFromClass(self) owner:nil options:0].lastObject;
}

- (BOOL)ls_intersectWithView:(UIView *)view {
    
    UIWindow *window = [UIApplication sharedApplication].keyWindow;
    CGRect selfRect = [self convertRect:self.bounds toView:window];
    CGRect viewRect = [view convertRect:view.bounds toView:window];
    
    // 当前View不和window重合
    return CGRectIntersectsRect(selfRect, viewRect);
}

@end
