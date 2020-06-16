//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import <ObjCUI/OCUIText.h>
#import <ObjCUI/OCUIPadding.h>
#import <ObjCUI/UIView+Convert.h>
#import "OCUIKitTestVC.h"
#import <ObjCUI/OCUITextFiled.h>
#import <ObjCUI/OCUITextView.h>
#import <ObjCUI/OCUIButton.h>
#import <ObjCUI/OCUIImage.h>

@interface OCUIKitTestVC ()

@property(nonatomic, strong) OCUIText *ocuiText;

@end

@implementation OCUIKitTestVC

- (void)dealloc {
    NSLog(@"OCUIKitTestVC is Safe");
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];

    self.view.convertToOCUIContainer.childView(
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

    self.view.convertToOCUIContainer.childView(
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

    self.view.convertToOCUIContainer.childView(
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

    self.view.convertToOCUIContainer.childView(
            OCUIPadding.create().left(200).top(300).childView(
                    OCUIButton.create()
                            .title(UIControlStateNormal, @"我是一个测试按钮")
                            .backgroundColor([UIColor redColor])
            )
    );

    self.view.convertToOCUIContainer.childView(
            OCUIPadding.create().left(0).top(350).right(0).childView(
                    OCUIImage.create().image([UIImage imageNamed:@"email"])
            )
    );

}

- (void)didSelect:(UITextField *)sender {
    NSLog(@"%@", sender.text);
}


@end
