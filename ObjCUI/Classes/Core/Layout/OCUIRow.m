//
// Created by freedom on 2020/6/21.
//

#import "OCUIRow.h"


@implementation OCUIRow

+ (OCUIRow *(^)(UIView *view))objc_create {
    return ^OCUIRow *(UIView *view) {
        OCUIRow *row = [[OCUIRow alloc] init];
        return row;
    };
}

- (OCUIRow *(^)(NSArray <OCUILayoutInterface> *children))objc_children {
    return ^OCUIRow *(NSArray <OCUILayoutInterface> *children) {
        return self;
    };
}


@end