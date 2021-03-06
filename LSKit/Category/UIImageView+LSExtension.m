//
//  UIImageView+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 16/3/13.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#import "UIImageView+LSExtension.h"
#import <UIImageView+WebCache.h> // SDWebIamge

@implementation UIImageView (LSExtension)

- (void)ls_setCircleHeader:(NSString *)url pleaceholderImage:(UIImage *)pleaceholderImage {

    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:pleaceholderImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {
        if (image == nil) return;
        
        self.image = [image circleImage];
    }];
}

- (void)ls_setRectHeader:(NSString *)url pleaceholderImage:(UIImage *)pleaceholderImage {
    
    [self sd_setImageWithURL:[NSURL URLWithString:url] placeholderImage:pleaceholderImage];
}

@end
