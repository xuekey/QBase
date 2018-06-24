//
//  UIImageView+QExtension.h
//  百思不得姐
//
//  Created by  on 16/6/16.
//  Copyright © 2016年 哥. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface UIImageView (QExtension)

- (void)setURLImageWithURL: (NSURL *)url progress:(void(^)(CGFloat progress))progress complete: (void(^)())complete;

- (void)setURLImageWithURL: (NSURL *)url placeHoldImage:(UIImage *)placeHoldImage isCircle:(BOOL)isCircle;

@end
