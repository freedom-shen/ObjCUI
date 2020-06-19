//
// Created by freedom on 2020/6/19.
//

#import <UIKit/UIKit.h>

@interface UITextView (ObjcUI)

- (UITextView *(^)(NSString *text))objc_text;

- (UITextView *(^)(UIFont *font))objc_font;

- (UITextView *(^)(UIColor *textColor))objc_textColor;

- (UITextView *(^)(NSTextAlignment textAlignment))objc_textAlignment;

- (UITextView *(^)(NSRange selectedRange))objc_selectedRange;

- (UITextView *(^)(BOOL editable))objc_editable;

- (UITextView *(^)(BOOL selectable))objc_selectable;

- (UITextView *(^)(UIDataDetectorTypes dataDetectorTypes))objc_dataDetectorTypes;

- (UITextView *(^)(BOOL allowsEditingTextAttributes))objc_allowsEditingTextAttributes;

- (UITextView *(^)(NSAttributedString *attributedText))objc_attributedText;

- (UITextView *(^)(NSDictionary <NSAttributedStringKey, id> *typingAttributes))objc_typingAttributes;

- (UITextView *(^)(void(^)(UITextView *textView)))objc_maker;

#pragma mark - Delegate

- (UITextView *(^)(BOOL(^)(UITextView *textView)))objc_textViewShouldBeginEditing;
- (UITextView *(^)(BOOL(^)(UITextView *textView)))objc_textViewShouldEndEditing;
- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidBeginEditing;
- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidEndEditing;
- (UITextView *(^)(BOOL (^)(UITextView *textView, NSRange range, NSString *replaceText)))objc_shouldChangeTextInRangeReplacementText;
- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidChange;
- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidChangeSelection;
- (UITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction)))objc_shouldInteractWithURLInRangeInteraction  API_AVAILABLE(ios(10.0));
- (UITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction)))objc_shouldInteractWithTextAttachmentInRangeInteraction API_DEPRECATED_WITH_REPLACEMENT("objc_shouldInteractWithURLInRangeInteraction", ios(7.0, 10.0));;
- (UITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange)))objc_shouldInteractWithURLInRange API_AVAILABLE(ios(10.0));
- (UITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange)))objc_shouldInteractWithTextAttachmentInRange API_DEPRECATED_WITH_REPLACEMENT("objc_shouldInteractWithTextAttachmentInRangeInteraction", ios(7.0, 10.0));


@end