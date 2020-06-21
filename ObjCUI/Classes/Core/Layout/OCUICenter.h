//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUICenter : OCUIBasicLayout

+ (OCUICenter *(^)(UIView *view))objc_create;

- (OCUICenter *(^)(OCUICenterAlignType alignType))objc_alignType;

- (OCUICenter *(^)(id <OCUILayoutInterface> child))objc_child;


@end