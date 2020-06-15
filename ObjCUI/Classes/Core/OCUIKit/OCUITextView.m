//
// Created by freedom on 2020/6/15.
//

#import "OCUITextView.h"


@interface OCUITextView () <UITextViewDelegate>

@property(nonatomic, strong) UITextView *textView;
@property(nonatomic, strong) NSMutableDictionary <NSString *, id> *delegateBlockMap;
@end

@implementation OCUITextView

+ (OCUITextView *(^)())create {
    return ^OCUITextView * {
        OCUITextView *textView = [[OCUITextView alloc] initWithCustomer:nil];
        return textView;
    };
}

- (OCUITextView *(^)(NSString *text))text {
    return ^OCUITextView *(NSString *text) {
        self.textView.text = text;
        return self;
    };
}

- (OCUITextView *(^)(UIFont *font))font {
    return ^OCUITextView *(UIFont *font) {
        self.textView.font = font;
        return self;
    };
}

- (OCUITextView *(^)(UIColor *textColor))textColor {
    return ^OCUITextView *(UIColor *textColor) {
        self.textView.textColor = textColor;
        return self;
    };
}

- (OCUITextView *(^)(NSTextAlignment textAlignment))textAlignment {
    return ^OCUITextView *(NSTextAlignment textAlignment) {
        self.textView.textAlignment = textAlignment;
        return self;
    };
}

- (OCUITextView *(^)(NSRange selectedRange))selectedRange {
    return ^OCUITextView *(NSRange selectedRange) {
        self.textView.selectedRange = selectedRange;
        return self;
    };
}

- (OCUITextView *(^)(BOOL editable))editable {
    return ^OCUITextView *(BOOL editable) {
        self.textView.editable = editable;
        return self;
    };
}

- (OCUITextView *(^)(BOOL selectable))selectable {
    return ^OCUITextView *(BOOL selectable) {
        self.textView.selectable = selectable;
        return self;
    };
}

- (OCUITextView *(^)(UIDataDetectorTypes dataDetectorTypes))dataDetectorTypes {
    return ^OCUITextView *(UIDataDetectorTypes dataDetectorTypes) {
        self.textView.dataDetectorTypes = dataDetectorTypes;
        return self;
    };
}

- (OCUITextView *(^)(BOOL allowsEditingTextAttributes))allowsEditingTextAttributes {
    return ^OCUITextView *(BOOL allowsEditingTextAttributes) {
        self.textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return self;
    };
}

- (OCUITextView *(^)(NSAttributedString *attributedText))attributedText {
    return ^OCUITextView *(NSAttributedString *attributedText) {
        self.textView.attributedText = attributedText;
        return self;
    };
}

- (OCUITextView *(^)(NSDictionary <NSAttributedStringKey, id> *typingAttributes))typingAttributes {
    return ^OCUITextView *(NSDictionary<NSAttributedStringKey, id> *typingAttributes) {
        self.textView.typingAttributes = typingAttributes;
        return self;
    };
}

- (OCUITextView *(^)(void(^)(UITextView *textView)))maker {
    return ^OCUITextView *(void (^pFunction)(UITextView *textView)) {
        if (pFunction) {
            pFunction(self.textView);
        }
        return self;
    };
}

#pragma mark - Delegate block

- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldBeginEditing {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewShouldBeginEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldEndEditing {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewShouldEndEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidBeginEditing {
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidBeginEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidEndEditing {
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidEndEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL (^)(UITextView *textView, NSRange range, NSString *replaceText)))shouldChangeTextInRangeReplacementText {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSRange, NSString *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldChangeTextInRangeReplacementText));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChange {
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidChange));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChangeSelection {
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidChangeSelection));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithURLInRangeInteraction {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange, UITextItemInteraction)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRangeInteraction));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithTextAttachmentInRangeInteraction {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange, UITextItemInteraction)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRangeInteraction));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange)))shouldInteractWithURLInRange {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRange));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange)))shouldInteractWithTextAttachmentInRange {
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRange));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

#pragma mark - Delegate


- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewShouldBeginEditing));
    BOOL (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        return block(textView);
    }
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewShouldEndEditing));
    BOOL (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        return block(textView);
    }
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewDidBeginEditing));
    void (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        block(textView);
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewDidEndEditing));
    void (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        block(textView);
    }
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    NSString *key = NSStringFromSelector(@selector(shouldChangeTextInRangeReplacementText));
    BOOL (^block)(UITextView *textView, NSString *replaceText) = self.delegateBlockMap[key];
    if (block) {
        block(textView, text);
    }
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewDidChange));
    void (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        block(textView);
    }
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    NSString *key = NSStringFromSelector(@selector(textViewDidChangeSelection));
    void (^block)(UITextView *textView) = self.delegateBlockMap[key];
    if (block) {
        block(textView);
    }

}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRangeInteraction));
    BOOL (^block)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction) = self.delegateBlockMap[key];
    if (block) {
        return block(textView, URL, characterRange, interaction);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRangeInteraction));
    BOOL (^block)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction) = self.delegateBlockMap[key];
    if (block) {
        return block(textView, textAttachment, characterRange, interaction);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange API_DEPRECATED_WITH_REPLACEMENT("textView:shouldInteractWithURL:inRange:forInteractionType:", ios(7.0, 10.0)) {
    NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRange));
    BOOL (^block)(UITextView *textView, NSURL *url, NSRange characterRange) = self.delegateBlockMap[key];
    if (block) {
        return block(textView, URL, characterRange);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange API_DEPRECATED_WITH_REPLACEMENT("textView:shouldInteractWithTextAttachment:inRange:forInteractionType:", ios(7.0, 10.0)) {
    NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRange));
    BOOL (^block)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange) = self.delegateBlockMap[key];
    if (block) {
        return block(textView, textAttachment, characterRange);
    }
    return YES;
}

- (void)_makeDelegate {
    if (!self.textView.delegate) {
        self.textView.delegate = self;
    }
}

#pragma mark - Get

- (UITextView *)textView {
    if (!_textView) {
        _textView = [[UITextView alloc] init];
    }
    return _textView;
}

- (UIView *)bindView {
    return self.textView;
}

- (NSMutableDictionary<NSString *, id> *)delegateBlockMap {
    if (!_delegateBlockMap) {
        _delegateBlockMap = [NSMutableDictionary dictionary];
    }
    return _delegateBlockMap;
}
@end