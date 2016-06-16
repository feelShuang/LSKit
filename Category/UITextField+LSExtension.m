//
//  UITextField+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 15/6/4.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#define LSPlaceholderColorKey @"placeholderColor.textColor"

#import "UITextField+LSExtension.h"

@implementation UITextField (LSExtension)

- (void)setPlaceholderColor:(UIColor *)placeholderColor {
    
    [self setValue:placeholderColor forKeyPath:LSPlaceholderColorKey];
}

- (UIColor *)placeholderColor {
    
    return [self valueForKeyPath:LSPlaceholderColorKey];
}

@end
