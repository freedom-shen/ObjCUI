#import <UIKit/UIKit.h>

#define OCUIControlChildHeaderCreate(__UIViewClassName__) - (__UIViewClassName__ *(^)(BOOL enabled))objc_enabled; \
- (__UIViewClassName__ *(^)(BOOL selected))objc_selected; \
- (__UIViewClassName__ *(^)(BOOL highlighted))objc_highlighted; \
- (__UIViewClassName__ *(^)(UIControlContentVerticalAlignment contentVerticalAlignment))objc_contentVerticalAlignment; \
- (__UIViewClassName__ *(^)(UIControlContentHorizontalAlignment contentHorizontalAlignment))objc_contentHorizontalAlignment; \
- (__UIViewClassName__ *(^)(id target, SEL action, UIControlEvents controlEvents))objc_addTargetActionForControlEvents; \
- (__UIViewClassName__ *(^)(id target, SEL action, UIControlEvents controlEvents))objc_removeTargetActionForControlEvents; \
- (__UIViewClassName__ *(^)(UITouch *touch, UIEvent *event))objc_endTrackingWithTouchWithEvent; \
- (__UIViewClassName__ *(^)(UIEvent *event))objc_cancelTrackingWithEvent; \
- (__UIViewClassName__ *(^)(SEL action, id target, UIEvent *event))objc_sendActionToForEvent; \
- (__UIViewClassName__ *(^)(UIControlEvents controlEvents))objc_sendActionsForControlEvents; \
- (__UIViewClassName__ *(^)(UIControlEvents controlEvents, void(^)(__UIViewClassName__ *control)))objc_actionControl; \


