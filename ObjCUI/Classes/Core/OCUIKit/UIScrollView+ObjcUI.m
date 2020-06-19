//
// Created by freedom on 2020/6/19.
//

#import <objc/runtime.h>
#import "UIScrollView+ObjcUI.h"
#import "OCUIScrollViewDelegateWrapper.h"

static const void *UIScrollViewObjcUIEventKey = &UIScrollViewObjcUIEventKey;

@implementation UIScrollView (ObjcUI)

+ (UIScrollView *(^)())objc_create {
    return ^UIScrollView * {
        UIScrollView *scrollView = [[UIScrollView alloc] init];
        return scrollView;
    };
}

- (UIScrollView *(^)(CGPoint contentOffset))objc_contentOffset {
    return ^UIScrollView *(CGPoint contentOffset) {
        self.contentOffset = contentOffset;
        return self;
    };
}

- (UIScrollView *(^)(CGSize contentSize))objc_contentSize {
    return ^UIScrollView *(CGSize contentSize) {
        self.contentSize = contentSize;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets contentInset))objc_contentInset {
    return ^UIScrollView *(UIEdgeInsets contentInset) {
        self.contentInset = contentInset;
        return self;
    };
}

- (UIScrollView *(^)())objc_adjustedContentInsetDidChange {
    return ^UIScrollView * {
        [self adjustedContentInsetDidChange];
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior))objc_contentInsetAdjustmentBehavior {
    return ^UIScrollView *(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior) {
        self.contentInsetAdjustmentBehavior = contentInsetAdjustmentBehavior;
        return self;
    };
}

- (UIScrollView *(^)(BOOL automaticallyAdjustsScrollIndicatorInsets))objc_automaticallyAdjustsScrollIndicatorInsets {
    return ^UIScrollView *(BOOL automaticallyAdjustsScrollIndicatorInsets) {
        self.automaticallyAdjustsScrollIndicatorInsets = automaticallyAdjustsScrollIndicatorInsets;
        return self;
    };
}

- (UIScrollView *(^)(BOOL directionalLockEnabled))objc_directionalLockEnabled {
    return ^UIScrollView *(BOOL directionalLockEnabled) {
        self.directionalLockEnabled = directionalLockEnabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL bounces))objc_bounces {
    return ^UIScrollView *(BOOL bounces) {
        self.bounces = bounces;
        return self;
    };
}

- (UIScrollView *(^)(BOOL alwaysBounceVertical))objc_alwaysBounceVertical {
    return ^UIScrollView *(BOOL alwaysBounceVertical) {
        self.alwaysBounceVertical = alwaysBounceVertical;
        return self;
    };
}

- (UIScrollView *(^)(BOOL alwaysBounceHorizontal))objc_alwaysBounceHorizontal {
    return ^UIScrollView *(BOOL alwaysBounceHorizontal) {
        self.alwaysBounceHorizontal = alwaysBounceHorizontal;
        return self;
    };
}

- (UIScrollView *(^)(BOOL pagingEnabled))objc_pagingEnabled {
    return ^UIScrollView *(BOOL pagingEnabled) {
        self.pagingEnabled = pagingEnabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL scrollEnabled))objc_scrollEnabled {
    return ^UIScrollView *(BOOL scrollEnabled) {
        self.scrollEnabled = scrollEnabled;
        return self;
    };
}

- (UIScrollView *(^)(BOOL showsVerticalScrollIndicator))objc_showsVerticalScrollIndicator {
    return ^UIScrollView *(BOOL showsVerticalScrollIndicator) {
        self.showsVerticalScrollIndicator = showsVerticalScrollIndicator;
        return self;
    };
}

- (UIScrollView *(^)(BOOL showsHorizontalScrollIndicator))objc_showsHorizontalScrollIndicator {
    return ^UIScrollView *(BOOL showsHorizontalScrollIndicator) {
        self.showsHorizontalScrollIndicator = showsHorizontalScrollIndicator;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))objc_indicatorStyle {
    return ^UIScrollView *(UIScrollViewIndicatorStyle indicatorStyle) {
        self.indicatorStyle = indicatorStyle;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets verticalScrollIndicatorInsets))objc_verticalScrollIndicatorInsets {
    return ^UIScrollView *(UIEdgeInsets verticalScrollIndicatorInsets) {
        self.verticalScrollIndicatorInsets = verticalScrollIndicatorInsets;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets horizontalScrollIndicatorInsets))objc_horizontalScrollIndicatorInsets {
    return ^UIScrollView *(UIEdgeInsets horizontalScrollIndicatorInsets) {
        self.horizontalScrollIndicatorInsets = horizontalScrollIndicatorInsets;
        return self;
    };
}

- (UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))objc_scrollIndicatorInsets {
    return ^UIScrollView *(UIEdgeInsets scrollIndicatorInsets) {
        self.scrollIndicatorInsets = scrollIndicatorInsets;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewDecelerationRate decelerationRate))objc_decelerationRate {
    return ^UIScrollView *(UIScrollViewDecelerationRate decelerationRate) {
        self.decelerationRate = decelerationRate;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))objc_indexDisplayMode {
    return ^UIScrollView *(UIScrollViewIndexDisplayMode indexDisplayMode) {
        self.indexDisplayMode = indexDisplayMode;
        return self;
    };
}

- (UIScrollView *(^)(CGPoint contentOffset, BOOL animated))objc_setContentOffsetAnimated {
    return ^UIScrollView *(CGPoint contentOffset, BOOL animated) {
        [self setContentOffset:contentOffset animated:animated];
        return self;
    };
}

- (UIScrollView *(^)(CGRect rect, BOOL animated))objc_scrollRectToVisibleAnimated {
    return ^UIScrollView *(CGRect rect, BOOL animated) {
        [self scrollRectToVisible:rect animated:animated];
        return self;
    };
}

- (UIScrollView *(^)())objc_flashScrollIndicators {
    return ^UIScrollView * {
        [self flashScrollIndicators];
        return self;
    };
}

- (UIScrollView *(^)(BOOL delaysContentTouches))objc_delaysContentTouches {
    return ^UIScrollView *(BOOL delaysContentTouches) {
        self.decelerationRate = delaysContentTouches;
        return self;
    };
}

- (UIScrollView *(^)(BOOL canCancelContentTouches))objc_canCancelContentTouches {
    return ^UIScrollView *(BOOL canCancelContentTouches) {
        self.canCancelContentTouches = canCancelContentTouches;
        return self;
    };
}

- (UIScrollView *(^)(NSSet<UITouch *> *touches, UIEvent *event, UIView *view))objc_touchesShouldBeginWithEventInContentView {
    return ^UIScrollView *(NSSet<UITouch *> *touches, UIEvent *event, UIView *view) {
        [self touchesShouldBegin:touches withEvent:event inContentView:view];
        return self;
    };
}

- (UIScrollView *(^)(UIView *view))objc_touchesShouldCancelInContentView {
    return ^UIScrollView *(UIView *view) {
        [self touchesShouldCancelInContentView:view];
        return self;
    };
}

- (UIScrollView *(^)(CGFloat minimumZoomScale))objc_minimumZoomScale {
    return ^UIScrollView *(CGFloat minimumZoomScale) {
        self.minimumZoomScale = minimumZoomScale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat maximumZoomScale))objc_maximumZoomScale {
    return ^UIScrollView *(CGFloat maximumZoomScale) {
        self.maximumZoomScale = maximumZoomScale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat zoomScale))objc_zoomScale {
    return ^UIScrollView *(CGFloat zoomScale) {
        self.zoomScale = zoomScale;
        return self;
    };
}

- (UIScrollView *(^)(CGFloat scale, BOOL animated))objc_setZoomScaleAnimate {
    return ^UIScrollView *(CGFloat scale, BOOL animated) {
        [self setZoomScale:scale animated:animated];
        return self;
    };
}

- (UIScrollView *(^)(CGRect rect, BOOL animated))objc_zoomToRectAnimated {
    return ^UIScrollView *(CGRect rect, BOOL animated) {
        [self zoomToRect:rect animated:animated];
        return self;
    };
}

- (UIScrollView *(^)(BOOL bouncesZoom))objc_bouncesZoom {
    return ^UIScrollView *(BOOL bouncesZoom) {
        self.bouncesZoom = YES;
        return self;
    };
}

- (UIScrollView *(^)(BOOL scrollsToTop))objc_scrollsToTop {
    return ^UIScrollView *(BOOL scrollsToTop) {
        self.scrollsToTop = scrollsToTop;
        return self;
    };
}

- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))objc_keyboardDismissMode {
    return ^UIScrollView *(UIScrollViewKeyboardDismissMode keyboardDismissMode) {
        self.keyboardDismissMode = keyboardDismissMode;
        return self;
    };
}

- (UIScrollView *(^)(UIRefreshControl *refreshControl))objc_refreshControl {
    return ^UIScrollView *(UIRefreshControl *refreshControl) {
        self.refreshControl = refreshControl;
        return self;
    };
}

#pragma mark - Delegate

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidScroll {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidScrollKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidZoom {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidZoomKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginDragging {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewWillBeginDraggingKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, CGPoint velocity, CGPoint *targetContentOffset)))objc_scrollViewWillEndDraggingWithVelocity {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *, CGPoint, CGPoint *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewWillEndDraggingKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, BOOL decelerate)))objc_scrollViewDidEndDraggingWillDecelerate {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *, BOOL)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidEndDraggingWillDecelerateKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginDecelerating {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewWillBeginDeceleratingKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidEndDecelerating {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidEndDeceleratingKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidEndScrollingAnimation {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidEndScrollingAnimationKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(UIView(^)(UIScrollView *scrollView)))objc_viewForZoomingInScrollView {
    return ^UIScrollView *(UIView (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIViewForZoomingInScrollViewKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginZooming {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewWillBeginZoomingKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, UIView *view, CGFloat scale)))objc_scrollViewDidEndZoomingWithViewAtScale {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *, UIView *, CGFloat)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidEndZoomingWithViewAtScaleKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(BOOL(^)(UIScrollView *scrollView)))objc_scrollViewShouldScrollToTop {
    return ^UIScrollView *(BOOL (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewShouldScrollToTopKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void (^)(UIScrollView *scrollView)))objc_scrollViewDidScrollToTop {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidScrollToTopKey] = pFunction;
        return self;
    };
}

- (UIScrollView *(^)(void (^)(UIScrollView *scrollView)))objc_scrollViewDidChangeAdjustedContentInset {
    return ^UIScrollView *(void (^pFunction)(UIScrollView *)) {
        self.delegateBlockWarp.delegateMap[OCUIScrollViewDidChangeAdjustedContentInsetKey] = pFunction;
        return self;
    };
}


#pragma mark - Get

- (OCUIScrollViewDelegateWrapper *)delegateBlockWarp {
    OCUIScrollViewDelegateWrapper *delegateWarp = objc_getAssociatedObject(self, UIScrollViewObjcUIEventKey);
    if (!delegateWarp) {
        delegateWarp = [[OCUIScrollViewDelegateWrapper alloc] init];
        self.delegate = delegateWarp;
        objc_setAssociatedObject(self, UIScrollViewObjcUIEventKey, delegateWarp, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWarp;
}

@end