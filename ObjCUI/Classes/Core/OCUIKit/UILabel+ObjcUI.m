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

- (UILabel *(^)(UIColor *))objc_shadowColor {
    return ^UILabel *(UIColor *color) {
        self.shadowColor = color;
        return self;
    };
}

- (UILabel *(^)(CGSize))objc_shadowOffset {
    return ^UILabel *(CGSize size) {
        self.shadowOffset = size;
        return self;
    };
}

- (UILabel *(^)(NSLineBreakMode))objc_lineBreakMode {
    return ^UILabel *(NSLineBreakMode mode) {
        self.lineBreakMode = mode;
        return self;
    };
}

- (UILabel *(^)(NSAttributedString *))objc_attributedText {
    return ^UILabel *(NSAttributedString *string) {
        self.attributedText = string;
        return self;
    };
}

- (UILabel *(^)(UIColor *))objc_highlightedTextColor {
    return ^UILabel *(UIColor *color) {
        self.highlightedTextColor = color;
        return self;
    };
}

- (UILabel *(^)(BOOL))objc_highlighted {
    return ^UILabel *(BOOL i) {
        self.highlighted = i;
        return self;
    };
}

- (UILabel *(^)(BOOL))objc_enabled {
    return ^UILabel *(BOOL i) {
        self.enabled = i;
        return self;
    };
}

- (UILabel *(^)(BOOL))objc_adjustsFontSizeToFitWidth {
    return ^UILabel *(BOOL i) {
        self.adjustsFontSizeToFitWidth = i;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))objc_baselineAdjustment {
    return ^UILabel *(UIBaselineAdjustment adjustment) {
        self.baselineAdjustment = adjustment;
        return self;
    };
}

- (UILabel *(^)(UIBaselineAdjustment))objc_minimumScaleFactor {
    return ^UILabel *(UIBaselineAdjustment adjustment) {
        self.minimumScaleFactor = adjustment;
        return self;
    };
}

- (UILabel *(^)(BOOL))objc_allowsDefaultTighteningForTruncation {
    return ^UILabel *(BOOL i) {
        self.allowsDefaultTighteningForTruncation = i;
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