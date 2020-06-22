//
// Created by freedom on 2020/6/21.
//

#import "OCUIBasicLayout.h"
#import <Masonry/Masonry.h>
#import <Masonry/MASConstraintMaker.h>
#import "UIView+Layout.h"
#import "OCUILayoutHelper.h"


@interface OCUIBasicLayout ()

@property(nonatomic, strong) NSMutableArray *layoutChildren;

@end

@implementation OCUIBasicLayout

@synthesize ocui_layoutMap = _ocui_layoutMap;

- (void)objc_layout {
    [self objc_layoutWithMaker:nil];
}

- (void)objc_layoutWithMaker:(void(^)(MASConstraintMaker *))objc_maker {
    [self.entityView addSubview:self.childView];
    [self.childView mas_makeConstraints:^(MASConstraintMaker *maker) {
        [OCUILayoutHelper autoLayoutWithMap:self.ocui_layoutMap maker:maker superView:self.entityView];
        if (objc_maker) {
            objc_maker(maker);
        }
    }];
}

#pragma mark - Interface

- (OCUIContainerType)containerType {
    return OCUIContainerLayoutType;
}

#pragma mark - Set & Get

- (void)setOcui_layoutMap:(NSMutableDictionary *)ocui_layoutMap {
    _ocui_layoutMap = [ocui_layoutMap mutableCopy];
}

- (NSMutableDictionary *)ocui_layoutMap {
    if (!_ocui_layoutMap) {
        _ocui_layoutMap = [NSMutableDictionary dictionary];
    }
    return _ocui_layoutMap;
}

- (NSMutableArray *)layoutChildren {
    if (!_layoutChildren) {
        _layoutChildren = [NSMutableArray array];
    }
    return _layoutChildren;
}

@end