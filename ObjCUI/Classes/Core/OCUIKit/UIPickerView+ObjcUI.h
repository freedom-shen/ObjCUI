//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUIViewConvert.h"

@interface UIPickerView (ObjcUI)

- (UIPickerView *(^)())objc_reloadAllComponents;

- (UIPickerView *(^)(NSInteger component))objc_reloadComponent;

- (UIPickerView *(^)(NSInteger row,NSInteger component,BOOL animated))objc_selectRowInComponentAnimated;

- (UIPickerView *(^)(NSInteger component))objc_selectedRowInComponent;

OCUIViewChildHeaderCreate(UIPickerView);

@end

@interface UIPickerView (ObjcUIDataSource)

- (UIPickerView *(^)(NSInteger(^)(UIPickerView *pickerView)))objc_numberOfComponentsInPickerView;

- (UIPickerView *(^)(NSInteger(^)(UIPickerView *pickerView)))objc_numberOfRowsInComponent;


@end

@interface UIPickerView (ObjcUIDelegate)

- (UIPickerView *(^)(CGFloat(^)(UIPickerView *pickerView, NSInteger component)))objc_widthForComponent;

- (UIPickerView *(^)(CGFloat(^)(UIPickerView *pickerView, NSInteger component)))objc_rowHeightForComponent API_UNAVAILABLE(tvos);

- (UIPickerView *(^)(NSString *(^)(UIPickerView *pickerView, NSInteger component)))objc_titleForRowForComponent API_UNAVAILABLE(tvos);

- (UIPickerView *(^)(NSAttributedString *(^)(UIPickerView *pickerView,NSInteger row ,NSInteger component)))objc_attributedTitleForRowForComponent API_AVAILABLE(ios(6.0)) API_UNAVAILABLE(tvos);

- (UIPickerView *(^)(UIView *(^)(UIPickerView *pickerView,NSInteger row ,NSInteger component,UIView *view)))objc_viewForRowForComponentReusingView API_UNAVAILABLE(tvos);

- (UIPickerView *(^)(void (^)(UIPickerView *pickerView,NSInteger row ,NSInteger component)))objc_didSelectRowInComponent API_UNAVAILABLE(tvos);

@end

