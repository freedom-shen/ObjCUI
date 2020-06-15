//
// Created by freedom on 2020/6/15.
//

#import <Foundation/Foundation.h>
#import "OCUIContainer.h"


@interface OCUIButton : OCUIContainer


#pragma mark - Rewrite

+ (OCUIButton *(^)())create;

- (OCUIButton *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIButton *(^)(double width))width;

- (OCUIButton *(^)(double height))height;

@end