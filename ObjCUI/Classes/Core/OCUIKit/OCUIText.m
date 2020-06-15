//
// Created by freedom on 2020/6/11.
//

#import "OCUIText.h"


@interface OCUIText ()

@property(nonatomic, strong) UILabel *label;

@end

@implementation OCUIText

@synthesize bindView = _bindView;

#pragma mark  - Create

+ (OCUIText *(^)())create {
    return ^OCUIText *() {
        OCUIText *ocuiText = [[OCUIText alloc] init];
        ocuiText.label = [[UILabel alloc] init];
        return ocuiText;
    };
}

- (OCUIText *(^)(NSString *text))text {
    @WeakSelf(self);
    return ^OCUIText *(NSString *text) {
        @StrongSelf(weakSelf);
        strongSelf.label.text = text;
        return strongSelf;
    };
}

- (OCUIText *(^)(UIColor *))textColor {
    @WeakSelf(self);
    return ^OCUIText *(UIColor *color) {
        @StrongSelf(weakSelf);
        strongSelf.label.textColor = color;
        return strongSelf;
    };
}

- (OCUIText *(^)(UIFont *))font {
    @WeakSelf(self);
    return ^OCUIText *(UIFont *font) {
        @StrongSelf(weakSelf);
        strongSelf.label.font = font;
        return strongSelf;
    };
}

- (OCUIText *(^)(NSTextAlignment))textAlignment {
    @WeakSelf(self);
    return ^OCUIText *(NSTextAlignment alignment) {
        @StrongSelf(weakSelf);
        strongSelf.label.textAlignment = alignment;
        return strongSelf;
    };
}

- (OCUIText *(^)(int))numberOfLines; {
    @WeakSelf(self);
    return ^OCUIText *(int numberOfLines) {
        @StrongSelf(weakSelf);
        strongSelf.label.numberOfLines = numberOfLines;
        return strongSelf;
    };
}

- (OCUIText *(^)(void(^)(UILabel *label)))maker {
    @WeakSelf(self);
    return ^OCUIText *(void (^pFunction)(UILabel *)) {
        @StrongSelf(weakSelf);
        if (pFunction) {
            pFunction(strongSelf.label);
        }
        return strongSelf;
    };
}

#pragma mark - Get

- (UILabel *)bindView {
    if (!_label) {
        _label = [[UILabel alloc] init];
    }
    return _label;
}

@end