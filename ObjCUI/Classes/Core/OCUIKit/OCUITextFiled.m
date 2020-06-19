//
// Created by freedom on 2020/6/15.
//

#import "OCUITextFiled.h"
#import "OCUIControlWrapper.h"


@interface OCUITextFiled () <UITextFieldDelegate>

@property(nonatomic, strong) UITextField *textField;
@property(nonatomic, strong) NSMutableDictionary <NSNumber *, OCUIControlWrapper *> *eventMap;
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
    return ^OCUITextFiled *(NSString *placeHolder) {
        self.textField.placeholder = placeHolder;
        return self;
    };
}

- (OCUITextFiled *(^)(UIColor *textColor))textColor {
    return ^OCUITextFiled *(UIColor *textColor) {
        self.textField.textColor = textColor;
        return self;
    };
}

- (OCUITextFiled *(^)(UIFont *font))font {
    return ^OCUITextFiled *(UIFont *font) {
        self.textField.font = font;
        return self;
    };
}

- (OCUITextFiled *(^)(NSAttributedString *attributedPlaceholder))attributedPlaceholder {
    return ^OCUITextFiled *(NSAttributedString *attributedString) {
        self.textField.attributedPlaceholder = attributedString;
        return self;
    };
}


- (OCUITextFiled *(^)(BOOL secureTextEntry))secureTextEntry {
    return ^OCUITextFiled *(BOOL secure) {
        self.textField.secureTextEntry = secure;
        return self;
    };
}

- (OCUITextFiled *(^)(UIKeyboardType keyboardType))keyBordType {
    return ^OCUITextFiled *(UIKeyboardType keyboardType) {
        self.textField.keyboardType = keyboardType;
        return self;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *)))maker {
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        if (pFunction) {
            pFunction(self.textField);
        }
        return self;
    };
}

- (OCUITextFiled *(^)(UIImage *background))background {
    return ^OCUITextFiled *(UIImage *background) {
        self.textField.background = background;
        return self;
    };
}

- (OCUITextFiled *(^)(UIImage *disabledBackground))disabledBackground {
    return ^OCUITextFiled *(UIImage *disabledBackground) {
        self.textField.disabledBackground = disabledBackground;
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL clearsOnBeginEditing))clearsOnBeginEditing {
    return ^OCUITextFiled *(BOOL clearsOnBeginEditing) {
        self.textField.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (OCUITextFiled *(^)(UIControlEvents controlEvents, void(^)(UITextField *textFiled)))action {
    return ^OCUITextFiled *(UIControlEvents controlEvents, void (^pFunction)(UITextField *)) {
        if (!self.eventMap[@(controlEvents)]) {
            self.eventMap[@(controlEvents)] = [[OCUIControlWrapper alloc] initWithHandler:pFunction];
        }
        [self.textField addTarget:self.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return self;
    };
}


- (OCUITextFiled *(^)(NSTextAlignment textAlignment))textAlignment {
    return ^OCUITextFiled *(NSTextAlignment textAlignment) {
        [self _makeDelegate];
        self.textField.textAlignment = textAlignment;
        return self;
    };
}

#pragma mark - Delegate Block

- (void)_makeDelegate {
    if (!self.textField.delegate) {
        self.textField.delegate = self;
    }
}

- (OCUITextFiled *(^)(BOOL(^)(UITextField *textFiled)))textFieldShouldBeginEditing {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldShouldBeginEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidBeginEditing {
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldDidBeginEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldEndEditing {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldShouldEndEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled)))textFieldDidEndEditing {
    return ^OCUITextFiled *(void (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldDidEndEditing));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(void (^)(UITextField *textFiled, UITextFieldDidEndEditingReason reason)))textFieldDidEndEditingReason {
    return ^OCUITextFiled *(void (^pFunction)(UITextField *, UITextFieldDidEndEditingReason)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldDidEndEditingReason));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled, NSRange range, NSString *replace)))shouldChangeCharactersInRangeReplacementString {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *, NSRange, NSString *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldChangeCharactersInRangeReplacementString));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldDidChangeSelection {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(shouldChangeCharactersInRangeReplacementString));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldClear {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        NSString *key = NSStringFromSelector(@selector(textFieldShouldClear));
        self.delegateBlockMap[key] = pFunction;
        [self _makeDelegate];
        return self;
    };
}

- (OCUITextFiled *(^)(BOOL (^)(UITextField *textFiled)))textFieldShouldReturn {
    return ^OCUITextFiled *(BOOL (^pFunction)(UITextField *)) {
        [self _makeDelegate];
        NSString *key = NSStringFromSelector(@selector(textFieldShouldClear));
        self.delegateBlockMap[key] = pFunction;
        return self;
    };
}


#pragma mark - Delegate

- (BOOL)textFieldShouldBeginEditing:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldShouldBeginEditing));
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldDidBeginEditing));
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldEndEditing:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldShouldEndEditing));
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldDidEndEditing));
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        block(textField);
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField reason:(UITextFieldDidEndEditingReason)reason API_AVAILABLE(ios(10.0)) {
    NSString *key = NSStringFromSelector(@selector(textFieldDidEndEditingReason));
    void (^block)(UITextField *textFiled, UITextFieldDidEndEditingReason reason) = self.delegateBlockMap[key];
    if (block) {
        block(textField, reason);
    }
}

- (BOOL)textField:(UITextField *)textField shouldChangeCharactersInRange:(NSRange)range replacementString:(NSString *)string {
    NSString *key = NSStringFromSelector(@selector(shouldChangeCharactersInRangeReplacementString));
    BOOL (^block)(UITextField *textFiled, NSRange range, NSString *string) = self.delegateBlockMap[key];
    if (block) {
        return block(textField, range, string);
    }
    return YES;
}

- (void)textFieldDidChangeSelection:(UITextField *)textField API_AVAILABLE(ios(13.0), tvos(13.0)) {
    NSString *key = NSStringFromSelector(@selector(textFieldDidChangeSelection));
    void (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        block(textField);
    }
}

- (BOOL)textFieldShouldClear:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldShouldClear));
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
    if (block) {
        return block(textField);
    }
    return YES;
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField {
    NSString *key = NSStringFromSelector(@selector(textFieldShouldReturn));
    BOOL (^block)(UITextField *textFiled) = self.delegateBlockMap[key];
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
    }
    return _textField;
}

- (NSMutableDictionary<NSNumber *, OCUIControlWrapper *> *)eventMap {
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