//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUIKitDefine.h"

@interface UISlider (ObjcUI)

- (UISlider *(^)(float value))objc_value;

- (UISlider *(^)(float minimumValue))objc_minimumValue;

- (UISlider *(^)(float maximumValue))objc_maximumValue;

- (UISlider *(^)(UIImage *minimumValueImage))objc_minimumValueImage;

- (UISlider *(^)(UIImage *maximumValueImage))objc_maximumValueImage;

- (UISlider *(^)(UIColor *minimumTrackTintColor))objc_minimumTrackTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;;

- (UISlider *(^)(UIColor *maximumTrackTintColor))objc_maximumTrackTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;

- (UISlider *(^)(UIColor *thumbTintColor))objc_thumbTintColor API_AVAILABLE(ios(5.0)) UI_APPEARANCE_SELECTOR;

- (UISlider *(^)(float value, BOOL animated))objc_setValueAnimated;

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setThumbImageForState;

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setMinimumTrackImageForState;

- (UISlider *(^)(UIImage *image, UIControlState state))objc_setMaximumTrackImageForState;


OCUIViewChildHeaderCreate(UISlider);

OCUIControlChildHeaderCreate(UISlider);

@end