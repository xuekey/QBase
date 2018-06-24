#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "Base.h"
#import "QConst.h"
#import "Sington.h"
#import "CALayer+PauseAimate.h"
#import "UIImage+QImage.h"
#import "UIImageView+XMGExtension.h"
#import "UIView+QLayout.h"

FOUNDATION_EXPORT double QBaseVersionNumber;
FOUNDATION_EXPORT const unsigned char QBaseVersionString[];

