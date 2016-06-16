//
//  NSCalendar+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 16/1/4.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#import "NSCalendar+LSExtension.h"

@implementation NSCalendar (LSExtension)

+ (instancetype)ls_calendar {
    
    if ([NSCalendar respondsToSelector:@selector(calendarWithIdentifier:)]) {
        return [NSCalendar calendarWithIdentifier:NSCalendarIdentifierGregorian];
    } else {
        return [NSCalendar currentCalendar];
    }
}

@end
