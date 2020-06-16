//
// Created by freedom on 2020/6/16.
//

#import "OCUIContainer.h"


@interface OCUIImage : OCUIContainer

- (OCUIImage *(^)(UIImage *image))image;

- (OCUIImage *(^)(UIImage *highlightedImage))highlightedImage;

- (OCUIImage *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))preferredSymbolConfiguration;

- (OCUIImage *(^)(BOOL highlighted))highlighted;

- (OCUIImage *(^)(NSArray<UIImage *> *animationImages))animationImages;

- (OCUIImage *(^)(NSArray<UIImage *> *highlightedAnimationImages))highlightedAnimationImages;

- (OCUIImage *(^)(NSTimeInterval animationDuration))animationDuration;

- (OCUIImage *(^)(NSInteger animationRepeatCount))animationRepeatCount;

- (OCUIImage *(^)(UIColor *tintColor))tintColor;

- (OCUIImage *(^)(BOOL adjustsImageWhenAncestorFocused))adjustsImageWhenAncestorFocused;

- (OCUIImage *(^)())startAnimating;

- (OCUIImage *(^)())stopAnimating;

- (OCUIImage *(^)(void(^)(UIImageView *imageView)))maker;

#pragma mark - Rewrite

+ (OCUIImage *(^)())create;

- (OCUIImage *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIImage *(^)(double width))width;

- (OCUIImage *(^)(double height))height;

@end