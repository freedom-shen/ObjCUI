//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>
#import "OCUIViewConvert.h"

@interface UIScrollView (ObjcUI)

- (UIScrollView *(^)(CGPoint contentOffset))objc_contentOffset;

- (UIScrollView *(^)(CGSize contentSize))objc_contentSize;

- (UIScrollView *(^)(UIEdgeInsets contentInset))objc_contentInset;

- (UIScrollView *(^)())objc_adjustedContentInsetDidChange API_AVAILABLE(ios(11.0), tvos(11.0)) NS_REQUIRES_SUPER;

- (UIScrollView *(^)(UIScrollViewContentInsetAdjustmentBehavior contentInsetAdjustmentBehavior))objc_contentInsetAdjustmentBehavior API_AVAILABLE(ios(11.0), tvos(11.0));

- (UIScrollView *(^)(BOOL automaticallyAdjustsScrollIndicatorInsets))objc_automaticallyAdjustsScrollIndicatorInsets API_AVAILABLE(ios(13.0), tvos(13.0));

- (UIScrollView *(^)(BOOL directionalLockEnabled))objc_directionalLockEnabled;

- (UIScrollView *(^)(BOOL bounces))objc_bounces;

- (UIScrollView *(^)(BOOL alwaysBounceVertical))objc_alwaysBounceVertical;

- (UIScrollView *(^)(BOOL alwaysBounceHorizontal))objc_alwaysBounceHorizontal;

- (UIScrollView *(^)(BOOL pagingEnabled))objc_pagingEnabled API_UNAVAILABLE(tvos);

- (UIScrollView *(^)(BOOL scrollEnabled))objc_scrollEnabled;

- (UIScrollView *(^)(BOOL showsVerticalScrollIndicator))objc_showsVerticalScrollIndicator;

- (UIScrollView *(^)(BOOL showsHorizontalScrollIndicator))objc_showsHorizontalScrollIndicator;

- (UIScrollView *(^)(UIScrollViewIndicatorStyle indicatorStyle))objc_indicatorStyle;

- (UIScrollView *(^)(UIEdgeInsets verticalScrollIndicatorInsets))objc_verticalScrollIndicatorInsets API_AVAILABLE(ios(11.1), tvos(11.1));

- (UIScrollView *(^)(UIEdgeInsets horizontalScrollIndicatorInsets))objc_horizontalScrollIndicatorInsets API_AVAILABLE(ios(11.1), tvos(11.1));

- (UIScrollView *(^)(UIEdgeInsets scrollIndicatorInsets))objc_scrollIndicatorInsets;

- (UIScrollView *(^)(UIScrollViewDecelerationRate decelerationRate))objc_decelerationRate API_AVAILABLE(ios(3.0));

- (UIScrollView *(^)(UIScrollViewIndexDisplayMode indexDisplayMode))objc_indexDisplayMode API_AVAILABLE(tvos(10.2));

- (UIScrollView *(^)(CGPoint contentOffset, BOOL animated))objc_setContentOffsetAnimated;

- (UIScrollView *(^)(CGRect rect, BOOL animated))objc_scrollRectToVisibleAnimated;

- (UIScrollView *(^)())objc_flashScrollIndicators;

- (UIScrollView *(^)(BOOL delaysContentTouches))objc_delaysContentTouches;

- (UIScrollView *(^)(BOOL canCancelContentTouches))objc_canCancelContentTouches;

- (UIScrollView *(^)(NSSet<UITouch *> *touches, UIEvent *event, UIView *view))objc_touchesShouldBeginWithEventInContentView;

- (UIScrollView *(^)(UIView *view))objc_touchesShouldCancelInContentView;

- (UIScrollView *(^)(CGFloat minimumZoomScale))objc_minimumZoomScale;

- (UIScrollView *(^)(CGFloat maximumZoomScale))objc_maximumZoomScale;

- (UIScrollView *(^)(CGFloat zoomScale))objc_zoomScale API_AVAILABLE(ios(3.0));

- (UIScrollView *(^)(CGFloat scale, BOOL animated))objc_setZoomScaleAnimate API_AVAILABLE(ios(3.0));

- (UIScrollView *(^)(CGRect rect, BOOL animated))objc_zoomToRectAnimated API_AVAILABLE(ios(3.0));

- (UIScrollView *(^)(BOOL bouncesZoom))objc_bouncesZoom;

- (UIScrollView *(^)(BOOL scrollsToTop))objc_scrollsToTop API_UNAVAILABLE(tvos);

- (UIScrollView *(^)(UIScrollViewKeyboardDismissMode keyboardDismissMode))objc_keyboardDismissMode API_AVAILABLE(ios(7.0));

- (UIScrollView *(^)(UIRefreshControl *refreshControl))objc_refreshControl API_AVAILABLE(ios(10.0)) API_UNAVAILABLE(tvos);

#pragma mark - Delegate

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidScroll;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidZoom API_AVAILABLE(ios(3.2));

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginDragging;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, CGPoint velocity, CGPoint *targetContentOffset)))objc_scrollViewWillEndDraggingWithVelocity API_AVAILABLE(ios(5.0));

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, BOOL decelerate)))objc_scrollViewDidEndDraggingWillDecelerate;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginDecelerating;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidEndDecelerating;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewDidEndScrollingAnimation;

- (UIScrollView *(^)(UIView *(^)(UIScrollView *scrollView)))objc_viewForZoomingInScrollView;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView)))objc_scrollViewWillBeginZooming;

- (UIScrollView *(^)(void(^)(UIScrollView *scrollView, UIView *view, CGFloat scale)))objc_scrollViewDidEndZoomingWithViewAtScale;

- (UIScrollView *(^)(BOOL(^)(UIScrollView *scrollView)))objc_scrollViewShouldScrollToTop;

- (UIScrollView *(^)(void (^)(UIScrollView *scrollView)))objc_scrollViewDidScrollToTop;

- (UIScrollView *(^)(void (^)(UIScrollView *scrollView)))objc_scrollViewDidChangeAdjustedContentInset  API_AVAILABLE(ios(11.0), tvos(11.0));

OCUIViewChildHeaderCreate(UIScrollView)

@end