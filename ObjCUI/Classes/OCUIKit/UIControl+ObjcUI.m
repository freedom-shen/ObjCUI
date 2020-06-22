//
// Created by freedom on 2020/6/21.
//

#import <objc/runtime.h>
#import "UIControl+ObjcUI.h"
#import "OCUIControlWrapper.h"

static const void *UIControlObjcUIEventKey = &UIControlObjcUIEventKey;

@implementation UIControl (ObjcUI)

+ (UIControl *(^)())objc_create {
    return ^UIControl * {
        UIControl *button = [[UIControl alloc] init];
        return button;
    };
}

- (UIControl *(^)(BOOL enabled))objc_enabled {
    return ^UIControl *(BOOL enabled) {
        self.enabled = enabled;
        return self;
    };
}

- (UIControl *(^)(BOOL selected))objc_selected {
    return ^UIControl *(BOOL selected) {
        self.selected = selected;
        return self;
    };
}

- (UIControl *(^)(BOOL highlighted))objc_highlighted {
    return ^UIControl *(BOOL highlighted) {
        self.highlighted = highlighted;
        return self;
    };
}

- (UIControl *(^)(UIControlContentVerticalAlignment contentVerticalAlignment))objc_contentVerticalAlignment {
    return ^UIControl *(UIControlContentVerticalAlignment contentVerticalAlignment) {
        self.contentVerticalAlignment = contentVerticalAlignment;
        return self;
    };
}

- (UIControl *(^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))objc_contentHorizontalAlignment {
    return ^UIControl *(UIControlContentHorizontalAlignment contentHorizontalAlignment) {
        self.contentHorizontalAlignment = contentHorizontalAlignment;
        return self;
    };
}

- (UIControl *(^)(id target, SEL action, UIControlEvents controlEvents))objc_addTargetActionForControlEvents {
    return ^UIControl *(id target, SEL action, UIControlEvents controlEvents) {
        [self addTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}



- (UIControl *(^)(id target, SEL action, UIControlEvents controlEvents))objc_removeTargetActionForControlEvents {
    return ^UIControl *(id target, SEL action, UIControlEvents controlEvents) {
        [self removeTarget:target action:action forControlEvents:controlEvents];
        return self;
    };
}

- (UIControl *(^)(UITouch *touch, UIEvent *event))objc_endTrackingWithTouchWithEvent {
    return ^UIControl *(UITouch *touch, UIEvent *event) {
        [self endTrackingWithTouch:touch withEvent:event];
        return self;
    };
}

- (UIControl *(^)(UIEvent *event))objc_cancelTrackingWithEvent {
    return ^UIControl *(UIEvent *event) {
        [self cancelTrackingWithEvent:event];
        return self;
    };
}

- (UIControl *(^)(SEL action, id target, UIEvent *event))objc_sendActionToForEvent {
    return ^UIControl *(SEL action, id target, UIEvent *event) {
        [self sendAction:action to:target forEvent:event];
        return self;
    };
}

- (UIControl *(^)(UIControlEvents controlEvents))objc_sendActionsForControlEvents {
    return ^UIControl *(UIControlEvents controlEvents) {
        [self sendActionsForControlEvents:controlEvents];
        return self;
    };
}

- (UIControl *(^)(BOOL))objc_clearsContextBeforeDrawing {
    return ^UIControl *(BOOL clearsContextBeforeDrawing) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (UIControl *(^)(UIControlEvents controlEvents, void(^)(UIControl *control)))objc_actionControl {
    return ^UIControl *(UIControlEvents controlEvents, void (^pFunction)(UIControl *)) {
        if (!self.eventMap[@(controlEvents)]) {
            self.eventMap[@(controlEvents)] = [[OCUIControlWrapper alloc] initWithHandler:pFunction];
        }
        [self addTarget:self.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return self;
    };
}

- (NSMutableDictionary *)eventMap {
    NSMutableDictionary *eventMap = objc_getAssociatedObject(self, UIControlObjcUIEventKey);
    if (!eventMap) {
        eventMap = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, UIControlObjcUIEventKey, eventMap, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return eventMap;
}

@end