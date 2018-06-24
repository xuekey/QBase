//
//  UIImageView+QExtension.m
//  百思不得姐
//
//  Created by  on 16/6/16.
//  Copyright © 2016年 哥. All rights reserved.
//

#import "UIImageView+QExtension.h"
#import "UIImageView+WebCache.h"
#import "UIImage+QImage.h"


@implementation UIImageView (QExtension)


- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)())complete {

    [self sd_setImageWithURL:url placeholderImage:nil options:0 progress:^(NSInteger receivedSize, NSInteger expectedSize, NSURL * _Nullable targetURL) {
        
        if (progress != nil)
        {
            progress(1.0 * receivedSize / expectedSize);
        }
    } completed:^(UIImage * _Nullable image, NSError * _Nullable error, SDImageCacheType cacheType, NSURL * _Nullable imageURL) {
        self.image = image;
        if (complete != nil)
        {
            complete();
        }
    }];
     
}

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(UIImage *)placeHoldImage isCircle:(BOOL)isCircle {

    if (isCircle) {
        [self sd_setImageWithURL:url placeholderImage:[placeHoldImage circleImage] completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {

            UIImage *resultImage = [image circleImage];

            // 6. 处理结果图片
            if (resultImage == nil) return;
            self.image = resultImage;
            
            
        }];

    }else {
        [self sd_setImageWithURL:url placeholderImage:placeHoldImage completed:^(UIImage *image, NSError *error, SDImageCacheType cacheType, NSURL *imageURL) {

            // 6. 处理结果图片
            if (image == nil) return;
            self.image = image;
            
            
        }];

    }


}

@end