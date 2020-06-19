//
// Created by freedom on 2020/6/19.
//

#import "OCUIScrollViewDelegateWrapper.h"


@implementation OCUIScrollViewDelegateWrapper

@synthesize delegateMap = _delegateMap;

#pragma mark - Table View


- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidScrollKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewDidZoom:(UIScrollView *)scrollView API_AVAILABLE(ios(3.2)) {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidZoomKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewWillBeginDraggingKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewWillEndDragging:(UIScrollView *)scrollView withVelocity:(CGPoint)velocity targetContentOffset:(inout CGPoint *)targetContentOffset API_AVAILABLE(ios(5.0)) {
    void (^block)(UIScrollView *scrollView, CGPoint velocity, CGPoint *targetContentOffset) = self.delegateMap[OCUIScrollViewWillEndDraggingKey];
    if (block) {
        block(scrollView, velocity, targetContentOffset);
    }
}

- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate {
    void (^block)(UIScrollView *scrollView, BOOL decelerate) = self.delegateMap[OCUIScrollViewDidEndDraggingWillDecelerateKey];
    if (block) {
        block(scrollView, decelerate);
    }
}

- (void)scrollViewWillBeginDecelerating:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewWillBeginDeceleratingKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidEndDeceleratingKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewDidEndScrollingAnimation:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidEndScrollingAnimationKey];
    if (block) {
        block(scrollView);
    }
}

- (nullable UIView *)viewForZoomingInScrollView:(UIScrollView *)scrollView {
    UIView *(^block)(UIScrollView *scrollView) = self.delegateMap[OCUIViewForZoomingInScrollViewKey];
    if (block) {
        block(scrollView);
    }
    return nil;
}

- (void)scrollViewWillBeginZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view API_AVAILABLE(ios(3.2)) {
    void (^block)(UIScrollView *scrollView, UIView *view) = self.delegateMap[OCUIScrollViewWillBeginZoomingKey];
    if (block) {
        block(scrollView, view);
    }
}

- (void)scrollViewDidEndZooming:(UIScrollView *)scrollView withView:(nullable UIView *)view atScale:(CGFloat)scale {
    void (^block)(UIScrollView *scrollView, UIView *view, CGFloat scale) = self.delegateMap[OCUIScrollViewDidEndZoomingWithViewAtScaleKey];
    if (block) {
        block(scrollView, view, scale);
    }
}

- (BOOL)scrollViewShouldScrollToTop:(UIScrollView *)scrollView {
    BOOL (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewShouldScrollToTopKey];
    if (block) {
        block(scrollView);
    }
    return YES;
}

- (void)scrollViewDidScrollToTop:(UIScrollView *)scrollView {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidScrollToTopKey];
    if (block) {
        block(scrollView);
    }
}

- (void)scrollViewDidChangeAdjustedContentInset:(UIScrollView *)scrollView API_AVAILABLE(ios(11.0), tvos(11.0)) {
    void (^block)(UIScrollView *scrollView) = self.delegateMap[OCUIScrollViewDidChangeAdjustedContentInsetKey];
    if (block) {
        block(scrollView);
    }
}

#pragma mark - Get

- (NSMutableDictionary<OCUIScrollViewDelegateKey, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end