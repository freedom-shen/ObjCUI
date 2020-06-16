//
// Created by freedom on 2020/6/16.
//

#import "OCUIImage.h"


@interface OCUIImage ()

@property (nonatomic, strong) UIImageView *imageView;

@end

@implementation OCUIImage

+ (OCUIImage *(^)())create {
    return ^OCUIImage * {
        OCUIImage *image = [[OCUIImage alloc] initWithCustomer:nil];
        return image;
    };
}

- (OCUIImage *(^)(UIImage *image))image {
    return ^OCUIImage *(UIImage *image) {
        self.imageView.image = image;
        return self;
    };
}

- (OCUIImage *(^)(UIImage *highlightedImage))highlightedImage {
    return ^OCUIImage *(UIImage *highlightedImage) {
        self.imageView.highlightedImage = highlightedImage;
        return self;
    };
}

- (OCUIImage *(^)(UIImageSymbolConfiguration *preferredSymbolConfiguration))preferredSymbolConfiguration {
    return ^OCUIImage *(UIImageSymbolConfiguration *preferredSymbolConfiguration) {
        self.imageView.preferredSymbolConfiguration = preferredSymbolConfiguration;
        return self;
    };
}

- (OCUIImage *(^)(BOOL highlighted))highlighted {
    return ^OCUIImage *(BOOL highlighted) {
        self.imageView.highlighted = highlighted;
        return self;
    };
}

- (OCUIImage *(^)(NSArray<UIImage *> *animationImages))animationImages {
    return ^OCUIImage *(NSArray<UIImage *> *animationImages) {
        self.imageView.animationImages = animationImages;
        return self;
    };
}

- (OCUIImage *(^)(NSArray<UIImage *> *highlightedAnimationImages))highlightedAnimationImages {
    return ^OCUIImage *(NSArray<UIImage *> *highlightedAnimationImages) {
        self.imageView.highlightedAnimationImages = highlightedAnimationImages;
        return self;
    };
}

- (OCUIImage *(^)(NSTimeInterval animationDuration))animationDuration {
    return ^OCUIImage *(NSTimeInterval animationDuration) {
        self.imageView.animationDuration = animationDuration;
        return self;
    };
}

- (OCUIImage *(^)(NSInteger animationRepeatCount))animationRepeatCount {
    return ^OCUIImage *(NSInteger animationRepeatCount) {
        self.imageView.animationRepeatCount = animationRepeatCount;
        return self;
    };
}

- (OCUIImage *(^)(UIColor *tintColor))tintColor {
    return ^OCUIImage *(UIColor *tintColor) {
        self.imageView.tintColor = tintColor;
        return self;
    };
}

- (OCUIImage *(^)(BOOL adjustsImageWhenAncestorFocused))adjustsImageWhenAncestorFocused {
    return ^OCUIImage *(BOOL adjustsImageWhenAncestorFocused) {
        self.imageView.adjustsImageSizeForAccessibilityContentSizeCategory = adjustsImageWhenAncestorFocused;
        return self;
    };
}


- (OCUIImage *(^)())startAnimating {
    return ^OCUIImage * {
        [self.imageView startAnimating];
        return self;
    };
}

- (OCUIImage *(^)())stopAnimating {
    return ^OCUIImage * {
        [self.imageView startAnimating];
        return self;
    };
}

- (OCUIImage *(^)(void(^)(UIImageView *imageView)))maker {
    return ^OCUIImage *(void (^pFunction)(UIImageView *)) {
        if (pFunction) {
            pFunction(self.imageView);
        }
        return self;
    };
}


#pragma mark - Get

- (UIView *)bindView {
    return self.imageView;
}

- (UIImageView *)imageView {
    if (!_imageView) {
        _imageView = [[UIImageView alloc] init];
    }
    return _imageView;
}

@end