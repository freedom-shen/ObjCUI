//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUIBasicLayout.h"


@interface OCUIRow : OCUIBasicLayout

+ (OCUIRow *(^)(UIView *view))objc_create;

- (OCUIRow *(^)(NSArray <OCUILayoutInterface> *children))objc_children;

@end