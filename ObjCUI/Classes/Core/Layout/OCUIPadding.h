//
// Created by freedom on 2020/6/11.
//

#import <Foundation/Foundation.h>
#import "OCUIContainer.h"


@interface OCUIPadding : OCUIContainer


+ (OCUIPadding *(^)())create;

- (OCUIPadding *(^)(UIEdgeInsets edgeInsets))edgeInsets;

- (OCUIPadding *(^)(double left))left;

- (OCUIPadding *(^)(double right))right;

- (OCUIPadding *(^)(double top))top;

- (OCUIPadding *(^)(double left))bottom;

- (OCUIPadding *(^)(OCUIContainer *childView))childView;

@end