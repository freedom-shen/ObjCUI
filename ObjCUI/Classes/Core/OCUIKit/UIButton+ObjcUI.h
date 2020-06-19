//
// Created by freedom on 2020/6/16.
//

#import <UIKit/UIKit.h>

@interface UIButton (ObjcUI)

+ (UIButton *(^)())objc_create;

- (UIButton *(^)(UIControlState state, NSString *title))objc_title;

- (UIButton *(^)(UIControlState state, UIColor *titleColor))objc_titleColor;

- (UIButton *(^)(UIControlState state, UIColor *titleShadowColor))objc_titleShadowColor;

- (UIButton *(^)(UIControlState state, UIImage *image))objc_image;

- (UIButton *(^)(UIControlState state, UIImage *backgroundImage))objc_backgroundImage;

- (UIButton *(^)(UIControlState state, UIImageSymbolConfiguration *configuration))objc_preferredSymbolConfiguration;

- (UIButton *(^)(UIControlState state, NSAttributedString *attributedString))objc_attributedTitle;

- (UIButton *(^)(UIControlEvents controlEvents, void(^)(UIButton *button)))objc_action;

- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))objc_contentEdgeInsets;

- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))objc_titleEdgeInsets;

- (UIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))objc_reversesTitleShadowWhenHighlighted;

- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))objc_imageEdgeInsets;

- (UIButton *(^)(BOOL adjustsImageWhenHighlighted))objc_adjustsImageWhenHighlighted;

- (UIButton *(^)(BOOL adjustsImageWhenDisabled))objc_adjustsImageWhenDisabled;

- (UIButton *(^)(BOOL showsTouchWhenHighlighted))objc_showsTouchWhenHighlighted;

- (UIButton *(^)(UIColor *tintColor))objc_tintColor;

- (UIButton *(^)(void(^)(UIButton *button)))objc_maker;
@end