//
// Created by freedom on 2020/6/19.
//

#import "OCUITextViewDelegateWrapper.h"


@implementation OCUITextViewDelegateWrapper

@synthesize delegateMap = _delegateMap;

#pragma mark - Delegate

- (BOOL)textViewShouldBeginEditing:(UITextView *)textView {
    BOOL (^block)(UITextView *textView) = self.delegateMap[OCUITextViewShouldBeginEditingKey];
    if (block) {
        return block(textView);
    }
    return YES;
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView {
    BOOL (^block)(UITextView *textView) = self.delegateMap[OCUITextViewShouldEndEditingKey];
    if (block) {
        return block(textView);
    }
    return YES;
}

- (void)textViewDidBeginEditing:(UITextView *)textView {
    void (^block)(UITextView *textView) = self.delegateMap[OCUITextViewDidBeginEditingKey];
    if (block) {
        block(textView);
    }
}

- (void)textViewDidEndEditing:(UITextView *)textView {
    void (^block)(UITextView *textView) = self.delegateMap[OCUITextViewDidEndEditingKey];
    if (block) {
        block(textView);
    }
}

- (BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text {
    BOOL (^block)(UITextView *textView, NSString *replaceText) = self.delegateMap[OCUITextViewShouldChangeTextInRangeReplacementTextKey];
    if (block) {
        block(textView, text);
    }
    return YES;
}

- (void)textViewDidChange:(UITextView *)textView {
    void (^block)(UITextView *textView) = self.delegateMap[OCUITextViewDidChangeKey];
    if (block) {
        block(textView);
    }
}

- (void)textViewDidChangeSelection:(UITextView *)textView {
    void (^block)(UITextView *textView) = self.delegateMap[OCUITextViewDidChangeSelectionKey];
    if (block) {
        block(textView);
    }

}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    BOOL (^block)(UITextView *textView, NSURL *url, NSRange characterRange, UITextItemInteraction interaction) = self.delegateMap[OCUITextViewShouldInteractWithURLInRangeInteractionKey];
    if (block) {
        return block(textView, URL, characterRange, interaction);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange interaction:(UITextItemInteraction)interaction API_AVAILABLE(ios(10.0)) {
    BOOL (^block)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange, UITextItemInteraction interaction) = self.delegateMap[OCUITextViewShouldInteractWithTextAttachmentInRangeInteractionKey];
    if (block) {
        return block(textView, textAttachment, characterRange, interaction);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithURL:(NSURL *)URL inRange:(NSRange)characterRange API_DEPRECATED_WITH_REPLACEMENT("textView:shouldInteractWithURL:inRange:forInteractionType:", ios(7.0, 10.0)) {
    BOOL (^block)(UITextView *textView, NSURL *url, NSRange characterRange) = self.delegateMap[OCUITextViewShouldInteractWithURLInRangeKey];
    if (block) {
        return block(textView, URL, characterRange);
    }
    return YES;
}

- (BOOL)textView:(UITextView *)textView shouldInteractWithTextAttachment:(NSTextAttachment *)textAttachment inRange:(NSRange)characterRange API_DEPRECATED_WITH_REPLACEMENT("textView:shouldInteractWithTextAttachment:inRange:forInteractionType:", ios(7.0, 10.0)) {
    BOOL (^block)(UITextView *textView, NSTextAttachment *textAttachment, NSRange characterRange) = self.delegateMap[OCUITextViewShouldInteractWithTextAttachmentInRangeKey];
    if (block) {
        return block(textView, textAttachment, characterRange);
    }
    return YES;
}


#pragma mark - Get

- (NSMutableDictionary<OCUITextViewDelegateKey, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end