//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUISizeBox : OCUIBasicLayout

+ (OCUISizeBox *(^)(UIView *view))objc_create;

- (OCUISizeBox *(^)(double width))objc_width;
- (OCUISizeBox *(^)(double width))objc_height;

- (OCUISizeBox *(^)(id<OCUILayoutInterface> child))objc_child;

@end