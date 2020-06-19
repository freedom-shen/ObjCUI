//
// Created by freedom on 2020/6/19.
//

#import <objc/runtime.h>
#import "OCUITextViewDelegateWrapper.h"

static const void *UITextViewObjcUIEventKey = &UITextViewObjcUIEventKey;

@implementation UITextView (ObjcUI)

+ (UITextView *(^)())objc_create {
    return ^UITextView * {
        UITextView *textView = [[UITextView alloc] init];
        return textView;
    };
}

- (UITextView *(^)(NSString *text))objc_text {
    return ^UITextView *(NSString *text) {
        self.text = text;
        return self;
    };
}

- (UITextView *(^)(UIFont *font))objc_font {
    return ^UITextView *(UIFont *font) {
        self.font = font;
        return self;
    };
}

- (UITextView *(^)(UIColor *textColor))objc_textColor {
    return ^UITextView *(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

- (UITextView *(^)(NSTextAlignment textAlignment))objc_textAlignment {
    return ^UITextView *(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

- (UITextView *(^)(NSRange selectedRange))objc_selectedRange {
    return ^UITextView *(NSRange selectedRange) {
        self.selectedRange = selectedRange;
        return self;
    };
}

- (UITextView *(^)(BOOL editable))objc_editable {
    return ^UITextView *(BOOL editable) {
        self.editable = editable;
        return self;
    };
}

- (UITextView *(^)(BOOL selectable))objc_selectable {
    return ^UITextView *(BOOL selectable) {
        self.selectable = selectable;
        return self;
    };
}

- (UITextView *(^)(UIDataDetectorTypes dataDetectorTypes))objc_dataDetectorTypes {
    return ^UITextView *(UIDataDetectorTypes dataDetectorTypes) {
        self.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

- (UITextView *(^)(BOOL allowsEditingTextAttributes))objc_allowsEditingTextAttributes {
    return ^UITextView *(BOOL allowsEditingTextAttributes) {
        self.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (UITextView *(^)(NSAttributedString *attributedText))objc_attributedText {
    return ^UITextView *(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextView *(^)(NSDictionary <NSAttributedStringKey, id> *typingAttributes))objc_typingAttributes {
    return ^UITextView *(NSDictionary<NSAttributedStringKey, id> *typingAttributes) {
        self.typingAttributes = typingAttributes;
        return self;
    };
}

- (UITextView *(^)(void(^)(UITextView *textView)))objc_maker {
    return ^UITextView *(void (^pFunction)(UITextView *textView)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

#pragma mark - Delegate block

- (UITextView *(^)(BOOL(^)(UITextView *textView)))objc_textViewShouldBeginEditing {
    return ^UITextView *(BOOL (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldBeginEditingKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL(^)(UITextView *textView)))objc_textViewShouldEndEditing {
    return ^UITextView *(BOOL (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldEndEditingKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidBeginEditing {
    return ^UITextView *(void (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewDidBeginEditingKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidEndEditing {
    return ^UITextView *(void (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewDidEndEditingKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL (^)(UITextView *textView, NSRange range, NSString *replaceText)))objc_shouldChangeTextInRangeReplacementText {
    return ^UITextView *(BOOL (^pFunction)(UITextView *, NSRange, NSString *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldChangeTextInRangeReplacementTextKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidChange {
    return ^UITextView *(void (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewDidChangeKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(void (^)(UITextView *textView)))objc_textViewDidChangeSelection {
    return ^UITextView *(void (^pFunction)(UITextView *)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewDidChangeSelectionKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction)))objc_shouldInteractWithURLInRangeInteraction {
    return ^UITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange, UITextItemInteraction)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldInteractWithURLInRangeInteractionKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction)))objc_shouldInteractWithTextAttachmentInRangeInteraction {
    return ^UITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange, UITextItemInteraction)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldInteractWithTextAttachmentInRangeInteractionKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange)))objc_shouldInteractWithURLInRange {
    return ^UITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldInteractWithURLInRangeKey] = pFunction;
        return self;
    };
}

- (UITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange)))objc_shouldInteractWithTextAttachmentInRange {
    return ^UITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange)) {
        self.delegateBlockWarp.delegateMap[OCUITextViewShouldInteractWithTextAttachmentInRangeKey] = pFunction;
        return self;
    };
}


#pragma mark - Get

- (OCUITextViewDelegateWrapper *)delegateBlockWarp {
    OCUITextViewDelegateWrapper *delegateWarp = objc_getAssociatedObject(self, UITextViewObjcUIEventKey);
    if (!delegateWarp) {
        delegateWarp = [[OCUITextViewDelegateWrapper alloc] init];
        self.delegate = delegateWarp;
        objc_setAssociatedObject(self, UITextViewObjcUIEventKey, delegateWarp, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWarp;
}

@end