//
// Created by freedom on 2020/6/21.
//

#import <objc/runtime.h>
#import "UIPickerView+ObjcUI.h"
#import "OCUIPickerViewDataSourceWrapper.h"
#import "OCUIPickerViewDelegateWrapper.h"

static const void *UIPickerViewObjcUIDataSourceKey = &UIPickerViewObjcUIDataSourceKey;
static const void *UIPickerViewObjcUIDelegateKey = &UIPickerViewObjcUIDelegateKey;

@implementation UIPickerView (ObjcUI)

+ (UIPickerView *(^)())objc_create {
    return ^UIPickerView * {
        UIPickerView *pickerView = [[UIPickerView alloc] init];
        return pickerView;
    };
}

- (UIPickerView *(^)())objc_reloadAllComponents {
    return ^UIPickerView * {
        [self reloadAllComponents];
        return self;
    };
}

- (UIPickerView *(^)(NSInteger component))objc_reloadComponent {
    return ^UIPickerView *(NSInteger component) {
        [self reloadComponent:component];
        return self;
    };
}

- (UIPickerView *(^)(NSInteger row, NSInteger component, BOOL animated))objc_selectRowInComponentAnimated {
    return ^UIPickerView *(NSInteger row, NSInteger component, BOOL animated) {
        [self selectRow:row inComponent:component animated:animated];
        return self;
    };
}

- (UIPickerView *(^)(NSInteger component))objc_selectedRowInComponent {
    return ^UIPickerView *(NSInteger component) {
        [self selectedRowInComponent:component];
        return self;
    };
}


@end

@implementation UIPickerView (ObjcUIDataSource)

- (UIPickerView *(^)(NSInteger(^)(UIPickerView *pickerView)))objc_numberOfComponentsInPickerView {
    return ^UIPickerView *(NSInteger (^pFunction)(UIPickerView *)) {
        self.dataSourceWrapper.delegateMap[OCUIPickerViewDataSourceNumberOfComponentsInPickerViewKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(NSInteger(^)(UIPickerView *pickerView)))objc_numberOfRowsInComponent {
    return ^UIPickerView *(NSInteger (^pFunction)(UIPickerView *)) {
        self.dataSourceWrapper.delegateMap[OCUIPickerViewDataSourceNumberOfRowsInComponentKey] = pFunction;
        return self;
    };
}

- (OCUIPickerViewDataSourceWrapper *)dataSourceWrapper {
    OCUIPickerViewDataSourceWrapper *dataSourceWrapper = objc_getAssociatedObject(self, UIPickerViewObjcUIDataSourceKey);
    if (!dataSourceWrapper) {
        dataSourceWrapper = [[OCUIPickerViewDataSourceWrapper alloc] init];
        self.dataSource = dataSourceWrapper;
        objc_setAssociatedObject(self, UIPickerViewObjcUIDataSourceKey, dataSourceWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return dataSourceWrapper;
}


@end

@implementation UIPickerView (ObjcUIDelegate)

- (UIPickerView *(^)(CGFloat(^)(UIPickerView *pickerView, NSInteger component)))objc_widthForComponent {
    return ^UIPickerView *(CGFloat (^pFunction)(UIPickerView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateWidthForComponentKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(CGFloat(^)(UIPickerView *pickerView, NSInteger component)))objc_rowHeightForComponent {
    return ^UIPickerView *(CGFloat (^pFunction)(UIPickerView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateRowHeightForComponentKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(NSString *(^)(UIPickerView *pickerView, NSInteger component)))objc_titleForRowForComponent {
    return ^UIPickerView *(NSString *(^pFunction)(UIPickerView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateTitleForRowKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(NSAttributedString *(^)(UIPickerView *pickerView, NSInteger row, NSInteger component)))objc_attributedTitleForRowForComponent {
    return ^UIPickerView *(NSAttributedString *(^pFunction)(UIPickerView *, NSInteger, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateAttributedTitleForRowKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(UIView *(^)(UIPickerView *pickerView, NSInteger row, NSInteger component, UIView *view)))objc_viewForRowForComponentReusingView {
    return ^UIPickerView *(UIView *(^pFunction)(UIPickerView *, NSInteger, NSInteger, UIView *)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateViewForRowKey] = pFunction;
        return self;
    };
}

- (UIPickerView *(^)(void (^)(UIPickerView *pickerView, NSInteger row, NSInteger component)))objc_didSelectRowInComponent {
    return ^UIPickerView *(void (^pFunction)(UIPickerView *, NSInteger, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUIPickerViewDelegateDidSelectRowKey] = pFunction;
        return self;
    };
}

#pragma mark - Get

- (OCUIPickerViewDelegateWrapper *)delegateWrapper {
    OCUIPickerViewDelegateWrapper *delegateWrapper = objc_getAssociatedObject(self, UIPickerViewObjcUIDelegateKey);
    if (!delegateWrapper) {
        delegateWrapper = [[OCUIPickerViewDelegateWrapper alloc] init];
        self.delegate = delegateWrapper;
        objc_setAssociatedObject(self, UIPickerViewObjcUIDelegateKey, delegateWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWrapper;
}


@end
