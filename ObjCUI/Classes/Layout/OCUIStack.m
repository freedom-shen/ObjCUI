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
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                make.left.top.mas_equalTo(0);
            }];
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
        if (layout.ocui_layoutMap.allKeys.count == 0) {
            make.left.top.mas_equalTo(0);
            return;
        }
        [OCUILayoutHelper autoLayoutWithMap:layout.ocui_layoutMap maker:make superView:self.entityView rewriteType:[NSSet setWithArray:@[@(OCUILayoutTopType), @(OCUILayoutLeftType)]]
                                      maker:^(MASConstraintMaker *maker) {
                                          float leftMargin = [layout.ocui_layoutMap[@(OCUILayoutLeftType)] floatValue];
                                          maker.left.mas_equalTo(leftMargin);
                                          float topMargin = [layout.ocui_layoutMap[@(OCUILayoutTopType)] floatValue];
                                          maker.top.mas_equalTo(topMargin);
                                      }];
    }];
}

@end