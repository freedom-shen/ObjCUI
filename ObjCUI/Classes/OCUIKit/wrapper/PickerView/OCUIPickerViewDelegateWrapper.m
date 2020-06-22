//
// Created by freedom on 2020/6/21.
//

#import "OCUIPickerViewDelegateWrapper.h"


@implementation OCUIPickerViewDelegateWrapper

@synthesize delegateMap = _delegateMap;


- (CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component API_UNAVAILABLE(tvos) {
    CGFloat (^block)(UIPickerView *pickerView, NSInteger component) = self.delegateMap[OCUIPickerViewDelegateWidthForComponentKey];
    if (block) {
        return block(pickerView, component);
    }
    return 0.00;
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component API_UNAVAILABLE(tvos) {
    CGFloat (^block)(UIPickerView *pickerView, NSInteger component) = self.delegateMap[OCUIPickerViewDelegateRowHeightForComponentKey];
    if (block) {
        return block(pickerView, component);
    }
    return 0.00;
}

- (nullable NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component API_UNAVAILABLE(tvos) {
    NSString *(^block)(UIPickerView *pickerView, NSInteger row, NSInteger component) = self.delegateMap[OCUIPickerViewDelegateTitleForRowKey];
    if (block) {
        return block(pickerView, row, component);
    }
    return nil;
}

- (nullable NSAttributedString *)pickerView:(UIPickerView *)pickerView attributedTitleForRow:(NSInteger)row forComponent:(NSInteger)component API_AVAILABLE(ios(6.0)) API_UNAVAILABLE(tvos) {
    NSAttributedString *(^block)(UIPickerView *pickerView, NSInteger row, NSInteger component) = self.delegateMap[OCUIPickerViewDelegateAttributedTitleForRowKey];
    if (block) {
        return block(pickerView, row, component);
    }
    return nil;
}

- (UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(nullable UIView *)view API_UNAVAILABLE(tvos) {
    UIView *(^block)(UIPickerView *pickerView, NSInteger row, NSInteger component, UIView *view) = self.delegateMap[OCUIPickerViewDelegateViewForRowKey];
    if (block) {
        return block(pickerView, row, component, view);
    }
    return view;
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component API_UNAVAILABLE(tvos) {
    UIView *(^block)(UIPickerView *pickerView, NSInteger row, NSInteger component) = self.delegateMap[OCUIPickerViewDelegateDidSelectRowKey];
    if (block) {
        block(pickerView, row, component);
    }
}


- (NSMutableDictionary<OCUIPickerViewDelegateKey, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end