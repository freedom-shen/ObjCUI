//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUIKitTestVC.h"
#import <ObjCUI/ObjCUI.h>

@interface OCUIKitTestVC ()

@end

@implementation OCUIKitTestVC

- (void)dealloc {
    NSLog(@"OCUIKitTestVC is Safe");
}

- (void)buttonTouch:(UIButton *)sender {
    NSLog(@"点击了按钮");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];


    UIButton *button = UIButton.objc_create()
            .objc_title(UIControlStateNormal, @"我来做个测试")
            .objc_backgroundColor([UIColor blueColor])
            .objc_actionControl(UIControlEventTouchUpInside, ^(UIButton *button) {
                NSLog(@"点击了按钮");
            })
            .objc_putSuperView(self.view, ^(MASConstraintMaker *maker) {
                maker.top.mas_equalTo(100);
                maker.width.height.mas_equalTo(100);
            });

    UILabel *label = UILabel.objc_create()
            .objc_text(@"test")
            .objc_textColor([UIColor whiteColor])
            .objc_backgroundColor([UIColor redColor])
            .objc_font([UIFont systemFontOfSize:12])
            .objc_textAlignment(NSTextAlignmentCenter)
            .objc_putSuperView(self.view, ^(MASConstraintMaker *maker) {
                maker.top.mas_equalTo(button.mas_bottom).offset(10);
                maker.left.mas_equalTo(button);
            });

    UITextField *textField = UITextField.objc_create()
            .objc_text(@"测试数据")
            .objc_textColor([UIColor redColor])
            .objc_actionControl(UIControlEventEditingChanged, ^(UITextField *textField) {
                NSLog(@"text did change %@", textField.text);
            })
            .objc_textFieldShouldBeginEditing(^BOOL(UITextField *textField) {
                NSLog(@"text should begin");
                return YES;
            })
            .objc_putSuperView(self.view, ^(MASConstraintMaker *maker) {
                maker.top.mas_equalTo(label.mas_bottom).offset(10);
                maker.left.right.mas_equalTo(0);
                maker.height.mas_equalTo(44);
            });
    UITextView.objc_create()
            .objc_text(@"我来试一试TextView")
            .objc_font([UIFont systemFontOfSize:20])
            .objc_textViewDidChange(^(UITextView *textView) {
                NSLog(@"textView did change %@", textView.text);
            })
            .objc_putSuperView(self.view, ^(MASConstraintMaker *maker) {
                maker.top.mas_equalTo(textField.mas_bottom).offset(10);
                maker.left.right.mas_equalTo(0);
                maker.height.mas_equalTo(100);
            });
}

@end
