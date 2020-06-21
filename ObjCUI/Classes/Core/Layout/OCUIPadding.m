//
// Created by freedom on 2020/6/21.
//

#import "OCUIPadding.h"

@interface OCUIPadding ()
@end

@implementation OCUIPadding

+ (OCUIPadding *(^)())objc_create {
    return ^OCUIPadding * {
        OCUIPadding *padding = [[OCUIPadding alloc] init];
        return padding;
    };
}

- (OCUIPadding *(^)(CGFloat left))objc_left {
    return ^OCUIPadding *(CGFloat left) {
        return nil;
    };
}

- (OCUIPadding *(^)(CGFloat right))objc_right {
    return ^OCUIPadding *(CGFloat right) {
        return nil;
    };
}

- (OCUIPadding *(^)(CGFloat top))objc_top {
    return ^OCUIPadding *(CGFloat top) {
        return nil;
    };
}

- (OCUIPadding *(^)(CGFloat bottom))objc_bottom {
    return ^OCUIPadding *(CGFloat bottom) {
        return nil;
    };
}

- (OCUIPadding *(^)(UIView *childView))objc_childView {
    return ^OCUIPadding *(UIView *childView) {
        return nil;
    };
}


@end