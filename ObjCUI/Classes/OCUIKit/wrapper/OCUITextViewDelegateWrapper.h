//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>

typedef NSString *OCUITextViewDelegateKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUITextViewDelegateKey OCUITextViewShouldBeginEditingKey = @"OCUITextViewShouldBeginEditingKey";
static const OCUITextViewDelegateKey OCUITextViewShouldEndEditingKey = @"OCUITextViewShouldEndEditingKey";
static const OCUITextViewDelegateKey OCUITextViewDidBeginEditingKey = @"OCUITextViewDidBeginEditingKey";
static const OCUITextViewDelegateKey OCUITextViewDidEndEditingKey = @"OCUITextViewDidEndEditingKey";
static const OCUITextViewDelegateKey OCUITextViewShouldChangeTextInRangeReplacementTextKey = @"OCUITextViewShouldChangeTextInRangeReplacementTextKey";
static const OCUITextViewDelegateKey OCUITextViewDidChangeKey = @"OCUITextViewDidChangeKey";
static const OCUITextViewDelegateKey OCUITextViewDidChangeSelectionKey = @"OCUITextViewDidChangeSelectionKey";
static const OCUITextViewDelegateKey OCUITextViewShouldInteractWithURLInRangeInteractionKey = @"OCUITextViewShouldInteractWithURLInRangeInteractionKey";
static const OCUITextViewDelegateKey OCUITextViewShouldInteractWithTextAttachmentInRangeInteractionKey = @"OCUITextViewShouldInteractWithTextAttachmentInRangeInteractionKey";
static const OCUITextViewDelegateKey OCUITextViewShouldInteractWithURLInRangeKey = @"OCUITextViewShouldInteractWithURLInRangeKey";
static const OCUITextViewDelegateKey OCUITextViewShouldInteractWithTextAttachmentInRangeKey = @"OCUITextViewShouldInteractWithTextAttachmentInRangeKey";


@interface OCUITextViewDelegateWrapper : NSObject <UITextViewDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUITextViewDelegateKey, id> *delegateMap;

@end