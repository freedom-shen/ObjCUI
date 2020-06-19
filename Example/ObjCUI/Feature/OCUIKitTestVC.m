//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import <ObjCUI/OCUIText.h>
#import <ObjCUI/OCUIPadding.h>
#import <ObjCUI/UIView+Convert.h>
#import "OCUIKitTestVC.h"
#import "NSObject+RACDeallocating.h"
#import <ObjCUI/OCUITextFiled.h>
#import <ObjCUI/OCUITextView.h>
#import <ObjCUI/OCUIButton.h>
#import <ObjCUI/OCUIImage.h>
#import <ObjCUI/UILabel+ObjcUI.h>
#import <ObjCUI/UIButton+ObjcUI.h>
#import <View+MASAdditions.h>
#import <ReactiveObjC/RACSignal+Operations.h>
#import <ObjCUI/UITextField+ObjcUI.h>

@interface OCUIKitTestVC ()

@property(nonatomic, strong) OCUIText *ocuiText;
@property(nonatomic, strong) OCUIContainer *container;

@end

@implementation OCUIKitTestVC

- (void)dealloc {
    NSLog(@"OCUIKitTestVC is Safe");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.container.childView(
            OCUIPadding.create().left(200).top(100).childView(
                    OCUIText.create()
                            .text(@"我是个测试数据")
                            .font([UIFont systemFontOfSize:12])
                            .textAlignment(NSTextAlignmentCenter)
                            .textColor([UIColor redColor])
                            .maker(^(UILabel *label) {
                                label.numberOfLines = 2;
                            })
                            .backgroundColor([UIColor blueColor])
            )
    );

    self.container.childView(
            OCUIPadding.create().left(200).top(150).childView(
                    OCUITextFiled.create()
                            .placeHolder(@"我是一个测试")
                            .action(UIControlEventEditingChanged, ^(UITextField *textField) {
                                NSLog(@"%@", textField.text);
                            })
                            .textFieldShouldBeginEditing(^BOOL(UITextField *textField) {
                                return NO;
                            })
            )
    );

    self.container.childView(
            OCUIPadding.create().left(200).top(200).childView(
                    OCUITextView.create()
                            .text(@"我来试一下")
                            .textViewDidChange(^(UITextView *textView) {
                                NSLog(@"text did change:%@", textView.text);
                            })
                            .width(200)
                            .height(100)
                            .backgroundColor([UIColor blueColor])
            )
    );

    self.container.childView(
            OCUIPadding.create().left(200).top(300).childView(
                    OCUIButton.create()
                            .title(UIControlStateNormal, @"我是一个测试按钮")
                            .backgroundColor([UIColor redColor])
                            .action(UIControlEventTouchUpInside, ^(UIButton *sender) {
                                NSLog(@"按钮被点击了");
                            })
            )
    );

    self.container.childView(
            OCUIPadding.create().left(0).top(350).right(0).childView(
                    OCUIImage.create().image([UIImage imageNamed:@"email"])
            )
    );

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
            })
    ;
    [self.view addSubview:textField];
    [textField mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(button.mas_bottom);
        make.left.right.mas_equalTo(0);
        make.height.mas_equalTo(44);
    }];

}

#pragma mark - Get

- (OCUIContainer *)container {
    if (!_container) {
        _container = [self.view convertToOCUIContainer];
    }
    return _container;
}

@end
