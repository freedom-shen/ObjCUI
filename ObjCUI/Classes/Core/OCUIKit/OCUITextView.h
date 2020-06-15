//
// Created by freedom on 2020/6/15.
//

#import <UIKit/UIKit.h>
#import "OCUIContainer.h"


@interface OCUITextView : OCUIContainer

- (OCUITextView *(^)(NSString *text))text;

- (OCUITextView *(^)(UIFont *font))font;

- (OCUITextView *(^)(UIColor *textColor))textColor;

- (OCUITextView *(^)(NSTextAlignment textAlignment))textAlignment;

- (OCUITextView *(^)(NSRange selectedRange))selectedRange;

- (OCUITextView *(^)(BOOL editable))editable;

- (OCUITextView *(^)(BOOL selectable))selectable;

- (OCUITextView *(^)(UIDataDetectorTypes dataDetectorTypes))dataDetectorTypes;

- (OCUITextView *(^)(BOOL allowsEditingTextAttributes))allowsEditingTextAttributes;

- (OCUITextView *(^)(NSAttributedString *attributedText))attributedText;

- (OCUITextView *(^)(NSDictionary <NSAttributedStringKey, id> *typingAttributes))typingAttributes;

- (OCUITextView *(^)(void(^)(UITextView *textView)))maker;

#pragma mark - Delegate

- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldBeginEditing;
- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldEndEditing;
- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidBeginEditing;
- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidEndEditing;
- (OCUITextView *(^)(BOOL (^)(UITextView *textView, NSRange range, NSString *replaceText)))shouldChangeTextInRangeReplacementText;
- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChange;
- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChangeSelection;
- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithURLInRangeInteraction;
- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithTextAttachmentInRangeInteraction;
- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange)))shouldInteractWithURLInRange;
- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange)))shouldInteractWithTextAttachmentInRange;


#pragma mark - Rewrite

+ (OCUITextView *(^)())create;

- (OCUITextView *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUITextView *(^)(double width))width;

- (OCUITextView *(^)(double height))height;

@end