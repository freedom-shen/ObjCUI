//
// Created by freedom on 2020/6/17.
//

#import <objc/runtime.h>
#import "OCUIControlWrapper.h"
#import "OCUITextFiledDelegateWrapper.h"

static const void *UITextFieldObjcUIEventKey = &UITextFieldObjcUIEventKey;
static const void *UITextFieldObjcUIDelegateKey = &UITextFieldObjcUIDelegateKey;

@implementation UITextField (ObjcUI)

+ (UITextField *(^)())objc_create {
    return ^UITextField *() {
        UITextField *textField = [[UITextField alloc] init];
        return textField;
    };
}

- (UITextField *(^)(NSString *text))objc_text {
    return ^UITextField *(NSString *text) {
        self.text = text;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *attributedText))objc_attributedText {
    return ^UITextField *(NSAttributedString *attributedText) {
        self.attributedText = attributedText;
        return self;
    };
}

- (UITextField *(^)(NSString *placeHolder))objc_placeHolder {
    return ^UITextField *(NSString *placeHolder) {
        self.placeholder = placeHolder;
        return self;
    };
}

- (UITextField *(^)(UIColor *textColor))objc_textColor {
    return ^UITextField *(UIColor *textColor) {
        self.textColor = textColor;
        return self;
    };
}

- (UITextField *(^)(UIFont *font))objc_font {
    return ^UITextField *(UIFont *font) {
        self.font = font;
        return self;
    };
}

- (UITextField *(^)(NSAttributedString *attributedPlaceholder))objc_attributedPlaceholder {
    return ^UITextField *(NSAttributedString *attributedString) {
        self.attributedPlaceholder = attributedString;
        return self;
    };
}


- (UITextField *(^)(BOOL secureTextEntry))objc_secureTextEntry {
    return ^UITextField *(BOOL secure) {
        self.secureTextEntry = secure;
        return self;
    };
}

- (UITextField *(^)(UIKeyboardType keyboardType))objc_keyBordType {
    return ^UITextField *(UIKeyboardType keyboardType) {
        self.keyboardType = keyboardType;
        return self;
    };
}

- (UITextField *(^)(void (^)(UITextField *)))objc_maker {
    return ^UITextField *(void (^pFunction)(UITextField *)) {
        if (pFunction) {
            pFunction(self);
        }
        return self;
    };
}

- (UITextField *(^)(UIImage *background))objc_background {
    return ^UITextField *(UIImage *background) {
        self.background = background;
        return self;
    };
}

- (UITextField *(^)(UIImage *disabledBackground))objc_disabledBackground {
    return ^UITextField *(UIImage *disabledBackground) {
        self.disabledBackground = disabledBackground;
        return self;
    };
}

- (UITextField *(^)(BOOL clearsOnBeginEditing))objc_clearsOnBeginEditing {
    return ^UITextField *(BOOL clearsOnBeginEditing) {
        self.clearsOnBeginEditing = clearsOnBeginEditing;
        return self;
    };
}

- (UITextField *(^)(UIControlEvents controlEvents, void(^)(UITextField *textFiled)))objc_action {
    return ^UITextField *(UIControlEvents controlEvents, void (^pFunction)(UITextField *)) {
        if (!self.eventMap[@(controlEvents)]) {
            self.eventMap[@(controlEvents)] = [[OCUIControlWrapper alloc] initWithHandler:pFunction];
        }
        [self addTarget:self.eventMap[@(controlEvents)] action:@selector(didSelect:) forControlEvents:controlEvents];
        return self;
    };
}


- (UITextField *(^)(NSTextAlignment textAlignment))objc_textAlignment {
    return ^UITextField *(NSTextAlignment textAlignment) {
        self.textAlignment = textAlignment;
        return self;
    };
}

#pragma mark - Delegate Block


- (UITextField *(^)(BOOL(^)(UITextField *textFiled)))objc_textFieldShouldBeginEditing {
    return ^UITextField *(BOOL (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldShouldBeginEditingKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(void (^)(UITextField *textFiled)))objc_textFieldDidBeginEditing {
    return ^UITextField *(void (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldDidBeginEditingKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldEndEditing {
    return ^UITextField *(BOOL (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldShouldEndEditingKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(void (^)(UITextField *textFiled)))objc_textFieldDidEndEditing {
    return ^UITextField *(void (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldDidEndEditingKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(void (^)(UITextField *textFiled, UITextFieldDidEndEditingReason reason)))objc_textFieldDidEndEditingReason {
    return ^UITextField *(void (^pFunction)(UITextField *, UITextFieldDidEndEditingReason)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldDidEndEditingReasonKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(BOOL (^)(UITextField *textFiled, NSRange range, NSString *replace)))objc_shouldChangeCharactersInRangeReplacementString {
    return ^UITextField *(BOOL (^pFunction)(UITextField *, NSRange, NSString *)) {
        self.delegateBlockMap.delegateMap[OCUIShouldChangeCharactersInRangeReplacementStringKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldDidChangeSelection {
    return ^UITextField *(BOOL (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldDidChangeSelectionKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldClear {
    return ^UITextField *(BOOL (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldShouldClearKey] = pFunction;
        return self;
    };
}

- (UITextField *(^)(BOOL (^)(UITextField *textFiled)))objc_textFieldShouldReturn {
    return ^UITextField *(BOOL (^pFunction)(UITextField *)) {
        self.delegateBlockMap.delegateMap[OCUITextFieldShouldReturnKey] = pFunction;
        return self;
    };
}


#pragma mark - Get

- (NSMutableDictionary *)eventMap {
    NSMutableDictionary *eventMap = objc_getAssociatedObject(self, UITextFieldObjcUIEventKey);
    if (!eventMap) {
        eventMap = [NSMutableDictionary dictionary];
        objc_setAssociatedObject(self, UITextFieldObjcUIEventKey, eventMap, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return eventMap;
}


- (OCUITextFiledDelegateWrapper *)delegateBlockMap {
    OCUITextFiledDelegateWrapper *delegateWarp = objc_getAssociatedObject(self, UITextFieldObjcUIDelegateKey);
    if (!delegateWarp) {
        delegateWarp = [[OCUITextFiledDelegateWrapper alloc] init];
        self.delegate = delegateWarp;
        objc_setAssociatedObject(self, UITextFieldObjcUIDelegateKey, delegateWarp, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWarp;
}

@end