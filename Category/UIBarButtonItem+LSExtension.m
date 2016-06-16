//
//  UIBarButtonItem+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 15/7/28.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import "UIBarButtonItem+LSExtension.h"

@implementation UIBarButtonItem (LSExtension)

+ (UIBarButtonItem *)itemWithNomalImage:(UIImage *)nomalImage highlightImage:(UIImage *)highlightIamge target:(id)target action:(SEL)action {
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    [button setImage:nomalImage forState:UIControlStateNormal];
    [button setImage:highlightIamge forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    [button sizeToFit];
    return [[self alloc] initWithCustomView:button];
}

@end
