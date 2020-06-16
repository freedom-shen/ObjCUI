//
// Created by freedom on 2020/6/11.
//

#import "OCUIContainer.h"
#import <Masonry/Masonry.h>

@interface OCUIContainer ()

@property(nonatomic, strong) UIView *customerView;
@property(nonatomic, strong) OCUIContainer *childContainer;
@property(nonatomic, weak) OCUIContainer *superContainer;

@property(nonatomic, strong) NSMutableDictionary *containerMap;

@end

@implementation OCUIContainer

#ifdef DEBUG

- (void)dealloc {
    NSLog(@"%@ is safe", NSStringFromClass([self class]));
}

#endif

- (instancetype)initWithCustomer:(UIView *)customerView {
    self = [super init];
    if (self) {
        self.customerView = customerView;
    }
    return self;
}

+ (OCUIContainer *(^)())create {
    return ^OCUIContainer *() {
        OCUIContainer *view = [[OCUIContainer alloc] initWithCustomer:nil];
        return view;
    };
}

- (OCUIContainer *(^)(UIColor *backgroundColor))backgroundColor {
    return ^OCUIContainer *(UIColor *backgroundColor) {
        self.bindView.backgroundColor = backgroundColor;
        return self;
    };
}

- (OCUIContainer *(^)(double width))width {
    return ^OCUIContainer *(double width) {
        self.containerMap[@(OCUILayoutWidthType)] = @(width);
        return self;
    };
}

- (OCUIContainer *(^)(double height))height {
    return ^OCUIContainer *(double height) {
        self.containerMap[@(OCUILayoutHeightType)] = @(height);
        return self;
    };
}

- (OCUIContainer *(^)(OCUIContainer *childView))childView {
    return ^OCUIContainer *(OCUIContainer *childContainer) {
        [self addSubContainer:childContainer];
        return self;
    };
}

- (void)addSubContainer:(OCUIContainer *)childContainer {
    self.childContainer = childContainer;
    childContainer.superContainer = self;
    if (self.containerType == OCUIContainerEntityType) {
        OCUIContainer *childEntity = childContainer;
        while (TRUE) {
            if (childEntity.containerType == OCUIContainerEntityType) {
                break;
            } else if (childEntity.containerType == OCUIContainerLayoutType) {
                childEntity = childEntity.childContainer;
                if (childEntity == nil) {
                    break;
                }
            }
        }
        [self.bindView addSubview:childEntity.bindView];
        [childEntity makeConstraints];
    }
}

- (void)makeConstraints {
    if (!self.bindView.superview) {
        return;
    }
    [self.bindView mas_makeConstraints:^(MASConstraintMaker *make) {
        NSDictionary *data = [self _appendData];
        NSNumber *leftNum = data[@(OCUILayoutLeftType)];
        NSNumber *rightNum = data[@(OCUILayoutRightType)];
        NSNumber *topNum = data[@(OCUILayoutTopType)];
        NSNumber *bottom = data[@(OCUILayoutBottomType)];
        NSNumber *width = data[@(OCUILayoutWidthType)];
        NSNumber *height = data[@(OCUILayoutHeightType)];

        if (leftNum) {
            make.left.equalTo(leftNum);
        }
        if (rightNum) {
            make.right.equalTo(rightNum);
        }
        if (topNum) {
            make.top.equalTo(topNum);
        }
        if (bottom) {
            make.bottom.equalTo(bottom);
        }
        if (width) {
            make.width.equalTo(width);
        }
        if (height) {
            make.height.equalTo(height);
        }
    }];
}

- (NSMutableDictionary *)_appendData {
    NSMutableDictionary *dictionary = [NSMutableDictionary dictionary];
    OCUIContainer *container = self;
    while (TRUE) {
        if (container.containerType == OCUIContainerEntityType && ![container isEqual:self]) {
            break;
        }
        [container.layoutMap enumerateKeysAndObjectsUsingBlock:^(NSNumber *key, NSNumber *obj, BOOL *stop) {
            OCUILayoutType layoutType = (OCUILayoutType) [key integerValue];
            switch (layoutType) {
                case OCUILayoutLeftType:
                case OCUILayoutRightType:
                case OCUILayoutTopType:
                case OCUILayoutBottomType: {
                    dictionary[key] = @([dictionary[key] doubleValue] + [obj doubleValue]);
                }
                    break;
                case OCUILayoutCenterXType: {

                }
                    break;
                case OCUILayoutCenterYType: {

                }
                    break;
                case OCUILayoutWidthType:
                case OCUILayoutHeightType: {
                    dictionary[key] = obj;
                }
                    break;
            }
        }];
        container = container.superContainer;
    }
    return dictionary;
}

#pragma mark - Set

//- (void)setLayoutMap:(NSDictionary<NSNumber *, NSNumber *> *)layoutMap {
//    _containerMap = [layoutMap ?: @{} mutableCopy];
//}

- (NSDictionary<NSNumber *, NSNumber *> *)layoutMap {
    if (!_containerMap) {
        return @{};
    }
    return [_containerMap copy];
}

#pragma mark - Get

- (UIView *)customerView {
    if (!_customerView) {
        _customerView = [[UIView alloc] init];
    }
    return _customerView;
}

- (NSMutableDictionary *)containerMap {
    if (!_containerMap) {
        _containerMap = [NSMutableDictionary dictionary];
    }
    return _containerMap;
}

- (UIView *)bindView {
    return self.customerView;
}

- (OCUIContainerType)containerType {
    return OCUIContainerEntityType;
}

@end

