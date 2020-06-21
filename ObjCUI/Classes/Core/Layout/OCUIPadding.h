//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUIPadding : OCUIBasicLayout

+ (OCUIPadding *(^)(UIView *view))objc_create;

- (OCUIPadding *(^)(CGFloat left))objc_left;

- (OCUIPadding *(^)(CGFloat right))objc_right;

- (OCUIPadding *(^)(CGFloat top))objc_top;

- (OCUIPadding *(^)(CGFloat bottom))objc_bottom;

- (OCUIPadding *(^)(id <OCUILayoutInterface> child))objc_child;

@end