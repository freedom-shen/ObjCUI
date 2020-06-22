//
// Created by freedom on 2020/6/21.
//

#import <Masonry/Masonry-umbrella.h>
#import "OCUIColumn.h"
#import "OCUILayoutHelper.h"


@implementation OCUIColumn

+ (OCUIColumn *(^)(UIView *view))objc_create {
    return ^OCUIColumn *(UIView *view) {
        OCUIColumn *column = [[OCUIColumn alloc] init];
        column.entityView = view;
        return column;
    };
}

- (OCUIColumn *(^)(NSArray <id<OCUILayoutInterface>> *children))objc_children {
    return ^OCUIColumn *(NSArray <id<OCUILayoutInterface>> *children) {
        [self _addViewByLayoutInterface:children];
        return self;
    };
}

- (void)_addViewByLayoutInterface:(NSArray <id<OCUILayoutInterface>> *)children {
    UIView *beforeView = nil;
    CGFloat beforeBottom = 0;
    for (int i = 0; i < children.count; ++i) {
        id <OCUILayoutInterface> data = children[i];
        if (data.containerType == OCUIContainerEntityType) {
            UIView *view = (id) data;
            [self.entityView addSubview:view];
            [view mas_makeConstraints:^(MASConstraintMaker *make) {
                if (beforeView) {
                    make.top.mas_equalTo(beforeView.mas_bottom).offset(beforeBottom);
                } else {
                    make.top.mas_equalTo(0);
                }
                make.left.right.mas_equalTo(0);
            }];
            beforeView = view;
            beforeBottom = 0;
        } else {
            OCUIBasicLayout *basicLayout = data;
            [self.entityView addSubview:basicLayout.entityView];
            [self _layoutWithBeforeView:beforeView beforeBottom:beforeBottom layout:basicLayout];
            beforeView = basicLayout.entityView;
            beforeBottom = [basicLayout.ocui_layoutMap[@(OCUILayoutBottomType)] floatValue];
        }
    }
}

- (void)_layoutWithBeforeView:(UIView *)beforeView
                 beforeBottom:(CGFloat)beforeBottom
                       layout:(OCUIBasicLayout *)layout {
    [self.entityView addSubview:layout.entityView];
    [layout.entityView mas_makeConstraints:^(MASConstraintMaker *make) {
        [OCUILayoutHelper autoLayoutWithMap:layout.ocui_layoutMap maker:make superView:self.entityView rewriteType:[NSSet setWithArray:@[@(OCUILayoutTopType)]]
                                      maker:^(MASConstraintMaker *maker) {
                                          float topMargin = [layout.ocui_layoutMap[@(OCUILayoutTopType)] floatValue];
                                          if (!beforeView) {
                                              maker.top.mas_equalTo(topMargin);
                                          } else {
                                              maker.top.mas_equalTo(beforeView.mas_bottom).offset(topMargin + beforeBottom);
                                          }
                                      }];
    }];
}

@end