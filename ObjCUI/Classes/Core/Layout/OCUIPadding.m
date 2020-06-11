//
// Created by freedom on 2020/6/11.
//

#import "OCUIPadding.h"
#import "OCUIDefine.h"
#import "View+MASAdditions.h"


@interface OCUIPadding ()

@property(nonatomic, assign) double leftData;
@property(nonatomic, assign) double rightData;
@property(nonatomic, assign) double topData;
@property(nonatomic, assign) double bottomData;

@property(nonatomic, strong) OCUIContainer *childViewData;

@end

@implementation OCUIPadding


+ (OCUIPadding *(^)())create {
    return ^OCUIPadding * {
        OCUIPadding *padding = [[OCUIPadding alloc] init];
        return padding;
    };
}

- (OCUIPadding *(^)(UIEdgeInsets edgeInsets)edgeInsets {
    @WeakSelf(self);
    return ^OCUIPadding *(UIEdgeInsets edgeInsets) {
        @StrongSelf(weakSelf);
        strongSelf.leftData = edgeInsets.left;
        strongSelf.rightData = edgeInsets.right;
        strongSelf.topData = edgeInsets.top;
        strongSelf.bottomData = edgeInsets.bottom;
        [strongSelf masData:YES];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double left))left {
    @WeakSelf(self);
    return ^OCUIPadding *(double left) {
        @StrongSelf(weakSelf);
        strongSelf.leftData = left;
        [strongSelf masData:YES];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double right))right {
    @WeakSelf(self);
    return ^OCUIPadding *(double right) {
        @StrongSelf(weakSelf);
        strongSelf.rightData = right;
        [strongSelf masData:YES];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double top))top {
    @WeakSelf(self);
    return ^OCUIPadding *(double top) {
        @StrongSelf(weakSelf);
        strongSelf.topData = top;
        [strongSelf masData:YES];
        return nil;
    };
}

- (OCUIPadding *(^)(double bottom))bottom {
    @WeakSelf(self);
    return ^OCUIPadding *(double bottom) {
        @StrongSelf(weakSelf);
        strongSelf.bottomData = bottom;
        [strongSelf masData:YES];
        return strongSelf;
    };
}

- (id *(^)(OCUIContainer *childView))childView {
    @WeakSelf(self);
    return ^OCUIPadding *(OCUIContainer *childView) {
        @StrongSelf(weakSelf)
        strongSelf.childViewData = childView;
        [strongSelf masData:NO];
        return strongSelf;
    };
}

- (void)masData:(BOOL)update {
    if (!self.childViewData.bindView.superview) {
        return;
    }
    id data = ^(MASConstraintMaker *make) {
        make.left.mas_equalTo(self.leftData);
        make.right.mas_equalTo(self.rightData);
        make.top.mas_equalTo(self.topData);
        make.bottom.mas_equalTo(self.bottomData);
    };
    if (update) {
        [self.childViewData.bindView mas_updateConstraints:data];
    } else {
        [self.childViewData.bindView mas_makeConstraints:data];
    }
}

- (UIView *)bindView {
    return self.childViewData.bindView.superview;
}

@end