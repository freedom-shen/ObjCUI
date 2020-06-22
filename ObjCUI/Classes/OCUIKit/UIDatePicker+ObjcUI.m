//
// Created by freedom on 2020/6/21.
//

#import "UIDatePicker+ObjcUI.h"


@implementation UIDatePicker (ObjcUI)

+ (UIDatePicker *(^)())objc_create {
    return ^UIDatePicker * {
        UIDatePicker *picker = [[UIDatePicker alloc] init];
        return picker;
    };
}

- (UIDatePicker *(^)(UIDatePickerMode datePickerMode))objc_datePickerMode {
    return ^UIDatePicker *(UIDatePickerMode datePickerMode) {
        self.datePickerMode = datePickerMode;
        return self;
    };
}

- (UIDatePicker *(^)(NSLocale *locale))objc_locale {
    return ^UIDatePicker *(NSLocale *locale) {
        self.locale = locale;
        return self;
    };
}

- (UIDatePicker *(^)(NSCalendar *calendar))objc_calendar {
    return ^UIDatePicker *(NSCalendar *calendar) {
        self.calendar = calendar;
        return self;
    };
}

- (UIDatePicker *(^)(NSTimeZone *timeZone))objc_timeZone {
    return ^UIDatePicker *(NSTimeZone *timeZone) {
        self.timeZone = timeZone;
        return self;
    };
}

- (UIDatePicker *(^)(NSDate *date))objc_date {
    return ^UIDatePicker *(NSDate *date) {
        self.date = date;
        return self;
    };
}

- (UIDatePicker *(^)(NSDate *minimumDate))objc_minimumDate {
    return ^UIDatePicker *(NSDate *minimumDate) {
        self.minimumDate = minimumDate;
        return self;
    };
}

- (UIDatePicker *(^)(NSDate *maximumDate))objc_maximumDate {
    return ^UIDatePicker *(NSDate *maximumDate) {
        self.maximumDate = maximumDate;
        return self;
    };
}

- (UIDatePicker *(^)(NSTimeInterval countDownDuration))objc_countDownDuration {
    return ^UIDatePicker *(NSTimeInterval countDownDuration) {
        self.countDownDuration = countDownDuration;
        return self;
    };
}

- (UIDatePicker *(^)(NSInteger minuteInterval))objc_minuteInterval {
    return ^UIDatePicker *(NSInteger minuteInterval) {
        self.minuteInterval = minuteInterval;
        return self;
    };
}

- (UIDatePicker *(^)(NSDate *date, BOOL animated))objc_setDateAnimated {
    return ^UIDatePicker *(NSDate *date, BOOL animated) {
        [self setDate:date animated:animated];
        return self;
    };
}


@end