//
// Created by freedom on 2020/6/17.
//

#import "UILabel+ObjcUI.h"


@implementation UILabel (ObjcUI)

+ (UILabel *(^)())objc_create {
    return ^UILabel *() {
        UILabel *label = [[UILabel alloc] init];
        return label;
    };
}

- (UILabel *(^)(NSString *text))objc_text {
    return ^UILabel *(NSString *text) {
        self.text = text;
        return self;
    };
}

- (UILabel *(^)(UIColor *))objc_textColor {
    return ^UILabel *(UIColor *color) {
        self.textColor = color;
        return self;
    };
}

- (UILabel *(^)(UIFont *))objc_font {
    return ^UILabel *(UIFont *font) {
        self.font = font;
        return self;
    };
}

- (UILabel *(^)(NSTextAlignment))objc_textAlignment {
    return ^UILabel *(NSTextAlignment alignment) {
        self.textAlignment = alignment;
        return self;
    };
}

- (UILabel *(^)(int))objc_numberOfLines; {
    return ^UILabel *(int numberOfLines) {
        self.numberOfLines = numberOfLines;
        return self;
    };
}

- (UILabel *(^)(void(^)(UILabel *label)))objc_maker {
    return ^UILabel *(void (^pFunction)(UILabel *)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

@end