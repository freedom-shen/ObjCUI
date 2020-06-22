//
// Created by freedom on 2020/6/22.
//

#import "OCUILayoutHelper.h"


@implementation OCUILayoutHelper

+ (void)autoLayoutWithMap:(NSDictionary *)dictionary
                    maker:(MASConstraintMaker *)maker
                superView:(UIView *)superView {
    [self autoLayoutWithMap:dictionary
                      maker:maker
                  superView:superView
                rewriteType:nil
                      maker:nil];
}

+ (void)autoLayoutWithMap:(NSDictionary *)dictionary
                    maker:(MASConstraintMaker *)maker
                superView:(UIView *)superView
              rewriteType:(NSSet *)rewriteTypes
                    maker:(void (^)(MASConstraintMaker *))objc_maker {
    [dictionary enumerateKeysAndObjectsUsingBlock:^(NSNumber *key, NSNumber *value, BOOL *stop) {
        OCUILayoutType layoutType = (OCUILayoutType) [key integerValue];
        if (!rewriteTypes  || ![rewriteTypes containsObject:@(layoutType)]) {
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
                    maker.height.mas_equalTo(superView.mas_width).multipliedBy([value floatValue]);
                }
                    break;
                case OCUILayoutWidthRatioType: {
                    maker.width.mas_equalTo(superView.mas_height).multipliedBy([value floatValue]);
                }
                    break;
            }
        }
    }];

    if (objc_maker) {
        objc_maker(maker);
    }
}

+ (void)_centerTypeWithMaker:(MASConstraintMaker *)maker
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

@end