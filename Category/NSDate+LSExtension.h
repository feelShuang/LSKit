//
//  NSDate+LSExtension.h
//  LSKit
//
//  Created by LiuShuang on 15/6/10.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (LSExtension)

/**
 *  是否为今年
 */
- (BOOL)ls_isThisYear;

/**
 *  是否为今天
 */
- (BOOL)ls_isToday;

/**
 *  是否为昨天
 */
- (BOOL)ls_isYesterday;

@end
