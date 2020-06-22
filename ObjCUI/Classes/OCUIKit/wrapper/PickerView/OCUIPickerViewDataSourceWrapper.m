//
// Created by freedom on 2020/6/21.
//

#import "OCUIPickerViewDataSourceWrapper.h"


@implementation OCUIPickerViewDataSourceWrapper

@synthesize delegateMap = _delegateMap;

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView {
    NSInteger (^block)(UIPickerView *pickerView) = self.delegateMap[OCUIPickerViewDataSourceNumberOfComponentsInPickerViewKey];
    if (block) {
        return block(pickerView);
    }
    return 0;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component {
    NSInteger (^block)(UIPickerView *pickerView, NSInteger component) = self.delegateMap[OCUIPickerViewDataSourceNumberOfRowsInComponentKey];
    if (block) {
        return block(pickerView, component);
    }
    return 0;
}

#pragma mark - Get

- (NSMutableDictionary<OCUIPickerViewDataSourceKey, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end