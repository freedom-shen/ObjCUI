//
// Created by freedom on 2020/6/17.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UILabel (ObjcUI)

+ (UILabel *(^)())objc_create;

// 构建方法
- (UILabel *(^)(NSString *text))objc_text;

- (UILabel *(^)(UIColor *))objc_textColor;

- (UILabel *(^)(UIFont *))objc_font;

- (UILabel *(^)(NSTextAlignment))objc_textAlignment;

- (UILabel *(^)(int))objc_numberOfLines;;

- (UILabel *(^)(void(^)(UILabel *label)))objc_maker;
@end