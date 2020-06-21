
#import <UIKit/UIKit.h>

typedef NS_ENUM(NSUInteger, OCUIContainerType) {
    OCUIContainerEntityType = 0,
    OCUIContainerLayoutType,
};

typedef NS_ENUM(NSUInteger, OCUICenterAlignType) {
    OCUICenterAlignBothType = 0,
    OCUICenterAlignXType,
    OCUICenterAlignYType,
};

typedef NS_ENUM(NSUInteger, OCUILayoutType) {
    OCUILayoutLeftType = 1,
    OCUILayoutRightType,
    OCUILayoutTopType,
    OCUILayoutBottomType,

    OCUILayoutCenterType,

    OCUILayoutWidthType,
    OCUILayoutHeightType,

    OCUILayoutWidthHeightRatioType,
};