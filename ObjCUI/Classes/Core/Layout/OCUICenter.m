//
// Created by freedom on 2020/6/21.
//

#import "OCUICenter.h"


@implementation OCUICenter

+ (OCUICenter *(^)(UIView *view))objc_create {
    return ^OCUICenter *(UIView *view) {
        OCUICenter *center = [[OCUICenter alloc] init];
        center.ocui_layoutMap[@(OCUILayoutCenterType)] = @(OCUICenterAlignBothType);
        return center;
    };
}

- (OCUICenter *(^)(OCUICenterAlignType alignType))objc_alignType {
    return ^OCUICenter *(OCUICenterAlignType alignType) {
        self.ocui_layoutMap[@(OCUILayoutCenterType)] = @(alignType);
        return self;
    };
}


- (OCUICenter *(^)(id <OCUILayoutInterface> child))objc_child {
    return ^OCUICenter *(id <OCUILayoutInterface> child) {
        return self;
    };
}


@end