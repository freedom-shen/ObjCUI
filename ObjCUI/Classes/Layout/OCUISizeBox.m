//
// Created by freedom on 2020/6/21.
//

#import "OCUISizeBox.h"


@implementation OCUISizeBox

+ (OCUISizeBox *(^)(UIView *view))objc_create {
    return ^OCUISizeBox *(UIView *view) {
        OCUISizeBox *sizeBox = [[OCUISizeBox alloc] init];
        sizeBox.entityView = view;
        return sizeBox;
    };
}

- (OCUISizeBox *(^)(double width))objc_width {
    return ^OCUISizeBox *(double width) {
        self.ocui_layoutMap[@(OCUILayoutWidthType)] = @(width);
        return self;
    };
}

- (OCUISizeBox *(^)(double width))objc_height {
    return ^OCUISizeBox *(double height) {
        self.ocui_layoutMap[@(OCUILayoutHeightType)] = @(height);
        return self;
    };
}

- (OCUISizeBox *(^)(double ratio))objc_widthRatio {
    return ^OCUISizeBox *(double ratio) {
        self.ocui_layoutMap[@(OCUILayoutWidthRatioType)] = @(ratio);
        return self;
    };
}

- (OCUISizeBox *(^)(double ratio))objc_heightRatio {
    return ^OCUISizeBox *(double ratio) {
        self.ocui_layoutMap[@(OCUILayoutHeightRatioType)] = @(ratio);
        return self;
    };
}

- (OCUISizeBox *(^)(UIView *))objc_child {
    return ^OCUISizeBox *(UIView *view) {
        return self;
    };
}

@end