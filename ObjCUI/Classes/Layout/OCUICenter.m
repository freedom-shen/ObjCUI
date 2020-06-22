//
// Created by freedom on 2020/6/21.
//

#import "OCUICenter.h"


@implementation OCUICenter

+ (OCUICenter *(^)(UIView *view))objc_create {
    return ^OCUICenter *(UIView *view) {
        OCUICenter *center = [[OCUICenter alloc] init];
        center.entityView = view;
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


- (OCUICenter *(^)(UIView *view))objc_child {
    return ^OCUICenter *(UIView *view) {
        self.childView = view;
        [self objc_layout];
        return self;
    };
}

@end