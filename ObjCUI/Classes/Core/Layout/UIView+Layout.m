//
// Created by freedom on 2020/6/21.
//

#import <objc/runtime.h>
#import "UIView+Layout.h"

static const void *UIViewObjcLayoutInterfaceKey = &UIViewObjcLayoutInterfaceKey;

@implementation UIView (Layout)

- (OCUIContainerType)containerType {
    return OCUIContainerEntityType;
}

- (void)setOcui_layoutMap:(NSMutableDictionary *)ocui_layoutMap {
    objc_setAssociatedObject(self, UIViewObjcLayoutInterfaceKey, [ocui_layoutMap mutableCopy], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (NSMutableDictionary *)ocui_layoutMap {
    NSMutableDictionary *dictionary = objc_getAssociatedObject(self, UIViewObjcLayoutInterfaceKey);
    if (!dictionary) {
        dictionary = [NSMutableDictionary dictionary];
    }
    return dictionary;
}

@end