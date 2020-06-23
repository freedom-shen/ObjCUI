
@class MASConstraintMaker;

typedef void(^MASBlockMaker)(MASConstraintMaker *maker);

#define OCUIViewChildHeaderCreate(__UIViewClassName__)  +(__UIViewClassName__ *(^)())objc_create; \
+ (__UIViewClassName__ *(^)(UIView *view, NSInteger tag))objc_createTag; \
+ (__UIViewClassName__ *(^)(CGRect frame))objc_createFrame; \
+ (__UIViewClassName__ *(^)(NSCoder *coder))objc_createCode; \
- (__UIViewClassName__ *(^)(BOOL userInteractionEnabled))objc_userInteractionEnabled; \
- (__UIViewClassName__ *(^)(NSInteger tag))objc_tag; \
- (__UIViewClassName__ *(^)(UISemanticContentAttribute semanticContentAttribute))objc_semanticContentAttribute API_AVAILABLE(ios(9.0)); \
- (__UIViewClassName__ *(^)(CGRect frame))objc_frame; \
- (__UIViewClassName__ *(^)(CGRect bounds))objc_bounds; \
- (__UIViewClassName__ *(^)(CGPoint center))objc_center; \
- (__UIViewClassName__ *(^)(CGAffineTransform transform))objc_transform; \
- (__UIViewClassName__ *(^)(CATransform3D transform3D))objc_transform3D API_AVAILABLE(ios(12.0), tvos(12.0));; \
- (__UIViewClassName__ *(^)(CGFloat contentScaleFactor))objc_contentScaleFactor API_AVAILABLE(ios(4.0)); \
- (__UIViewClassName__ *(^)(BOOL autoresizesSubviews))objc_autoresizesSubviews; \
- (__UIViewClassName__ *(^)(UIViewAutoresizing autoresizingMask))objc_autoresizingMask; \
- (__UIViewClassName__ *(^)())objc_removeFromSuperview; \
- (__UIViewClassName__ *(^)(UIView *view, NSInteger index))objc_insertSubviewAtIndex; \
- (__UIViewClassName__ *(^)(NSInteger index1, NSInteger index2))objc_exchangeSubviewAtIndexWithSubviewAtIndex; \
- (__UIViewClassName__ *(^)(UIView *view))objc_addSubview; \
- (__UIViewClassName__ *(^)(UIView *view, UIView *siblingSubview))objc_insertSubviewBelowSubview; \
- (__UIViewClassName__ *(^)(UIView *view, UIView *siblingSubview))objc_insertSubviewAboveSubview; \
- (__UIViewClassName__ *(^)(UIView *view))objc_bringSubviewToFront; \
- (__UIViewClassName__ *(^)(UIView *view))objc_sendSubviewToBack; \
- (__UIViewClassName__ *(^)())objc_setNeedsLayout; \
- (__UIViewClassName__ *(^)())objc_layoutIfNeeded; \
- (__UIViewClassName__ *(^)())objc_layoutSubviews; \
- (__UIViewClassName__ *(^)(UIEdgeInsets layoutMargins))objc_layoutMargins API_AVAILABLE(ios(8.0)); \
- (__UIViewClassName__ *(^)(NSDirectionalEdgeInsets directionalLayoutMargins))objc_directionalLayoutMargins API_AVAILABLE(ios(11.0), tvos(11.0)); \
- (__UIViewClassName__ *(^)(BOOL preservesSuperviewLayoutMargins))objc_preservesSuperviewLayoutMargins API_AVAILABLE(ios(8.0)); \
- (__UIViewClassName__ *(^)(BOOL insetsLayoutMarginsFromSafeArea))objc_insetsLayoutMarginsFromSafeArea API_AVAILABLE(ios(11.0), tvos(11.0)); \
- (__UIViewClassName__ *(^)())objc_layoutMarginsDidChange API_AVAILABLE(ios(8.0)); \
- (__UIViewClassName__ *(^)(CGRect rect))objc_drawRect; \
- (__UIViewClassName__ *(^)())objc_setNeedsDisplay; \
- (__UIViewClassName__ *(^)(CGRect rect))objc_setNeedsDisplayInRect; \
- (__UIViewClassName__ *(^)(BOOL clipsToBounds))objc_clipsToBounds; \
- (__UIViewClassName__ *(^)(UIColor *backgroundColor))objc_backgroundColor UI_APPEARANCE_SELECTOR; \
- (__UIViewClassName__ *(^)(CGFloat alpha))objc_alpha; \
- (__UIViewClassName__ *(^)(BOOL opaque))objc_opaque; \
- (__UIViewClassName__ *(^)(BOOL clearsContextBeforeDrawing))objc_clearsContextBeforeDrawing; \
- (__UIViewClassName__ *(^)(BOOL hidden))objc_hidden; \
- (__UIViewClassName__ *(^)(UIViewContentMode contentMode))objc_contentMode; \
- (__UIViewClassName__ *(^)(UIView *maskView))objc_maskView; \
- (__UIViewClassName__ *(^)(UIColor *tintColor))objc_tintColor API_AVAILABLE(ios(7.0)); \
- (__UIViewClassName__ *(^)(UIViewTintAdjustmentMode tintAdjustmentMode))objc_tintAdjustmentMode API_AVAILABLE(ios(7.0)); \
- (__UIViewClassName__ *(^)(UIGestureRecognizer *gestureRecognizer))objc_gestureRecognizer; \
- (__UIViewClassName__ *(^)(UIGestureRecognizer *gestureRecognizer))objc_removeGestureRecognizer; \
- (__UIViewClassName__ *(^)(UIView *superView, MASBlockMaker blockMaker))objc_putSuperView; \
- (__UIViewClassName__ *(^)(void(^)(__UIViewClassName__ *view)))objc_maker; \


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


