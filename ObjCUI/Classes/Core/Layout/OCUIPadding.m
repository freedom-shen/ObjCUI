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
    @WeakSelf(self);
    return ^OCUIPadding *(UIEdgeInsets edgeInsets) {
        @StrongSelf(weakSelf);
        [strongSelf _makeDataWithType:OCUILayoutLeftType constraint:edgeInsets.left];
        [strongSelf _makeDataWithType:OCUILayoutRightType constraint:edgeInsets.right];
        [strongSelf _makeDataWithType:OCUILayoutTopType constraint:edgeInsets.top];
        [strongSelf _makeDataWithType:OCUILayoutBottomType constraint:edgeInsets.bottom];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double left))left {
    @WeakSelf(self);
    return ^OCUIPadding *(double left) {
        @StrongSelf(weakSelf);
        [strongSelf _makeDataWithType:OCUILayoutLeftType constraint:left];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double right))right {
    @WeakSelf(self);
    return ^OCUIPadding *(double right) {
        @StrongSelf(weakSelf);
        [strongSelf _makeDataWithType:OCUILayoutRightType constraint:right];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double top))top {
    @WeakSelf(self);
    return ^OCUIPadding *(double top) {
        @StrongSelf(weakSelf);
        [strongSelf _makeDataWithType:OCUILayoutTopType constraint:top];
        return strongSelf;
    };
}

- (OCUIPadding *(^)(double bottom))bottom {
    @WeakSelf(self);
    return ^OCUIPadding *(double bottom) {
        @StrongSelf(weakSelf);
        [strongSelf _makeDataWithType:OCUILayoutBottomType constraint:bottom];
        return strongSelf;
    };
}

//- (void)makeConstraints {
//    if (!self.bindView.superview) {
//        return;
//    }
//    [self.bindView mas_makeConstraints:^(MASConstraintMaker *make) {
//        NSNumber *leftNum = self.paddingLayoutMap[@(OCUILayoutLeftType)];
//        NSNumber *rightNum = self.paddingLayoutMap[@(OCUILayoutRightType)];
//        NSNumber *topNum = self.paddingLayoutMap[@(OCUILayoutTopType)];
//        NSNumber *bottom = self.paddingLayoutMap[@(OCUILayoutBottomType)];
//
//        if (leftNum) {
//            make.left.mas_equalTo([leftNum doubleValue]);
//        }
//        if (rightNum) {
//            make.right.mas_equalTo([rightNum doubleValue]);
//        }
//        if (topNum) {
//            make.top.mas_equalTo([topNum doubleValue]);
//        }
//        if (bottom) {
//            make.bottom.mas_equalTo([bottom doubleValue]);
//        }
//    }];
//}

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

//- (void)setLayoutMap:(NSDictionary<NSNumber *, NSNumber *> *)layoutMap {
//    if (layoutMap == nil) {
//        return;
//    }
//    NSSet *set = [[NSSet alloc] initWithObjects:@(OCUILayoutLeftType), @(OCUILayoutRightType), @(OCUILayoutTopType), @(OCUILayoutBottomType), nil];
//    @WeakSelf(self);
//    [layoutMap enumerateKeysAndObjectsUsingBlock:^(NSNumber *key, NSNumber *obj, BOOL *stop) {
//        @StrongSelf(weakSelf);
//        if ([set containsObject:key]) {
//            OCUILayoutType layoutType = (OCUILayoutType) [key integerValue];
//            if (layoutMap[key]) {
//                double constraint = [obj doubleValue];
//                [strongSelf _makeDataWithType:layoutType constraint:constraint];
//            } else {
//                strongSelf.paddingLayoutMap[key] = obj;
//            }
//        }
//    }];
//}

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