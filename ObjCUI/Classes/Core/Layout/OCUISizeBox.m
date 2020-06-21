//
// Created by freedom on 2020/6/21.
//

#import "OCUISizeBox.h"


@implementation OCUISizeBox

+ (OCUISizeBox *(^)(UIView *view))objc_create {
    return ^OCUISizeBox *(UIView *view) {
        OCUISizeBox *sizeBox = [[OCUISizeBox alloc] init];
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

- (OCUISizeBox *(^)(id <OCUILayoutInterface> child))objc_child {
    return ^OCUISizeBox *(id <OCUILayoutInterface> child) {
        return self;
    };
}

@end