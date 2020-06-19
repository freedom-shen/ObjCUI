//
// Created by freedom on 2020/6/18.
//

#import "OCUITextFiledDelegateWarp.h"


@implementation OCUITextFiledDelegateWarp

@synthesize delegateMap = _delegateMap;

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldShouldBeginEditingKey];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    void (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldDidBeginEditingKey];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldShouldEndEditingKey];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    void (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldDidEndEditingKey];
    if (block) {
        block(textField);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason API_AVAILABLE(ios(10.0)) {
    void (^block)(UITextField *textFiled, UITextFieldDidEndEditingReason reason) = self.delegateMap[OCUITextFieldDidEndEditingReasonKey];
    if (block) {
        block(textField, reason);
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    BOOL (^block)(UITextField *textFiled, NSRange range, NSString *string) = self.delegateMap[OCUIShouldChangeCharactersInRangeReplacementStringKey];
    if (block) {
        return block(textField, range, string);
    }
    return YES;
}

- (void)textFieldDidChangeSelection:(UITextField *)textField API_AVAILABLE(ios(13.0), tvos(13.0)) {
    void (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldDidChangeSelectionKey];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldShouldClearKey];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateMap[OCUITextFieldShouldReturnKey];
    if (block) {
        return block(textField);
    }
    return YES;
}

#pragma mark - Get

- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end