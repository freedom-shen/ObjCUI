//
// Created by freedom on 2020/6/21.
//

#import "OCUIStack.h"


@implementation OCUIStack

+ (OCUIStack *(^)(UIView *view))objc_create {
    return ^OCUIStack *(UIView *view) {
        OCUIStack *stack = [[OCUIStack alloc] init];
        return stack;
    };
}

- (OCUIStack *(^)(NSArray <OCUILayoutInterface> *children))objc_children {
    return ^OCUIStack *(NSArray <OCUILayoutInterface> *children) {
        return self;
    };
}


@end