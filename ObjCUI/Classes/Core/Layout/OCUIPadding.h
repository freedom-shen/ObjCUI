//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>


@interface OCUIPadding : NSObject

+ (OCUIPadding *(^)())objc_create;

- (OCUIPadding *(^)(CGFloat left))objc_left;

- (OCUIPadding *(^)(CGFloat right))objc_right;

- (OCUIPadding *(^)(CGFloat top))objc_top;

- (OCUIPadding *(^)(CGFloat bottom))objc_bottom;

- (OCUIPadding *(^)(UIView *childView))objc_childView;


@end