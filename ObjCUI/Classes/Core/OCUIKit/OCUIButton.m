//
// Created by freedom on 2020/6/15.
//

#import "OCUIButton.h"


@interface OCUIButton ()

@end

@implementation OCUIButton

#pragma mark - Rewrite

+ (OCUIButton *(^)())create {
    return ^OCUIButton * {
        OCUIButton *button = [[OCUIButton alloc] initWithCustomer:nil];
        return button;
    };
}

@end