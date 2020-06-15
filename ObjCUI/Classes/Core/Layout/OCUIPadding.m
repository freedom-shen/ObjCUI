//
// Created by freedom on 2020/6/11.
//

#import <Masonry/Masonry-umbrella.h>
#import "OCUIPadding.h"


@interface OCUIPadding ()

@property(nonatomic, strong) NSMutableDictionary <NSNumber *, NSNumber *> *paddingLayoutMap;

@end

@implementation OCUIPadding


+ (OCUIPadding *(^)())create {
    return ^OCUIPadding * {
        OCUIPadding *padding = [[OCUIPadding alloc] init];
        return padding;
    };
}

- (OCUIPadding *(^)(UIEdgeInsets edgeInsets))edgeInsets {
    return ^OCUIPadding *(UIEdgeInsets edgeInsets) {
        [self _makeDataWithType:OCUILayoutLeftType constraint:edgeInsets.left];
        [self _makeDataWithType:OCUILayoutRightType constraint:edgeInsets.right];
        [self _makeDataWithType:OCUILayoutTopType constraint:edgeInsets.top];
        [self _makeDataWithType:OCUILayoutBottomType constraint:edgeInsets.bottom];
        return self;
    };
}

- (OCUIPadding *(^)(double left))left {
    return ^OCUIPadding *(double left) {
        [self _makeDataWithType:OCUILayoutLeftType constraint:left];
        return self;
    };
}

- (OCUIPadding *(^)(double right))right {
    return ^OCUIPadding *(double right) {
        [self _makeDataWithType:OCUILayoutRightType constraint:right];
        return self;
    };
}

- (OCUIPadding *(^)(double top))top {
    return ^OCUIPadding *(double top) {
        [self _makeDataWithType:OCUILayoutTopType constraint:top];
        return self;
    };
}

- (OCUIPadding *(^)(double bottom))bottom {
    return ^OCUIPadding *(double bottom) {
        [self _makeDataWithType:OCUILayoutBottomType constraint:bottom];
        return self;
    };
}

#pragma mark - Tool

- (void)_makeDataWithType:(OCUILayoutType)type constraint:(double)constraint {
    NSNumber *number = self.paddingLayoutMap[@(type)];
    if (!number) {
        self.paddingLayoutMap[@(type)] = @(constraint);
    } else {
        self.paddingLayoutMap[@(type)] = @([number doubleValue] + constraint);
    }
}


#pragma mark - Set

- (NSDictionary<NSNumber *, NSNumber *> *)layoutMap {
    return [self.paddingLayoutMap copy];
}

#pragma mark - Get

- (NSMutableDictionary<NSNumber *, NSNumber *> *)paddingLayoutMap {
    if (!_paddingLayoutMap) {
        _paddingLayoutMap = [NSMutableDictionary dictionary];
    }
    return _paddingLayoutMap;
}

- (OCUIContainerType)containerType {
    return OCUIContainerLayoutType;
}

@end