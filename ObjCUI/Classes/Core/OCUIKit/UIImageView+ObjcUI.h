//
// Created by freedom on 2020/6/17.
//

#import <UIKit/UIKit.h>
#import "OCUIViewConvert.h"

@interface UIImageView (ObjcUI)

+ (UIImageView *(^)(UIImage *image))objc_createImage;

- (UIImageView *(^)(UIImage *image))objc_image;

- (UIImageView *(^)(UIImage *highlightedImage))objc_highlightedImage;

- (UIImageView *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))objc_preferredSymbolConfiguration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));;

- (UIImageView *(^)(BOOL highlighted))objc_highlighted;

- (UIImageView *(^)(NSArray<UIImage *> *animationImages))objc_animationImages;

- (UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))objc_highlightedAnimationImages;

- (UIImageView *(^)(NSTimeInterval animationDuration))objc_animationDuration;

- (UIImageView *(^)(NSInteger animationRepeatCount))objc_animationRepeatCount;

- (UIImageView *(^)(BOOL adjustsImageWhenAncestorFocused))objc_adjustsImageWhenAncestorFocused;

- (UIImageView *(^)())objc_startAnimating;

- (UIImageView *(^)())objc_stopAnimating;


OCUIViewChildHeaderCreate(UIImageView);

@end