//
// Created by freedom on 2020/6/17.
//

#import <UIKit/UIKit.h>

@interface UITextField (ObjcUI)

- (UITextField *(^)(NSString *text))objc_text;

- (UITextField *(^)(NSAttributedString *attributedText))objc_attributedText;

- (UITextField *(^)(NSString *placeHolder))objc_placeHolder;

- (UITextField *(^)(UIColor *textColor))objc_textColor;

- (UITextField *(^)(UIFont *font))objc_font;

- (UITextField *(^)(NSAttributedString *attributedPlaceholder))objc_attributedPlaceholder;

- (UITextField *(^)(UIImage *background))objc_background;

- (UITextField *(^)(NSTextAlignment textAlignment))objc_textAlignment;

- (UITextField *(^)(UIImage *disabledBackground))objc_disabledBackground;

- (UITextField *(^)(BOOL secureTextEntry))objc_secureTextEntry;

- (UITextField *(^)(BOOL clearsOnBeginEditing))objc_clearsOnBeginEditing;

- (UITextField *(^)(UIKeyboardType keyboardType))objc_keyBordType;

- (UITextField *(^)(UIControlEvents controlEvents, void(^)(UITextField *textField)))objc_action;

#pragma mark - Delegate

- (UITextField *(^)(BOOL(^)(UITextField *textFiled)))objc_textFieldShouldBeginEditing;

- (UITextField *(^)(void (^)(UITextField *textFiled)))objc_textFieldDidBeginEditing;

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldEndEditing;

- (UITextField *(^)(void (^)(UITextField *textFiled)))objc_textFieldDidEndEditing;

- (UITextField *(^)(void (^)(UITextField *textFiled, UITextFieldDidEndEditingReason reason)))objc_textFieldDidEndEditingReason;

- (UITextField *(^)(BOOL (^)(UITextField *textFiled, NSRange range, NSString *replace)))objc_shouldChangeCharactersInRangeReplacementString;

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldDidChangeSelection API_AVAILABLE(ios(13.0), tvos(13.0));

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldClear;

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldReturn;

OCUIViewChildHeaderCreate(UITextField)

@end