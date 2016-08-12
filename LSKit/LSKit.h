//
//  LSKit.h
//  LSKit
//
//  Created by LiuShuang on 16/6/16.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#ifndef LSKit_h
#define LSKit_h

#ifdef __OBJC__ //防止和C等等语言混编出现错误，这个宏的作用只对OC文件进行拷贝定义的宏或者导入的头文件

/**
 *  自定义Log日志输出
 */
#import "LSLog.h"

/**
 *  网络请求工具类
 */
#import "LSHTTPTool.h"

/**
 *  各种宏定义
 */
#import "LSMacro.h"

/**
 *  单例
 */
#import "LSSingleton.h"

/**
 *  判断设备类型
 */
#import "LSDeviceModel.h"

/**
 *  基本cell模型
 */
#import "LSBaseCellModel.h"

/**
 *  UIView+LSExtension.h
 */
#import "UIView+LSExtension.h"

/**
 *  NSCalendar+LSExtension.h
 */
#import "NSCalendar+LSExtension.h"

/**
 *  NSDate+LSExtension.h
 */
#import "NSDate+LSExtension.h"

/**
 *  NSDate+LSExtension.h
 */
#import "NSDate+LSExtension.h"

/**
 *  UIImage+LSExtension.h
 */
#import "UIImage+LSExtension.h"

/**
 *  UIImageView+LSExtension.h
 */
#import "UIImageView+LSExtension.h"

/**
 *  UITextField+LSExtension.h
 */
#import "UITextField+LSExtension.h"

/**
 *  UIBarButtonItem+LSExtension.h
 */
#import "UIBarButtonItem+LSExtension.h"

#endif

#endif /* LSKit_h */
