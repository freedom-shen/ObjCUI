//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>

typedef NSString *OCUIScrollViewDelegateKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUIScrollViewDelegateKey OCUIScrollViewDidScrollKey = @"OCUIScrollViewDidScrollKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidZoomKey = @"OCUIScrollViewDidZoomKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewWillBeginDraggingKey = @"OCUIScrollViewWillBeginDraggingKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewWillEndDraggingKey = @"OCUIScrollViewWillEndDraggingKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidEndDraggingWillDecelerateKey = @"OCUIScrollViewDidEndDraggingWillDecelerateKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewWillBeginDeceleratingKey = @"OCUIScrollViewWillBeginDeceleratingKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidEndDeceleratingKey = @"OCUIScrollViewDidEndDeceleratingKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidEndScrollingAnimationKey = @"OCUIScrollViewDidEndScrollingAnimationKey";
static const OCUIScrollViewDelegateKey OCUIViewForZoomingInScrollViewKey = @"OCUIViewForZoomingInScrollViewKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewWillBeginZoomingKey = @"OCUIScrollViewWillBeginZoomingKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidEndZoomingWithViewAtScaleKey = @"OCUIScrollViewDidEndZoomingWithViewAtScaleKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewShouldScrollToTopKey = @"OCUIScrollViewShouldScrollToTopKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidScrollToTopKey = @"OCUIScrollViewDidScrollToTopKey";
static const OCUIScrollViewDelegateKey OCUIScrollViewDidChangeAdjustedContentInsetKey = @"OCUIScrollViewDidChangeAdjustedContentInsetKey";


@interface OCUIScrollViewDelegateWrapper : NSObject <UIScrollViewDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUIScrollViewDelegateKey, id> *delegateMap;

@end