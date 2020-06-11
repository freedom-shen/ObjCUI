//
// Created by freedom on 2020/6/11.
//

#import "OCUIContainer.h"
#import <Masonry/Masonry.h>
#import "OCUIDefine.h"
#import "MASConstraintMaker.h"


@interface OCUIContainer ()

@property (nonatomic, strong) MASConstraintMaker *maker;

@property (nonatomic, assign) double widthData;
@property (nonatomic, assign) double heightData;
@property (nonatomic, strong) UIView *customerView;

@end

@implementation OCUIContainer


- (instancetype)initWithCustomer:(UIView *)customerView {
    self = [super init];
    if (self) {
        self.customerView = customerView;
    }
    return self;
}

+ (OCUIContainer *(^)())create {
    return ^OCUIContainer *() {
        OCUIContainer *view = [[OCUIContainer alloc] init];
        return view;
    };
}

- (OCUIContainer *(^)(UIColor *backgroundColor))backgroundColor {
    @WeakSelf(self);
    return ^OCUIContainer *(UIColor *backgroundColor) {
        @StrongSelf(weakSelf)
        strongSelf.bindView.backgroundColor = backgroundColor;
        return strongSelf;
    };
}

- (OCUIContainer *(^)(double width))width {
    @WeakSelf(self);
    return ^OCUIContainer *(double width) {
        @StrongSelf(weakSelf)
        strongSelf.widthData = width;
        [strongSelf update];
        return strongSelf;
    };
}

- (OCUIContainer *(^)(double height))height {
    @WeakSelf(self);
    return ^OCUIContainer *(double height) {
        @StrongSelf(weakSelf)
        strongSelf.heightData = height;
        [strongSelf update];
        return strongSelf;
    };
}

- (OCUIContainer *(^)(OCUIContainer *childView))childView {
    @WeakSelf(self);
    return ^OCUIContainer *(OCUIContainer *childView) {
        @StrongSelf(weakSelf)
        [strongSelf.bindView addSubview:childView.bindView];

        childView.bindView.translatesAutoresizingMaskIntoConstraints = NO;
        _maker = [[MASConstraintMaker alloc] initWithView:childView.bindView];
        childView.maker = _maker;
        return strongSelf;
    };
}

#pragma mark - Tool

- (void)update {
    if (!_maker) {
        return;
    }
}

- (void)_doMake {
    _maker.width.mas_equalTo(self.widthData);
    _maker.height.mas_equalTo(self.heightData);

}

#pragma mark - Set

- (void)setMaker:(MASConstraintMaker *)maker {
    _maker = maker;
    [self _doMake];
}


#pragma mark - Get

- (UIView *)customerView {
    if (!_customerView) {
        _customerView = [[UIView alloc] init];
    }
    return _customerView;
}

- (UIView *)bindView {
    return self.customerView;
}

@end

