//
//  LSBaseCellModel.m
//  LSKitDemo
//
//  Created by LiuShuang on 16/7/12.
//  Copyright © 2016年 LiuShuang. All rights reserved.
//

#import "LSBaseCellModel.h"

@implementation LSBaseCellModel

+ (instancetype)modelWithImage:(UIImage *)image title:(NSString *)title subTitle:(NSString *)subTitle targetClass:(__unsafe_unretained Class)targetClass clickHandler:(void (^)())clickHandler{
    LSBaseCellModel *model = [[self alloc] init];
    model.image = image;
    model.title = title;
    model.subTitle = subTitle;
    model.targetClass = targetClass;
    model.clickHandler = clickHandler;
    return model;
}

@end
