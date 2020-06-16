//
// Created by freedom on 2020/6/16.
//

#import <objc/runtime.h>
#import "UIButton+ObjcUI.h"
#import "OCUIControllerWrapper.h"

static const void *UIButtonObjcUIEventKey = &UIButtonObjcUIEventKey;


@implementation UIButton (ObjcUI)

+ (UIButton *(^)())objc_create {
    return ^UIButton * {
        UIButton *button = [[UIButton alloc] init];
        return button;
    };
}

- (UIButton *(^)(UIControlState state, NSString *title))objc_title {
    return ^UIButton *(UIControlState state, NSString *title) {
        [self setTitle:title forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, UIColor *titleColor))objc_titleColor {
    return ^UIButton *(UIControlState state, UIColor *titleColor) {
        [self setTitleColor:titleColor forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, UIColor *titleShadowColor))objc_titleShadowColor {
    return ^UIButton *(UIControlState state, UIColor *titleShadowColor) {
        [self setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, UIImage *image))objc_image {
    return ^UIButton *(UIControlState state, UIImage *image) {
        [self setImage:image forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, UIImage *backgroundImage))objc_backgroundImage {
    return ^UIButton *(UIControlState state, UIImage *backgroundImage) {
        [self setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, UIImageSymbolConfiguration *configuration))objc_preferredSymbolConfiguration {
    return ^UIButton *(UIControlState state, UIImageSymbolConfiguration *configuration) {
        [self setPreferredSymbolConfiguration:configuration forImageInState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlState state, NSAttributedString *attributedString))objc_attributedTitle {
    return ^UIButton *(UIControlState state, NSAttributedString *attributedString) {
        [self setAttributedTitle:attributedString forState:state];
        return self;
    };
}

- (UIButton *(^)(UIControlEvents controlEvents, void(^)(UIButton *button)))objc_action {
    return ^UIButton *(UIControlEvents controlEvents, void (^pFunction)(UIButton *)) {
        if (!self.eventMap[@(controlEvents)]) {
            self.eventMap[@(controlEvents)] = [[OCUIControllerWrapper alloc] initWithHandler:pFunction];
        }
        [self addTarget:self.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return self;
    };
}

- (UIButton *(^)(UIColor *tintColor))objc_tintColor {
    return ^UIButton *(UIColor *tintColor) {
        self.tintColor = tintColor;
        return self;
    };
}


- (UIButton *(^)(UIEdgeInsets contentEdgeInsets))objc_contentEdgeInsets {
    return ^UIButton *(UIEdgeInsets contentEdgeInsets) {
        self.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets titleEdgeInsets))objc_titleEdgeInsets {
    return ^UIButton *(UIEdgeInsets titleEdgeInsets) {
        self.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))objc_reversesTitleShadowWhenHighlighted {
    return ^UIButton *(BOOL reversesTitleShadowWhenHighlighted) {
        self.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

- (UIButton *(^)(UIEdgeInsets imageEdgeInsets))objc_imageEdgeInsets {
    return ^UIButton *(UIEdgeInsets imageEdgeInsets) {
        self.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (UIButton *(^)(BOOL adjustsImageWhenHighlighted))objc_adjustsImageWhenHighlighted {
    return ^UIButton *(BOOL adjustsImageWhenHighlighted) {
        self.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (UIButton *(^)(BOOL adjustsImageWhenDisabled))objc_adjustsImageWhenDisabled {
    return ^UIButton *(BOOL adjustsImageWhenDisabled) {
        self.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (UIButton *(^)(BOOL showsTouchWhenHighlighted))objc_showsTouchWhenHighlighted {
    return ^UIButton *(BOOL showsTouchWhenHighlighted) {
        self.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}


- (UIButton *(^)(void(^)(UIButton *button)))objc_maker {
    return ^UIButton *(void (^pFunction)(UIButton *)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

#pragma mark - Get

- (NSMutableDictionary *)eventMap {
    NSMutableDictionary *eventMap = objc_getAssociatedObject(self, UIButtonObjcUIEventKey);
    if (!eventMap) {
        eventMap = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, UIButtonObjcUIEventKey, eventMap, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return eventMap;
}

@end