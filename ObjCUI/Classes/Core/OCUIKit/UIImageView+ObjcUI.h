//
// Created by freedom on 2020/6/17.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIImageView (ObjcUI)

+ (UIImageView *(^)())objc_create;

- (UIImageView *(^)(UIImage *image))objc_image;

- (UIImageView *(^)(UIImage *highlightedImage))objc_highlightedImage;

- (UIImageView *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))objc_preferredSymbolConfiguration API_AVAILABLE(ios(13.0),tvos(13.0),watchos(6.0));;

- (UIImageView *(^)(BOOL highlighted))objc_highlighted;

- (UIImageView *(^)(NSArray<UIImage *> *animationImages))objc_animationImages;

- (UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))objc_highlightedAnimationImages;

- (UIImageView *(^)(NSTimeInterval animationDuration))objc_animationDuration;

- (UIImageView *(^)(NSInteger animationRepeatCount))objc_animationRepeatCount;

- (UIImageView *(^)(UIColor *tintColor))objc_tintColor;

- (UIImageView *(^)(BOOL adjustsImageWhenAncestorFocused))objc_adjustsImageWhenAncestorFocused;

- (UIImageView *(^)())objc_startAnimating;

- (UIImageView *(^)())objc_stopAnimating;

- (UIImageView *(^)(void(^)(UIImageView *imageView)))objc_maker;

@end