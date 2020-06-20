//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUIKitTestVC.h"
#import "NSObject+RACDeallocating.h"
#import <ObjCUI/UILabel+ObjcUI.h>
#import <ObjCUI/UIButton+ObjcUI.h>
#import <View+MASAdditions.h>
#import <ReactiveObjC/RACSignal+Operations.h>
#import <ObjCUI/UITextField+ObjcUI.h>
#import <ObjCUI/UITextView+ObjcUI.h>

@interface OCUIKitTestVC ()

@end

@implementation OCUIKitTestVC

- (void)dealloc {
    NSLog(@"OCUIKitTestVC is Safe");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *button = UIButton
            .objc_create()
            .objc_title(UIControlStateNormal, @"我来做个测试")
            .objc_action(UIControlEventTouchUpInside, ^(UIButton *button) {
                NSLog(@"点击了按钮");
            });
//    UIButton *button = [[UIButton alloc] init];
    button.backgroundColor = [UIColor redColor];
    [self.view addSubview:button];


    [button mas_makeConstraints:^(MASConstraintMaker *make) {
        make.width.height.mas_equalTo(100);
        make.top.mas_equalTo(100);
    }];

    UILabel *label = UILabel.objc_create()
            .objc_text(@"我是一个测试label")
            .objc_maker(^(UILabel *label) {
                label.backgroundColor = [UIColor redColor];
            });
    [self.view addSubview:label];
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.edges.mas_equalTo(button);
        make.top.mas_equalTo(button.mas_bottom).offset(10);
    }];

    [[button rac_willDeallocSignal] subscribeCompleted:^() {
        NSLog(@"button is safe");
    }];
    [[label rac_willDeallocSignal] subscribeCompleted:^{
        NSLog(@"label is safe");
    }];

    UITextField *textField = UITextField.objc_create()
            .objc_text(@"测试数据")
            .objc_textColor([UIColor redColor])
            .objc_action(UIControlEventEditingChanged, ^(UITextField *textField) {
                NSLog(@"text did change %@", textField.text);
            })
            .objc_textFieldShouldBeginEditing(^BOOL(UITextField *textField) {
                NSLog(@"text should begin");
                return YES;
            });
    [self.view addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button.mas_bottom);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(44);
    }];
    [[textField rac_willDeallocSignal] subscribeCompleted:^{
        NSLog(@"textField is safe");
    }];

    UITextView *textView = [[UITextView alloc] init];
    textView
            .objc_text(@"我来试一试TextView")
            .objc_font([UIFont systemFontOfSize:20])
            .objc_textViewDidChange(^(UITextView *textView) {
                NSLog(@"textView did change %@", textView.text);
            });
    [self.view addSubview:textView];
    [textView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(textField.mas_bottom).offset(10);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(100);
    }];
    [[textView rac_willDeallocSignal] subscribeCompleted:^{
        NSLog(@"textView is safe");
    }];
}

@end
