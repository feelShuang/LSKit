//
//  NSDate+LSExtension.m
//  LSKit
//
//  Created by LiuShuang on 15/6/10.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import "NSDate+LSExtension.h"
#import "NSCalendar+LSExtension.h"

@implementation NSDate (LSExtension)

- (BOOL)ls_isThisYear {
    
    NSCalendar *calendar = [NSCalendar ls_calendar];
    
    // 年
    NSInteger selfYear = [calendar component:NSCalendarUnitYear fromDate:self];
    NSInteger nowYear = [calendar component:NSCalendarUnitYear fromDate:[NSDate date]];
    
    return selfYear == nowYear;
}

- (BOOL)ls_isToday {
    
    NSCalendar *calendar = [NSCalendar ls_calendar];
    
    // 获得年月日元素
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:self toDate:[NSDate date] options:0];
    
    return cmps.year == 0 &&  cmps.month == 0 && cmps.day == 0;
}

- (BOOL)ls_isYesterday {
    
    NSCalendar *calendar = [NSCalendar ls_calendar];
    
    NSDateFormatter *fmt = [[NSDateFormatter alloc] init];
    fmt.dateFormat = @"yyyy-MM-dd HH-mm-ss";
    
    NSString *selfStr = [fmt stringFromDate:self];
    NSString *nowStr = [fmt stringFromDate:[NSDate date]];
    
    NSDate *selfDate = [fmt dateFromString:selfStr];
    NSDate *nowDate = [fmt dateFromString:nowStr];
    
    // 获得年月日
    NSCalendarUnit unit = NSCalendarUnitYear | NSCalendarUnitMonth | NSCalendarUnitDay;
    NSDateComponents *cmps = [calendar components:unit fromDate:selfDate toDate:nowDate options:0];
    
    return cmps.year == 0 && cmps.month == 0 && cmps.day == 1;
}

@end
