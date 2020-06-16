//
// Created by freedom on 2020/6/11.
//

#import "OCUIText.h"


@interface OCUIText ()

@property(nonatomic, strong) UILabel *label;

@end

@implementation OCUIText



#pragma mark  - Create

+ (OCUIText *(^)())create {
    return ^OCUIText *() {
        OCUIText *ocuiText = [[OCUIText alloc] init];
        ocuiText.label = [[UILabel alloc] init];
        return ocuiText;
    };
}

- (OCUIText *(^)(NSString *text))text {
    return ^OCUIText *(NSString *text) {
        self.label.text = text;
        return self;
    };
}

- (OCUIText *(^)(UIColor *))textColor {
    return ^OCUIText *(UIColor *color) {
        self.label.textColor = color;
        return self;
    };
}

- (OCUIText *(^)(UIFont *))font {
    return ^OCUIText *(UIFont *font) {
        self.label.font = font;
        return self;
    };
}

- (OCUIText *(^)(NSTextAlignment))textAlignment {
    return ^OCUIText *(NSTextAlignment alignment) {
        self.label.textAlignment = alignment;
        return self;
    };
}

- (OCUIText *(^)(int))numberOfLines; {
    return ^OCUIText *(int numberOfLines) {
        self.label.numberOfLines = numberOfLines;
        return self;
    };
}

- (OCUIText *(^)(void(^)(UILabel *label)))maker {
    return ^OCUIText *(void (^pFunction)(UILabel *)) {
        if (pFunction) {
            pFunction(self.label);
        }
        return self;
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