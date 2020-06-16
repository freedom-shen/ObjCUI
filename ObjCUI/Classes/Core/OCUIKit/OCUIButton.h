//
// Created by freedom on 2020/6/15.
//

#import <Foundation/Foundation.h>
#import "OCUIContainer.h"


@interface OCUIButton : OCUIContainer


- (OCUIButton *(^)(UIControlState state, NSString *title))title;

- (OCUIButton *(^)(UIControlState state, UIColor *titleColor))titleColor;

- (OCUIButton *(^)(UIControlState state, UIColor *titleShadowColor))titleShadowColor;

- (OCUIButton *(^)(UIControlState state, UIImage *image))image;

- (OCUIButton *(^)(UIControlState state, UIImage *backgroundImage))backgroundImage;

- (OCUIButton *(^)(UIControlState state, UIImageSymbolConfiguration *configuration))preferredSymbolConfiguration;

- (OCUIButton *(^)(UIControlState state, NSAttributedString *attributedString))attributedTitle;

- (OCUIButton *(^)(UIControlEvents controlEvents, void(^)(UIButton *button)))action;

- (OCUIButton *(^)(UIEdgeInsets contentEdgeInsets))contentEdgeInsets;

- (OCUIButton *(^)(UIEdgeInsets titleEdgeInsets))titleEdgeInsets;

- (OCUIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))reversesTitleShadowWhenHighlighted;

- (OCUIButton *(^)(UIEdgeInsets imageEdgeInsets))imageEdgeInsets;

- (OCUIButton *(^)(BOOL adjustsImageWhenHighlighted))adjustsImageWhenHighlighted;

- (OCUIButton *(^)(BOOL adjustsImageWhenDisabled))adjustsImageWhenDisabled;

- (OCUIButton *(^)(BOOL showsTouchWhenHighlighted))showsTouchWhenHighlighted;

- (OCUIButton *(^)(UIColor *tintColor))tintColor;

- (OCUIButton *(^)(void(^)(UIButton *button)))maker;

#pragma mark - Rewrite

+ (OCUIButton *(^)())create;

- (OCUIButton *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIButton *(^)(double width))width;

- (OCUIButton *(^)(double height))height;

@end