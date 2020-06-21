//
// Created by freedom on 2020/6/21.
//

#import "OCUIPadding.h"

@interface OCUIPadding ()

@property(nonatomic, weak) UIView *view;

@end

@implementation OCUIPadding


+ (OCUIPadding *(^)(UIView *view))objc_create {
    return ^OCUIPadding *(UIView *view) {
        OCUIPadding *padding = [[OCUIPadding alloc] init];
        padding.view = view;
        return padding;
    };
}

- (OCUIPadding *(^)(CGFloat left))objc_left {
    return ^OCUIPadding *(CGFloat left) {
        self.ocui_layoutMap[@(OCUILayoutLeftType)] = @(left);
        return self;
    };
}

- (OCUIPadding *(^)(CGFloat right))objc_right {
    return ^OCUIPadding *(CGFloat right) {
        self.ocui_layoutMap[@(OCUILayoutRightType)] = @(right);
        return self;
    };
}

- (OCUIPadding *(^)(CGFloat top))objc_top {
    return ^OCUIPadding *(CGFloat top) {
        self.ocui_layoutMap[@(OCUILayoutTopType)] = @(top);
        return self;
    };
}

- (OCUIPadding *(^)(CGFloat bottom))objc_bottom {
    return ^OCUIPadding *(CGFloat bottom) {
        self.ocui_layoutMap[@(OCUILayoutBottomType)] = @(bottom);
        return self;
    };
}

- (OCUIPadding *(^)(id <OCUILayoutInterface> child))objc_child {
    return ^OCUIPadding *(id <OCUILayoutInterface> child) {
        return self;
    };
}

@end