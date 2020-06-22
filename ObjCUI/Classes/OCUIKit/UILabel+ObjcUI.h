//
// Created by freedom on 2020/6/17.
//

#import <UIKit/UIKit.h>
#import "OCUIKitDefine.h"

@interface UILabel (ObjcUI)

- (UILabel *(^)(NSString *text))objc_text;

- (UILabel *(^)(UIColor *))objc_textColor;

- (UILabel *(^)(UIColor *))objc_shadowColor;

- (UILabel *(^)(CGSize))objc_shadowOffset;

- (UILabel *(^)(NSLineBreakMode))objc_lineBreakMode;

- (UILabel *(^)(NSAttributedString *))objc_attributedText;

- (UILabel *(^)(UIColor *))objc_highlightedTextColor;

- (UILabel *(^)(BOOL))objc_highlighted;

- (UILabel *(^)(BOOL))objc_enabled;

- (UILabel *(^)(BOOL))objc_adjustsFontSizeToFitWidth;

- (UILabel *(^)(UIBaselineAdjustment))objc_baselineAdjustment;

- (UILabel *(^)(UIBaselineAdjustment))objc_minimumScaleFactor API_AVAILABLE(ios(6.0));;

- (UILabel *(^)(BOOL))objc_allowsDefaultTighteningForTruncation API_AVAILABLE(ios(9.0));

- (UILabel *(^)(UIFont *))objc_font;

- (UILabel *(^)(NSTextAlignment))objc_textAlignment;

- (UILabel *(^)(int))objc_numberOfLines;;

OCUIViewChildHeaderCreate(UILabel);

@end