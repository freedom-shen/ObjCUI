//
// Created by freedom on 2020/6/17.
//

#import "UIImageView+ObjcUI.h"


@implementation UIImageView (ObjcUI)

+ (UIImageView *(^)())objc_create {
    return ^UIImageView * {
        UIImageView *image = [[UIImageView alloc] init];
        return image;
    };
}

- (UIImageView *(^)(UIImage *image))objc_image {
    return ^UIImageView *(UIImage *image) {
        self.image = image;
        return self;
    };
}

- (UIImageView *(^)(UIImage *highlightedImage))objc_highlightedImage {
    return ^UIImageView *(UIImage *highlightedImage) {
        self.highlightedImage = highlightedImage;
        return self;
    };
}

- (UIImageView *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))objc_preferredSymbolConfiguration {
    return ^UIImageView *(UIImageSymbolConfiguration *preferredSymbolConfiguration) {
        self.preferredSymbolConfiguration = preferredSymbolConfiguration;
        return self;
    };
}

- (UIImageView *(^)(BOOL highlighted))objc_highlighted {
    return ^UIImageView *(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}

- (UIImageView *(^)(NSArray<UIImage *> *animationImages))objc_animationImages {
    return ^UIImageView *(NSArray<UIImage *> *animationImages) {
        self.animationImages = animationImages;
        return self;
    };
}

- (UIImageView *(^)(NSArray<UIImage *> *highlightedAnimationImages))objc_highlightedAnimationImages {
    return ^UIImageView *(NSArray<UIImage *> *highlightedAnimationImages) {
        self.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

- (UIImageView *(^)(NSTimeInterval animationDuration))objc_animationDuration {
    return ^UIImageView *(NSTimeInterval animationDuration) {
        self.animationDuration = animationDuration;
        return self;
    };
}

- (UIImageView *(^)(NSInteger animationRepeatCount))objc_animationRepeatCount {
    return ^UIImageView *(NSInteger animationRepeatCount) {
        self.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (UIImageView *(^)(UIColor *tintColor))objc_tintColor {
    return ^UIImageView *(UIColor *tintColor) {
        self.tintColor = tintColor;
        return self;
    };
}

- (UIImageView *(^)(BOOL adjustsImageWhenAncestorFocused))objc_adjustsImageWhenAncestorFocused {
    return ^UIImageView *(BOOL adjustsImageWhenAncestorFocused) {
        self.adjustsImageSizeForAccessibilityContentSizeCategory = adjustsImageWhenAncestorFocused;
        return self;
    };
}


- (UIImageView *(^)())objc_startAnimating {
    return ^UIImageView * {
        [self startAnimating];
        return self;
    };
}

- (UIImageView *(^)())objc_stopAnimating {
    return ^UIImageView * {
        [self startAnimating];
        return self;
    };
}

- (UIImageView *(^)(void(^)(UIImageView *imageView)))objc_maker {
    return ^UIImageView *(void (^pFunction)(UIImageView *)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

@end