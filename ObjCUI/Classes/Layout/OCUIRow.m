//
// Created by freedom on 2020/6/21.
//

#import "OCUIRow.h"
#import "OCUILayoutHelper.h"


@implementation OCUIRow

+ (OCUIRow *(^)(UIView *view))objc_create {
    return ^OCUIRow *(UIView *view) {
        OCUIRow *row = [[OCUIRow alloc] init];
        row.entityView = view;
        return row;
    };
}

- (OCUIRow *(^)(NSArray <id<OCUILayoutInterface>> *children))objc_children {
    return ^OCUIRow *(NSArray <id<OCUILayoutInterface>> *children) {
        [self _addViewByLayoutInterface:children];
        return self;
    };
}

- (void)_addViewByLayoutInterface:(NSArray <id<OCUILayoutInterface>> *)children {
    UIView *beforeView = nil;
    CGFloat beforeRight = 0;
    for (int i = 0; i < children.count; ++i) {
        id <OCUILayoutInterface> data = children[i];
        if (data.containerType == OCUIContainerEntityType) {
            UIView *view = (id) data;
            [self.entityView addSubview:view];
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                if (beforeView) {
                    make.left.mas_equalTo(beforeView.mas_right).offset(beforeRight);
                } else {
                    make.left.mas_equalTo(0);
                }
                make.top.bottom.mas_equalTo(0);
            }];
            beforeView = view;
            beforeRight = 0;
        } else {
            OCUIBasicLayout *basicLayout = data;
            [self.entityView addSubview:basicLayout.entityView];
            [self _layoutWithBeforeView:beforeView beforeRight:beforeRight layout:basicLayout];
            beforeView = basicLayout.entityView;
            beforeRight = [basicLayout.ocui_layoutMap[@(OCUILayoutBottomType)] floatValue];
        }
    }
}

- (void)_layoutWithBeforeView:(UIView *)beforeView
                 beforeRight:(CGFloat)beforeRight
                       layout:(OCUIBasicLayout *)layout {
    [self.entityView addSubview:layout.entityView];
    [layout.entityView mas_makeConstraints:^(MASConstraintMaker *make) {
        [OCUILayoutHelper autoLayoutWithMap:layout.ocui_layoutMap maker:make superView:self.entityView rewriteType:[NSSet setWithArray:@[@(OCUILayoutLeftType)]]
                                      maker:^(MASConstraintMaker *maker) {
                                          float leftMargin = [layout.ocui_layoutMap[@(OCUILayoutLeftType)] floatValue];
                                          if (!beforeView) {
                                              maker.left.mas_equalTo(leftMargin);
                                          } else {
                                              maker.left.mas_equalTo(beforeView.mas_right).offset(leftMargin + beforeRight);
                                          }
                                          make.top.bottom.mas_equalTo(0);
                                      }];
    }];
}

@end