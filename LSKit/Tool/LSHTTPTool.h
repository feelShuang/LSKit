//
//  LSHTTPTool.h
//  LSKit
//
//  Created by LiuShuang on 15/4/13.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//  网络请求工具类：负责整个项目的所有HTTP请求

#import <Foundation/Foundation.h>

@interface LSHTTPTool : NSObject

/**
 *  @function 发送一个GET请求
 *
 *  @param url     请求路径
 *  @param params  请求参数
 *  @param success 请求成功后的block回调（请求成功后需要做的操作在这个block中完成）
 *  @param failure 请求失败后的block回调（请求失败后需要做的操作在这个block中完成）
 */
+ (void)ls_GET:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(id error))failure;

/**
 *  @function 发送一个POST请求
 *
 *  @param url     请求路径
 *  @param params  请求参数
 *  @param success 请求成功后的block回调（请求成功后需要做的操作在这个block中完成）
 *  @param failure 请求失败后的block回调（请求失败后需要做的操作在这个block中完成）
 */
+ (void)ls_POST:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(id error))failure;

@end
