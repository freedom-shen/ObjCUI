//
// Created by freedom on 2020/6/21.
//

#import "UISlider+ObjcUI.h"


@implementation UISlider (ObjcUI)

+ (UISlider *(^)())objc_create {
    return ^UISlider * {
        UISlider *picker = [[UISlider alloc] init];
        return picker;
    };
}

- (UISlider *(^)(float value))objc_value {
    return ^UISlider *(float value) {
        self.value = value;
        return self;
    };
}

- (UISlider *(^)(float minimumValue))objc_minimumValue {
    return ^UISlider *(float minimumValue) {
        self.minimumValue = minimumValue;
        return self;
    };
}

- (UISlider *(^)(float maximumValue))objc_maximumValue {
    return ^UISlider *(float maximumValue) {
        self.maximumValue = maximumValue;
        return self;
    };
}

- (UISlider *(^)(UIImage *minimumValueImage))objc_minimumValueImage {
    return ^UISlider *(UIImage *minimumValueImage) {
        self.minimumValueImage = minimumValueImage;
        return self;
    };
}

- (UISlider *(^)(UIImage *maximumValueImage))objc_maximumValueImage {
    return ^UISlider *(UIImage *maximumValueImage) {
        self.maximumValueImage = maximumValueImage;
        return self;
    };
}

- (UISlider *(^)(UIColor *minimumTrackTintColor))objc_minimumTrackTintColor {
    return ^UISlider *(UIColor *minimumTrackTintColor) {
        self.minimumTrackTintColor = minimumTrackTintColor;
        return self;
    };
}

- (UISlider *(^)(UIColor *maximumTrackTintColor))objc_maximumTrackTintColor {
    return ^UISlider *(UIColor *maximumTrackTintColor) {
        self.maximumTrackTintColor = maximumTrackTintColor;
        return self;
    };
}

- (UISlider *(^)(UIColor *thumbTintColor))objc_thumbTintColor {
    return ^UISlider *(UIColor *thumbTintColor) {
        self.thumbTintColor = thumbTintColor;
        return self;
    };
}

- (UISlider *(^)(float value, BOOL animated))objc_setValueAnimated {
    return ^UISlider *(float value, BOOL animated) {
        [self setValue:value animated:animated];
        return self;
    };
}

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setThumbImageForState {
    return ^UISlider *(UIImage *image, UIControlState state) {
        [self setThumbImage:image forState:state];
        return self;
    };
}

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setMinimumTrackImageForState {
    return ^UISlider *(UIImage *image, UIControlState state) {
        [self setMinimumTrackImage:image forState:state];
        return self;
    };
}

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setMaximumTrackImageForState {
    return ^UISlider *(UIImage *image, UIControlState state) {
        [self setMaximumTrackImage:image forState:state];
        return self;
    };
}

@end