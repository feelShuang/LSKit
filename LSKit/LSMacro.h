
//
//  LSMacro.h
//  iamgeTest
//
//  Created by LiuShuang on 16/6/16.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#ifndef LSMacro_h
#define LSMacro_h

/**
 *  颜色
 */
/** 定义颜色透明度 */
#define LSColorA(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(r)/255.0 blue:(r)/255.0 alpha:(a)/255.0]
/** 定义不透明的颜色 */
#define LSColor(r, g, b) LSColorA((r), (g), (b),255)
/** 随机色 */
#define LSRandomColor LSColor(arc4random_uniform(255), arc4random_uniform(255), arc4random_uniform(255))
/** 整个项目的背景颜色 */
#define LSBackGroundColor LSColor(206, 206, 206)


/**
 *  屏幕尺寸
 */
/** 屏幕宽度 */
#define kScreenWidth [UIScreen mainScreen].bounds.size.width
/** 屏幕高度 */
#define kScreenHeight [UIScreen mainScreen].bounds.size.height


#endif /* LSMacro_h */
