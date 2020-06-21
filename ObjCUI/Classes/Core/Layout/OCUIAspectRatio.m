//
// Created by freedom on 2020/6/21.
//

#import "OCUIAspectRatio.h"


@implementation OCUIAspectRatio

+ (OCUIAspectRatio *(^)(UIView *view))objc_create {
    return ^OCUIAspectRatio *(UIView *view) {
        OCUIAspectRatio *aspectRatio = [[OCUIAspectRatio alloc] init];
        return aspectRatio;
    };
}

- (OCUIAspectRatio *(^)(double ratio))objc_ratio {
    return ^OCUIAspectRatio *(double ratio) {
        self.ocui_layoutMap[@(OCUILayoutWidthHeightRatioType)] = @(ratio);
        return self;
    };
}


@end