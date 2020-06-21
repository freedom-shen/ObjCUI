//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>

typedef NSString *OCUIPickerViewDelegateKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateWidthForComponentKey = @"OCUIPickerViewDelegateWidthForComponentKey";
static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateRowHeightForComponentKey = @"OCUIPickerViewDelegateRowHeightForComponentKey";
static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateTitleForRowKey = @"OCUIPickerViewDelegateTitleForRowKey";
static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateAttributedTitleForRowKey = @"OCUIPickerViewDelegateAttributedTitleForRowKey";
static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateViewForRowKey = @"OCUIPickerViewDelegateViewForRowKey";
static const OCUIPickerViewDelegateKey OCUIPickerViewDelegateDidSelectRowKey = @"OCUIPickerViewDelegateDidSelectRowKey";


@interface OCUIPickerViewDelegateWrapper : NSObject<UIPickerViewDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUIPickerViewDelegateKey, id> *delegateMap;
@end