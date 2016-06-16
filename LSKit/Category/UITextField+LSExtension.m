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

- (void)setLs_placeholderColor:(UIColor *)ls_placeholderColor {
    
    [self setValue:ls_placeholderColor forKeyPath:LSPlaceholderColorKey];
}

- (UIColor *)ls_placeholderColor {
    
    return [self valueForKeyPath:LSPlaceholderColorKey];
}

@end
