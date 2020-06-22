//
// Created by freedom on 2020/6/21.
//

#import "OCUIBasicLayout.h"
#import <Masonry/Masonry.h>
#import "UIView+Layout.h"


@interface OCUIBasicLayout ()

@property(nonatomic, strong) NSMutableArray *layoutChildren;


@end

@implementation OCUIBasicLayout

@synthesize ocui_layoutMap = _ocui_layoutMap;

- (void)objc_layout {
    [self.entityView addSubview:self.childView];
    [self.childView mas_makeConstraints:^(MASConstraintMaker *maker) {
        [self.ocui_layoutMap enumerateKeysAndObjectsUsingBlock:^(NSNumber *key, NSNumber *value, BOOL *stop) {
            OCUILayoutType layoutType = (OCUILayoutType) [key integerValue];
            switch (layoutType) {
                case OCUILayoutLeftType: {
                    maker.left.mas_equalTo(value);
                }
                    break;
                case OCUILayoutRightType: {
                    maker.right.mas_equalTo(-[value doubleValue]);
                }
                    break;
                case OCUILayoutTopType: {
                    maker.top.mas_equalTo(value);
                }
                    break;
                case OCUILayoutBottomType: {
                    maker.bottom.mas_equalTo(-[value doubleValue]);
                }
                    break;
                case OCUILayoutCenterType: {
                    [self _centerTypeWithMaker:maker value:value];
                }
                    break;
                case OCUILayoutWidthType: {
                    maker.width.mas_equalTo(value);
                }
                    break;
                case OCUILayoutHeightType: {
                    maker.height.mas_equalTo(value);
                }
                    break;
                case OCUILayoutHeightRatioType: {
                    maker.height.mas_equalTo(self.childView.mas_width).multipliedBy([value floatValue]);
                }
                    break;
                case OCUILayoutWidthRatioType: {
                    maker.width.mas_equalTo(self.childView.mas_height).multipliedBy([value floatValue]);
                }
                    break;
            }
        }];
    }];

}

- (void)_centerTypeWithMaker:(MASConstraintMaker *)maker
                       value:(NSNumber *)value {
    OCUICenterAlignType alignType = (OCUICenterAlignType) [value integerValue];
    switch (alignType) {
        case OCUICenterAlignBothType: {
            maker.center.mas_equalTo(0);
            break;
        }
        case OCUICenterAlignXType: {
            maker.centerX.mas_equalTo(0);
        }
            break;
        case OCUICenterAlignYType: {
            maker.centerY.mas_equalTo(0);
        }
            break;
    }
}

#pragma mark - Interface

- (OCUIContainerType)containerType {
    return OCUIContainerLayoutType;
}

#pragma mark - Set & Get

- (void)setOcui_layoutMap:(NSMutableDictionary *)ocui_layoutMap {
    _ocui_layoutMap = [ocui_layoutMap mutableCopy];
}

- (NSMutableDictionary *)ocui_layoutMap {
    if (!_ocui_layoutMap) {
        _ocui_layoutMap = [NSMutableDictionary dictionary];
    }
    return _ocui_layoutMap;
}

- (NSMutableArray *)layoutChildren {
    if (!_layoutChildren) {
        _layoutChildren = [NSMutableArray array];
    }
    return _layoutChildren;
}

@end