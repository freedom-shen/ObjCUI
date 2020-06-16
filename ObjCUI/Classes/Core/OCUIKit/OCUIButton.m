//
// Created by freedom on 2020/6/15.
//

#import "OCUIButton.h"
#import "OCUIControllerWrapper.h"


@interface OCUIButton ()

@property(nonatomic, strong) UIButton *button;
@property(nonatomic, strong) NSMutableDictionary <NSNumber *, OCUIControllerWrapper *> *eventMap;

@end

@implementation OCUIButton

- (OCUIButton *(^)(UIControlState state, NSString *title))title {
    @WeakSelf(self);
    return ^OCUIButton *(UIControlState state, NSString *title) {
        @StrongSelf(weakSelf);
        [strongSelf.button setTitle:title forState:state];
        return strongSelf;
    };
}

- (OCUIButton *(^)(UIControlState state, UIColor *titleColor))titleColor {
    return ^OCUIButton *(UIControlState state, UIColor *titleColor) {
        [self.button setTitleColor:titleColor forState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlState state, UIColor *titleShadowColor))titleShadowColor {
    return ^OCUIButton *(UIControlState state, UIColor *titleShadowColor) {
        [self.button setTitleShadowColor:titleShadowColor forState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlState state, UIImage *image))image {
    return ^OCUIButton *(UIControlState state, UIImage *image) {
        [self.button setImage:image forState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlState state, UIImage *backgroundImage))backgroundImage {
    return ^OCUIButton *(UIControlState state, UIImage *backgroundImage) {
        [self.button setBackgroundImage:backgroundImage forState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlState state, UIImageSymbolConfiguration *configuration))preferredSymbolConfiguration {
    return ^OCUIButton *(UIControlState state, UIImageSymbolConfiguration *configuration) {
        [self.button setPreferredSymbolConfiguration:configuration forImageInState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlState state, NSAttributedString *attributedString))attributedTitle {
    return ^OCUIButton *(UIControlState state, NSAttributedString *attributedString) {
        [self.button setAttributedTitle:attributedString forState:state];
        return self;
    };
}

- (OCUIButton *(^)(UIControlEvents controlEvents, void(^)(UIButton *button)))action {
    @WeakSelf(self);
    return ^OCUIButton *(UIControlEvents controlEvents, void (^pFunction)(UIButton *)) {
        @StrongSelf(weakSelf);
        if (!strongSelf.eventMap[@(controlEvents)]) {
            strongSelf.eventMap[@(controlEvents)] = [[OCUIControllerWrapper alloc] initWithHandler:pFunction];
        }
        [strongSelf.button addTarget:strongSelf.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return strongSelf;
    };
}

- (OCUIButton *(^)(UIColor *tintColor))tintColor {
    return ^OCUIButton *(UIColor *tintColor) {
        self.button.tintColor = tintColor;
        return self;
    };
}


- (OCUIButton *(^)(UIEdgeInsets contentEdgeInsets))contentEdgeInsets {
    return ^OCUIButton *(UIEdgeInsets contentEdgeInsets) {
        self.button.contentEdgeInsets = contentEdgeInsets;
        return self;
    };
}

- (OCUIButton *(^)(UIEdgeInsets titleEdgeInsets))titleEdgeInsets {
    return ^OCUIButton *(UIEdgeInsets titleEdgeInsets) {
        self.button.titleEdgeInsets = titleEdgeInsets;
        return self;
    };
}

- (OCUIButton *(^)(BOOL reversesTitleShadowWhenHighlighted))reversesTitleShadowWhenHighlighted {
    return ^OCUIButton *(BOOL reversesTitleShadowWhenHighlighted) {
        self.button.reversesTitleShadowWhenHighlighted = reversesTitleShadowWhenHighlighted;
        return self;
    };
}

- (OCUIButton *(^)(UIEdgeInsets imageEdgeInsets))imageEdgeInsets {
    return ^OCUIButton *(UIEdgeInsets imageEdgeInsets) {
        self.button.imageEdgeInsets = imageEdgeInsets;
        return self;
    };
}

- (OCUIButton *(^)(BOOL adjustsImageWhenHighlighted))adjustsImageWhenHighlighted {
    return ^OCUIButton *(BOOL adjustsImageWhenHighlighted) {
        self.button.adjustsImageWhenHighlighted = adjustsImageWhenHighlighted;
        return self;
    };
}

- (OCUIButton *(^)(BOOL adjustsImageWhenDisabled))adjustsImageWhenDisabled {
    return ^OCUIButton *(BOOL adjustsImageWhenDisabled) {
        self.button.adjustsImageWhenDisabled = adjustsImageWhenDisabled;
        return self;
    };
}

- (OCUIButton *(^)(BOOL showsTouchWhenHighlighted))showsTouchWhenHighlighted {
    return ^OCUIButton *(BOOL showsTouchWhenHighlighted) {
        self.button.showsTouchWhenHighlighted = showsTouchWhenHighlighted;
        return self;
    };
}


#pragma mark - Rewrite


- (OCUIButton *(^)(void(^)(UIButton *button)))maker {
    return ^OCUIButton *(void (^pFunction)(UIButton *)) {
        if (pFunction) {
            pFunction(self.button);
        }
        return self;
    };
}

+ (OCUIButton *(^)())create {
    return ^OCUIButton * {
        OCUIButton *button = [[OCUIButton alloc] initWithCustomer:nil];
        return button;
    };
}

#pragma mark - Get


- (UIButton *)button {
    if (!_button) {
        _button = [[UIButton alloc] init];
    }
    return _button;
}

- (NSMutableDictionary<NSNumber *, OCUIControllerWrapper *> *)eventMap {
    if (!_eventMap) {
        _eventMap = [NSMutableDictionary dictionary];
    }
    return _eventMap;
}

- (UIView *)bindView {
    return self.button;
}

@end