//
//  LSDeviceModel.h
//  LSKit
//
//  Created by LiuShuang on 16/5/13.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//  判断设备类型

#define DeviceSize          ([UIScreen mainScreen].bounds.size)
#define iPhone4_Size        CGSizeMake(320, 480)
#define iPhone5_Size        CGSizeMake(320, 568)
#define iPhone6_Size        CGSizeMake(375, 667)
#define iPhone6Plsu_Size    CGSizeMake(414, 736)
#define iPad_Size           CGSizeMake(768, 1024)

#import <Foundation/Foundation.h>

@interface LSDeviceModel : NSObject

/** All iPad */
+ (BOOL)is_iPad;

/** All iPhone */
+ (BOOL)is_iPhone;

/** iPhone4、iPhone4S */
+ (BOOL)is_iPhone4;

/** iPhone5、iPhone5s */
+ (BOOL)is_iPhone5;

/** iPhone6、iPhone6s */
+ (BOOL)is_iPhone6;

/** iPhone6 plus、iPhone6s plus */
+ (BOOL)is_iPhone6Plus;

@end
