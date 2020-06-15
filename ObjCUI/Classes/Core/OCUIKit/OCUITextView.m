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
    @WeakSelf(self);
    return ^OCUITextView *(NSString *text) {
        @StrongSelf(self);
        strongSelf.textView.text = text;
        return strongSelf;
    };
}

- (OCUITextView *(^)(UIFont *font))font {
    @WeakSelf(self);
    return ^OCUITextView *(UIFont *font) {
        @StrongSelf(self);
        strongSelf.textView.font = font;
        return strongSelf;
    };
}

- (OCUITextView *(^)(UIColor *textColor))textColor {
    @WeakSelf(self);
    return ^OCUITextView *(UIColor *textColor) {
        @StrongSelf(self);
        strongSelf.textView.textColor = textColor;
        return strongSelf;
    };
}

- (OCUITextView *(^)(NSTextAlignment textAlignment))textAlignment {
    @WeakSelf(self);
    return ^OCUITextView *(NSTextAlignment textAlignment) {
        @StrongSelf(self);
        strongSelf.textView.textAlignment = textAlignment;
        return strongSelf;
    };
}

- (OCUITextView *(^)(NSRange selectedRange))selectedRange {
    @WeakSelf(self);
    return ^OCUITextView *(NSRange selectedRange) {
        @StrongSelf(self);
        strongSelf.textView.selectedRange = selectedRange;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL editable))editable {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL editable) {
        @StrongSelf(self);
        strongSelf.textView.editable = editable;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL selectable))selectable {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL selectable) {
        @StrongSelf(self);
        strongSelf.textView.selectable = selectable;
        return strongSelf;
    };
}

- (OCUITextView *(^)(UIDataDetectorTypes dataDetectorTypes))dataDetectorTypes {
    @WeakSelf(self);
    return ^OCUITextView *(UIDataDetectorTypes dataDetectorTypes) {
        @StrongSelf(self);
        strongSelf.textView.dataDetectorTypes = dataDetectorTypes;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL allowsEditingTextAttributes))allowsEditingTextAttributes {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL allowsEditingTextAttributes) {
        @StrongSelf(self);
        strongSelf.textView.allowsEditingTextAttributes = allowsEditingTextAttributes;
        return strongSelf;
    };
}

- (OCUITextView *(^)(NSAttributedString *attributedText))attributedText {
    @WeakSelf(self);
    return ^OCUITextView *(NSAttributedString *attributedText) {
        @StrongSelf(self);
        strongSelf.textView.attributedText = attributedText;
        return strongSelf;
    };
}

- (OCUITextView *(^)(NSDictionary <NSAttributedStringKey, id> *typingAttributes))typingAttributes {
    @WeakSelf(self);
    return ^OCUITextView *(NSDictionary<NSAttributedStringKey, id> *typingAttributes) {
        @StrongSelf(self);
        strongSelf.textView.typingAttributes = typingAttributes;
        return strongSelf;
    };
}

- (OCUITextView *(^)(void(^)(UITextView *textView)))maker {
    @WeakSelf(self);
    return ^OCUITextView *(void (^pFunction)(UITextView *textView)) {
        @StrongSelf(self);
        if (pFunction) {
            pFunction(strongSelf.textView);
        }
        return strongSelf;
    };
}

#pragma mark - Delegate block

- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldBeginEditing {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewShouldBeginEditing));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView)))textViewShouldEndEditing {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewShouldEndEditing));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidBeginEditing {
    @WeakSelf(self);
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidBeginEditing));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidEndEditing {
    @WeakSelf(self);
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidEndEditing));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL (^)(UITextView *textView, NSRange range, NSString *replaceText)))shouldChangeTextInRangeReplacementText {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSRange, NSString *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldChangeTextInRangeReplacementText));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChange {
    @WeakSelf(self);
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidChange));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(void (^)(UITextView *textView)))textViewDidChangeSelection {
    @WeakSelf(self);
    return ^OCUITextView *(void (^pFunction)(UITextView *)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textViewDidChangeSelection));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithURLInRangeInteraction {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange, UITextItemInteraction)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRangeInteraction));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction)))shouldInteractWithTextAttachmentInRangeInteraction {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange, UITextItemInteraction)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRangeInteraction));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSURL *url, NSRange characterRange)))shouldInteractWithURLInRange {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSURL *, NSRange)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithURLInRange));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
    };
}

- (OCUITextView *(^)(BOOL(^)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange)))shouldInteractWithTextAttachmentInRange {
    @WeakSelf(self);
    return ^OCUITextView *(BOOL (^pFunction)(UITextView *, NSTextAttachment *, NSRange)) {
        @StrongSelf(self);
        [strongSelf _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldInteractWithTextAttachmentInRange));
        strongSelf.delegateBlockMap[key] = pFunction;
        return strongSelf;
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