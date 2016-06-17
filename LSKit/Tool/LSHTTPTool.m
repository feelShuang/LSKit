//
//  LSHTTPTool.m
//  LSKit
//
//  Created by LiuShuang on 15/4/13.
//  Copyright © 2015年 LiuShuang. All rights reserved.
//

#import "LSHTTPTool.h"
#import <AFNetworking.h>

@implementation LSHTTPTool

+ (void)ls_GET:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(id error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html", @"text/json", @"text/javascript", nil];
    
    [manager GET:url parameters:params progress:^(NSProgress * _Nonnull downloadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (!success) return;
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (!failure) return;
        failure(error);
    }];
}

+ (void)ls_POST:(NSString *)url params:(NSDictionary *)params success:(void (^)(id responseObject))success failure:(void (^)(id error))failure {
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    
    manager.requestSerializer = [AFJSONRequestSerializer serializer];
    manager.responseSerializer.acceptableContentTypes = [NSSet setWithObjects:@"application/json", @"text/html",@"text/json",@"text/javascript", nil];
    
    [manager POST:url parameters:params progress:^(NSProgress * _Nonnull uploadProgress) {
        
    } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
        
        if (!success) return;
        success(responseObject);
    } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
        
        if (!failure) return;
        failure(error);
    }];
}

@end
