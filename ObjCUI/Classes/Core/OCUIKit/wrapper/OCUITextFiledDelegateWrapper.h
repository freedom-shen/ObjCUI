//
// Created by freedom on 2020/6/18.
//

#import <UIKit/UITextField.h>

typedef NSString *OCUITextFieldDelegateKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUITextFieldDelegateKey OCUITextFieldShouldBeginEditingKey = @"OCUITextFieldShouldBeginEditingKey";
static const OCUITextFieldDelegateKey OCUITextFieldDidBeginEditingKey = @"OCUITextFieldDidBeginEditingKey";
static const OCUITextFieldDelegateKey OCUITextFieldShouldEndEditingKey = @"OCUITextFieldShouldEndEditingKey";
static const OCUITextFieldDelegateKey OCUITextFieldDidEndEditingKey = @"OCUITextFieldDidEndEditingKey";
static const OCUITextFieldDelegateKey OCUITextFieldDidEndEditingReasonKey = @"OCUITextFieldDidEndEditingReasonKey";
static const OCUITextFieldDelegateKey OCUIShouldChangeCharactersInRangeReplacementStringKey = @"OCUIShouldChangeCharactersInRangeReplacementStringKey";
static const OCUITextFieldDelegateKey OCUITextFieldDidChangeSelectionKey = @"OCUITextFieldDidChangeSelectionKey";
static const OCUITextFieldDelegateKey OCUITextFieldShouldClearKey = @"OCUITextFieldShouldClearKey";
static const OCUITextFieldDelegateKey OCUITextFieldShouldReturnKey = @"OCUITextFieldShouldReturnKey";

@interface OCUITextFiledDelegateWrapper : NSObject <UITextFieldDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUITextFieldDelegateKey, id> *delegateMap;

@end