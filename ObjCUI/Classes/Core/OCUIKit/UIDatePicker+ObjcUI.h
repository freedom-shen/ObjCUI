//
// Created by freedom on 2020/6/21.
//

#import <UIKit/UIKit.h>
#import "OCUIControlConvert.h"
#import "OCUIViewConvert.h"

@interface UIDatePicker (ObjcUI)


- (UIDatePicker *(^)(UIDatePickerMode datePickerMode))objc_datePickerMode;

- (UIDatePicker *(^)(NSLocale *locale))objc_locale;

- (UIDatePicker *(^)(NSCalendar *calendar))objc_calendar;

- (UIDatePicker *(^)(NSTimeZone *timeZone))objc_timeZone;

- (UIDatePicker *(^)(NSDate *date))objc_date;

- (UIDatePicker *(^)(NSDate *minimumDate))objc_minimumDate;

- (UIDatePicker *(^)(NSDate *maximumDate))objc_maximumDate;

- (UIDatePicker *(^)(NSTimeInterval countDownDuration))objc_countDownDuration;

- (UIDatePicker *(^)(NSInteger minuteInterval))objc_minuteInterval;

- (UIDatePicker *(^)(NSDate *date, BOOL animated))objc_setDateAnimated;


OCUIViewChildHeaderCreate(UIDatePicker);

OCUIControlChildHeaderCreate(UIDatePicker);

@end