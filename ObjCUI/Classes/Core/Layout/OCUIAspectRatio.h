//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"


@interface OCUIAspectRatio : OCUIBasicLayout

+ (OCUIAspectRatio *(^)(UIView *view))objc_create;

// width / height
- (OCUIAspectRatio *(^)(double ratio))objc_ratio;

@end