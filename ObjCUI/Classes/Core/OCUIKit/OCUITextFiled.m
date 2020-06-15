//
// Created by freedom on 2020/6/15.
//

#import "OCUITextFiled.h"
#import "OCUIControllerWrapper.h"


@interface OCUITextFiled () <UITextFieldDelegate>

@property(nonatomic, strong) UITextField *textField;
@property(nonatomic, strong) NSMutableDictionary <NSNumber *, OCUIControllerWrapper *> *eventMap;
@property(nonatomic, strong) NSMutableDictionary <NSString *, id> *delegateBlockMap;

@end

@implementation OCUITextFiled

+ (OCUITextFiled *(^)())create {
    return ^OCUITextFiled *() {
        OCUITextFiled *view = [[OCUITextFiled alloc] initWithCustomer:nil];
        return view;
    };
}

- (OCUITextFiled *(^)(NSString *placeHolder))placeHolder {
    @WeakSelf(self);
    return ^OCUITextFiled *(NSString *placeHolder) {
        @StrongSelf(weakSelf);
        strongSelf.textField.placeholder = placeHolder;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIColor *textColor))textColor {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIColor *textColor) {
        @StrongSelf(weakSelf);
        strongSelf.textField.textColor = textColor;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIFont *font))font {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIFont *font) {
        @StrongSelf(weakSelf);
        strongSelf.textField.font = font;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(NSAttributedString *attributedPlaceholder))attributedPlaceholder {
    @WeakSelf(self);
    return ^OCUITextFiled *(NSAttributedString *attributedString) {
        @StrongSelf(weakSelf);
        strongSelf.textField.attributedPlaceholder = attributedString;
        return strongSelf;
    };
}


- (OCUITextFiled *(^)(BOOL secureTextEntry))secureTextEntry {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL secure) {
        @StrongSelf(weakSelf);
        strongSelf.textField.secureTextEntry = secure;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIKeyboardType keyboardType))keyBordType {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIKeyboardType keyboardType) {
        @StrongSelf(weakSelf);
        strongSelf.textField.keyboardType = keyboardType;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *)))maker {
    @WeakSelf(self);
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        if (pFunction) {
            pFunction(strongSelf.textField);
        }
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIImage *background))background {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIImage *background) {
        @StrongSelf(weakSelf);
        strongSelf.textField.background = background;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIImage *disabledBackground))disabledBackground {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIImage *disabledBackground) {
        @StrongSelf(weakSelf);
        strongSelf.textField.disabledBackground = disabledBackground;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL clearsOnBeginEditing))clearsOnBeginEditing {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL clearsOnBeginEditing) {
        @StrongSelf(weakSelf);
        strongSelf.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(UIControlEvents controlEvents, void(^)(UITextField *textFiled)))action {
    @WeakSelf(self);
    return ^OCUITextFiled *(UIControlEvents controlEvents, void (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        if (!strongSelf.eventMap[@(controlEvents)]) {
            strongSelf.eventMap[@(controlEvents)] = [[OCUIControllerWrapper alloc] initWithHandler:pFunction];
        }
        [strongSelf.textField addTarget:strongSelf.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return strongSelf;
    };
}

#pragma mark - Delegate Block

- (OCUITextFiled *(^)(BOOL(^)(UITextField *textFiled)))textFieldShouldBeginEditing {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldShouldBeginEditing"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidBeginEditing {
    @WeakSelf(self);
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldDidBeginEditing"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldEndEditing {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldShouldEndEditing"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidEndEditing {
    @WeakSelf(self);
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldDidEndEditing"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled, UITextFieldDidEndEditingReason reason)))textFieldDidEndEditingReason {
    @WeakSelf(self);
    return ^OCUITextFiled *(void (^pFunction)(UITextField *, UITextFieldDidEndEditingReason)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldDidEndEditingReason"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled, NSRange range, NSString *replace)))shouldChangeCharactersInRangeReplacementString {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *, NSRange, NSString *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"shouldChangeCharactersInRangeReplacementString"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldDidChangeSelection {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldDidChangeSelection"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldClear {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldShouldClear"] = pFunction;
        return strongSelf;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldReturn {
    @WeakSelf(self);
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        @StrongSelf(weakSelf);
        strongSelf.delegateBlockMap[@"textFieldShouldReturn"] = pFunction;
        return strongSelf;
    };
}


- (OCUITextFiled *(^)(NSTextAlignment textAlignment))textAlignment {
    @WeakSelf(self);
    return ^OCUITextFiled *(NSTextAlignment textAlignment) {
        @StrongSelf(weakSelf);
        strongSelf.textField.textAlignment = textAlignment;
        return strongSelf;
    };
}


#pragma mark - Delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldShouldBeginEditing"];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldDidBeginEditing"];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldShouldEndEditing"];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldDidEndEditing"];
    if (block) {
        block(textField);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason API_AVAILABLE(ios(10.0)) {
    void (^block)(UITextField *textFiled, UITextFieldDidEndEditingReason reason) = self.delegateBlockMap[@"textFieldDidEndEditingReason"];
    if (block) {
        block(textField, reason);
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    BOOL (^block)(UITextField *textFiled, NSRange range, NSString *string) = self.delegateBlockMap[@"shouldChangeCharactersInRangeReplacementString"];
    if (block) {
        return block(textField, range, string);
    }
    return YES;
}

- (void)textFieldDidChangeSelection:(UITextField *)textField API_AVAILABLE(ios(13.0), tvos(13.0)) {
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldDidChangeSelection"];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldShouldClear"];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[@"textFieldShouldReturn"];
    if (block) {
        return block(textField);
    }
    return YES;
}


#pragma mark - Get

- (UIView *)bindView {
    return self.textField;
}

- (UITextField *)textField {
    if (!_textField) {
        _textField = [[UITextField alloc] init];
        _textField.delegate = self;
    }
    return _textField;
}

- (NSMutableDictionary<NSNumber *, OCUIControllerWrapper *> *)eventMap {
    if (!_eventMap) {
        _eventMap = [NSMutableDictionary dictionary];
    }
    return _eventMap;
}

- (NSMutableDictionary<NSString *, id> *)delegateBlockMap {
    if (!_delegateBlockMap) {
        _delegateBlockMap = [NSMutableDictionary dictionary];
    }
    return _delegateBlockMap;
}

@end