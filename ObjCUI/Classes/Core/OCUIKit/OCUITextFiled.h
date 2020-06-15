//
// Created by freedom on 2020/6/15.
//

#import "OCUIContainer.h"
#import <UIKit/UIKit.h>


@interface OCUITextFiled : OCUIContainer


- (OCUITextFiled *(^)(NSString *placeHolder))placeHolder;

- (OCUITextFiled *(^)(UIColor *textColor))textColor;

- (OCUITextFiled *(^)(UIFont *font))font;

- (OCUITextFiled *(^)(NSAttributedString *attributedPlaceholder))attributedPlaceholder;

- (OCUITextFiled *(^)(UIImage *background))background;

- (OCUITextFiled *(^)(NSTextAlignment textAlignment))textAlignment;

- (OCUITextFiled *(^)(UIImage *disabledBackground))disabledBackground;

- (OCUITextFiled *(^)(BOOL secureTextEntry))secureTextEntry;
- (OCUITextFiled *(^)(BOOL clearsOnBeginEditing))clearsOnBeginEditing;

- (OCUITextFiled *(^)(UIKeyboardType keyboardType))keyBordType;

- (OCUITextFiled *(^)(void(^)(UITextField *textFiled)))maker;

- (OCUITextFiled *(^)(UIControlEvents controlEvents, void(^)(UITextField *textField)))action;

#pragma mark - Delegate

- (OCUITextFiled *(^)(BOOL(^)(UITextField *textFiled)))textFieldShouldBeginEditing;
- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidBeginEditing;

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldEndEditing;
- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidEndEditing;

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled, UITextFieldDidEndEditingReason reason)))textFieldDidEndEditingReason;

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled, NSRange range, NSString *replace)))shouldChangeCharactersInRangeReplacementString;

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldDidChangeSelection;
- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldClear;
- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldReturn;


#pragma mark - Rewrite

+ (OCUITextFiled *(^)())create;

- (OCUITextFiled *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUITextFiled *(^)(double width))width;

- (OCUITextFiled *(^)(double height))height;
@end