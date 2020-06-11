//
// Created by freedom on 2020/6/11.
//

#import <OCUIText.h>
#import "OCUIContainer.h"
#import "OCUIDefine.h"


@interface OCUIText : OCUIContainer

+ (OCUIText *(^)())create;

// 构建方法
- (OCUIText *(^)(NSString *text))text;

- (OCUIText *(^)(UIColor *))textColor;

- (OCUIText *(^)(UIFont *))font;

- (OCUIText *(^)(NSTextAlignment))textAlignment;

- (OCUIText *(^)(int))numberOfLines;;

- (OCUIText *(^)(OCUITextMaker maker))labelMaker;

#pragma mark - Rewrite

- (OCUIText *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIText *(^)(double width))width;

- (OCUIText *(^)(double height))height;

- (OCUIText *(^)(OCUIContainer *childView))ocuiView;
@end