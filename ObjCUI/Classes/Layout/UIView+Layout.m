//
// Created by freedom on 2020/6/21.
//

#import <objc/runtime.h>
#import "UIView+Layout.h"
#import "OCUIPadding.h"
#import "OCUISizeBox.h"
#import "OCUICenter.h"
#import "OCUIColumn.h"
#import "OCUIRow.h"

static const void *UIViewObjcLayoutInterfaceKey = &UIViewObjcLayoutInterfaceKey;
static const void *UIViewObjcLayoutMasonryKey = &UIViewObjcLayoutMasonryKey;

@implementation UIView (Layout)

- (OCUIPadding *)objc_convertPadding {
    return OCUIPadding.objc_create(self);
}

- (OCUISizeBox *)objc_convertSizeBox {
    return OCUISizeBox.objc_create(self);
}

- (OCUICenter *)objc_convertCenter {
    return OCUICenter.objc_create(self);
}

- (OCUIColumn *)objc_convertColumn {
    return OCUIColumn.objc_create(self);
}

- (OCUIRow *)objc_convertRow {
    return OCUIRow.objc_create(self);
}

//- (MASConstraintMaker *)constraintMaker {
//    MASConstraintMaker *constraintMaker = objc_getAssociatedObject(self, UIViewObjcLayoutMasonryKey);
//    if (!constraintMaker) {
//        constraintMaker = [[MASConstraintMaker alloc] initWithView:self];
//        self.translatesAutoresizingMaskIntoConstraints = NO;
//        objc_setAssociatedObject(self, UIViewObjcLayoutInterfaceKey, constraintMaker, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//    }
//    return constraintMaker;
//}

#pragma mark - Interface

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