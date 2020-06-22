//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUIColumn : OCUIBasicLayout

+ (OCUIColumn *(^)(UIView *view))objc_create;

- (OCUIColumn *(^)(NSArray <OCUILayoutInterface> *children))objc_children;

@end