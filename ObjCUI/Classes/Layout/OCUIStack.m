//
// Created by freedom on 2020/6/21.
//

#import "OCUIStack.h"
#import "OCUILayoutHelper.h"


@implementation OCUIStack

+ (OCUIStack *(^)(UIView *view))objc_create {
    return ^OCUIStack *(UIView *view) {
        OCUIStack *stack = [[OCUIStack alloc] init];
        stack.entityView = view;
        return stack;
    };
}

- (OCUIStack *(^)(NSArray <id <OCUILayoutInterface>> *children))objc_children {
    return ^OCUIStack *(NSArray <id <OCUILayoutInterface>> *children) {
        [self _addViewByLayoutInterface:children];
        return self;
    };
}

- (void)_addViewByLayoutInterface:(NSArray <id <OCUILayoutInterface>> *)children {
    for (int i = 0; i < children.count; ++i) {
        id <OCUILayoutInterface> data = children[i];
        if (data.containerType == OCUIContainerEntityType) {
            UIView *view = (id) data;
            [self.entityView addSubview:view];
        } else {
            OCUIBasicLayout *basicLayout = data;
            [self.entityView addSubview:basicLayout.entityView];
            [self _layoutWithLayout:basicLayout];
        }
    }
}

- (void)_layoutWithLayout:(OCUIBasicLayout *)layout {
    [self.entityView addSubview:layout.entityView];
    [layout.entityView mas_makeConstraints:^(MASConstraintMaker *make) {
        [OCUILayoutHelper autoLayoutWithMap:layout.ocui_layoutMap maker:make superView:self.entityView];
    }];
}

@end