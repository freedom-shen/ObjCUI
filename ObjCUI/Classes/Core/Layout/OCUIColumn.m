//
// Created by freedom on 2020/6/21.
//

#import "OCUIColumn.h"


@implementation OCUIColumn

+ (OCUIColumn *(^)(UIView *view))objc_create {
    return ^OCUIColumn *(UIView *view) {
        OCUIColumn *column = [[OCUIColumn alloc] init];
        return column;
    };
}

- (OCUIColumn *(^)(NSArray <OCUILayoutInterface> *children))objc_children {
    return ^OCUIColumn *(NSArray <OCUILayoutInterface> *children) {
        return self;
    };
}

@end