//
// Created by freedom on 2020/6/20.
//

#import <Masonry/Masonry.h>
#import "UIView+ObjcUI.h"


@implementation UIView (ObjcUI)

+ (UIView *(^)())objc_create {
    return ^UIView * {
        UIView *view = [[UIView alloc] init];
        return view;
    };
}

+ (UIView *(^)(UIView *view, NSInteger tag))objc_createTag {
    return ^UIView *(UIView *view, NSInteger tag) {
        return [view viewWithTag:tag];
    };
}


+ (UIView *(^)(CGRect frame))objc_createFrame {
    return ^UIView *(CGRect frame) {
        UIView *view = [[UIView alloc] initWithFrame:frame];
        return view;
    };
}

+ (UIView *(^)(NSCoder *coder))objc_createCode {
    return ^UIView *(NSCoder *coder) {
        UIView *view = [[UIView alloc] initWithCoder:coder];
        return view;
    };
}

- (UIView *(^)(BOOL userInteractionEnabled))objc_userInteractionEnabled {
    return ^UIView *(BOOL userInteractionEnabled) {
        self.userInteractionEnabled = userInteractionEnabled;
        return self;
    };
}

- (UIView *(^)(NSInteger tag))objc_tag {
    return ^UIView *(NSInteger tag) {
        self.tag = tag;
        return self;
    };
}

- (UIView *(^)(UISemanticContentAttribute semanticContentAttribute))objc_semanticContentAttribute {
    return ^UIView *(UISemanticContentAttribute semanticContentAttribute) {
        self.semanticContentAttribute = semanticContentAttribute;
        return self;
    };
}

- (UIView *(^)(CGRect frame))objc_frame {
    return ^UIView *(CGRect frame) {
        self.frame = frame;
        return self;
    };
}

- (UIView *(^)(CGRect bounds))objc_bounds {
    return ^UIView *(CGRect bounds) {
        self.bounds = bounds;
        return self;
    };
}

- (UIView *(^)(CGPoint center))objc_center {
    return ^UIView *(CGPoint center) {
        self.center = center;
        return self;
    };
}

- (UIView *(^)(CGAffineTransform transform))objc_transform {
    return ^UIView *(CGAffineTransform transform) {
        self.transform = transform;
        return self;
    };
}

- (UIView *(^)(CATransform3D transform3D))objc_transform3D {
    return ^UIView *(CATransform3D transform3D) {
        self.transform3D = transform3D;
        return self;
    };
}

- (UIView *(^)(CGFloat contentScaleFactor))objc_contentScaleFactor {
    return ^UIView *(CGFloat contentScaleFactor) {
        self.contentScaleFactor = contentScaleFactor;
        return self;
    };
}

- (UIView *(^)(BOOL autoresizesSubviews))objc_autoresizesSubviews {
    return ^UIView *(BOOL autoresizesSubviews) {
        self.autoresizesSubviews = autoresizesSubviews;
        return self;
    };
}

- (UIView *(^)(UIViewAutoresizing autoresizingMask))objc_autoresizingMask {
    return ^UIView *(UIViewAutoresizing autoresizingMask) {
        self.autoresizingMask = autoresizingMask;
        return self;
    };
}

- (UIView *(^)())objc_removeFromSuperview {
    return ^UIView * {
        [self removeFromSuperview];
        return self;
    };
}

- (UIView *(^)(UIView *view, NSInteger index))objc_insertSubviewAtIndex {
    return ^UIView *(UIView *view, NSInteger index) {
        [self insertSubview:view atIndex:index];
        return self;
    };
}

- (UIView *(^)(NSInteger index1, NSInteger index2))objc_exchangeSubviewAtIndexWithSubviewAtIndex {
    return ^UIView *(NSInteger index1, NSInteger index2) {
        [self exchangeSubviewAtIndex:index1 withSubviewAtIndex:index2];
        return self;
    };
}

- (UIView *(^)(UIView *view))objc_addSubview {
    return ^UIView *(UIView *view) {
        [self addSubview:view];
        return self;
    };
}

- (UIView *(^)(UIView *view, UIView *siblingSubview))objc_insertSubviewBelowSubview {
    return ^UIView *(UIView *view, UIView *siblingSubview) {
        [self insertSubview:view belowSubview:siblingSubview];
        return self;
    };
}

- (UIView *(^)(UIView *view, UIView *siblingSubview))objc_insertSubviewAboveSubview {
    return ^UIView *(UIView *view, UIView *siblingSubview) {
        [self insertSubview:view aboveSubview:siblingSubview];
        return self;
    };
}

- (UIView *(^)(UIView *view))objc_bringSubviewToFront {
    return ^UIView *(UIView *view) {
        [self bringSubviewToFront:view];
        return self;
    };
}

- (UIView *(^)(UIView *view))objc_sendSubviewToBack {
    return ^UIView *(UIView *view) {
        [self sendSubviewToBack:view];
        return self;
    };
}


- (UIView *(^)())objc_setNeedsLayout {
    return ^UIView * {
        [self setNeedsLayout];
        return self;
    };
}

- (UIView *(^)())objc_layoutIfNeeded {
    return ^UIView * {
        [self layoutIfNeeded];
        return self;
    };
}

- (UIView *(^)())objc_layoutSubviews {
    return ^UIView * {
        [self layoutSubviews];
        return self;
    };
}

- (UIView *(^)(UIEdgeInsets layoutMargins))objc_layoutMargins {
    return ^UIView *(UIEdgeInsets layoutMargins) {
        self.layoutMargins = layoutMargins;
        return self;
    };
}

- (UIView *(^)(NSDirectionalEdgeInsets directionalLayoutMargins))objc_directionalLayoutMargins {
    return ^UIView *(NSDirectionalEdgeInsets directionalLayoutMargins) {
        self.directionalLayoutMargins = directionalLayoutMargins;
        return self;
    };
}

- (UIView *(^)(BOOL preservesSuperviewLayoutMargins))objc_preservesSuperviewLayoutMargins {
    return ^UIView *(BOOL preservesSuperviewLayoutMargins) {
        self.preservesSuperviewLayoutMargins = preservesSuperviewLayoutMargins;
        return self;
    };
}

- (UIView *(^)(BOOL insetsLayoutMarginsFromSafeArea))objc_insetsLayoutMarginsFromSafeArea {
    return ^UIView *(BOOL insetsLayoutMarginsFromSafeArea) {
        self.insetsLayoutMarginsFromSafeArea = insetsLayoutMarginsFromSafeArea;
        return self;
    };
}

- (UIView *(^)())objc_layoutMarginsDidChange {
    return ^UIView *() {
        [self layoutMarginsDidChange];
        return self;
    };
}

- (UIView *(^)(CGRect rect))objc_drawRect {
    return ^UIView *(CGRect rect) {
        [self drawRect:rect];
        return self;
    };
}

- (UIView *(^)())objc_setNeedsDisplay {
    return ^UIView * {
        [self setNeedsDisplay];
        return self;
    };
}

- (UIView *(^)(CGRect rect))objc_setNeedsDisplayInRect {
    return ^UIView *(CGRect rect) {
        [self setNeedsDisplayInRect:rect];
        return self;
    };
}

- (UIView *(^)(BOOL clipsToBounds))objc_clipsToBounds {
    return ^UIView *(BOOL clipsToBounds) {
        self.clipsToBounds = clipsToBounds;
        return self;
    };
}

- (UIView *(^)(UIColor *backgroundColor))objc_backgroundColor {
    return ^UIView *(UIColor *backgroundColor) {
        self.backgroundColor = backgroundColor;
        return self;
    };
}

- (UIView *(^)(CGFloat alpha))objc_alpha {
    return ^UIView *(CGFloat alpha) {
        self.alpha = alpha;
        return self;
    };
}

- (UIView *(^)(BOOL opaque))objc_opaque {
    return ^UIView *(BOOL opaque) {
        self.opaque = opaque;
        return self;
    };
}

- (UIView *(^)(BOOL clearsContextBeforeDrawing))objc_clearsContextBeforeDrawing {
    return ^UIView *(BOOL clearsContextBeforeDrawing) {
        self.clearsContextBeforeDrawing = clearsContextBeforeDrawing;
        return self;
    };
}

- (UIView *(^)(BOOL hidden))objc_hidden {
    return ^UIView *(BOOL hidden) {
        self.hidden = hidden;
        return self;
    };
}

- (UIView *(^)(UIViewContentMode contentMode))objc_contentMode {
    return ^UIView *(UIViewContentMode contentMode) {
        self.contentMode = contentMode;
        return self;
    };
}

- (UIView *(^)(UIView *maskView))objc_maskView {
    return ^UIView *(UIView *maskView) {
        self.maskView = maskView;
        return self;
    };
}

- (UIView *(^)(UIColor *tintColor))objc_tintColor {
    return ^UIView *(UIColor *tintColor) {
        self.tintColor = tintColor;
        return self;
    };
}

- (UIView *(^)(UIViewTintAdjustmentMode tintAdjustmentMode))objc_tintAdjustmentMode {
    return ^UIView *(UIViewTintAdjustmentMode tintAdjustmentMode) {
        self.tintAdjustmentMode = tintAdjustmentMode;
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *gestureRecognizer))objc_gestureRecognizer {
    return ^UIView *(UIGestureRecognizer *gestureRecognizer) {
        [self addGestureRecognizer:gestureRecognizer];
        return self;
    };
}

- (UIView *(^)(UIGestureRecognizer *gestureRecognizer))objc_removeGestureRecognizer {
    return ^UIView *(UIGestureRecognizer *gestureRecognizer) {
        [self removeGestureRecognizer:gestureRecognizer];
        return self;
    };
}

- (UIView *(^)(void(^)(UIView *view)))objc_maker {
    return ^UIView *(void (^pFunction)(UIView *)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

- (UIView *(^)(UIView *superView, MASBlockMaker blockMaker))objc_putSuperView {
    return ^UIView *(UIView *superView,MASBlockMaker blockMaker) {
        [superView addSubview:self];
        [self mas_makeConstraints:blockMaker];
        return self;
    };
}

@end