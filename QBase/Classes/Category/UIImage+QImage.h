//
//  UIImage+QImage.h
//  喜马拉雅FM
//
//  Created by 王 on 16/8/1.
//  Copyright © 2016年 小哥. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (QImage)

+ (UIImage *)originImageWithName: (NSString *)name;

- (UIImage *)circleImage;

@end
