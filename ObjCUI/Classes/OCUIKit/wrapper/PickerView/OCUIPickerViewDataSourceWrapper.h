//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>

typedef NSString *OCUIPickerViewDataSourceKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUIPickerViewDataSourceKey OCUIPickerViewDataSourceNumberOfComponentsInPickerViewKey = @"OCUIPickerViewDataSourceNumberOfComponentsInPickerViewKey";
static const OCUIPickerViewDataSourceKey OCUIPickerViewDataSourceNumberOfRowsInComponentKey = @"OCUIPickerViewDataSourceNumberOfRowsInComponentKey";

@interface OCUIPickerViewDataSourceWrapper : NSObject<UIPickerViewDataSource>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUIPickerViewDataSourceKey, id> *delegateMap;

@end