//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUIStack : OCUIBasicLayout

+ (OCUIStack *(^)(UIView *view))objc_create;

- (OCUIStack *(^)(NSArray <OCUILayoutInterface> *children))objc_children;

@end