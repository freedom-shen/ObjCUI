//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import <ObjCUI/OCUIText.h>
#import <ObjCUI/OCUIPadding.h>
#import <ObjCUI/UIView+Convert.h>
#import "OCUIKitTestVC.h"
#import "View+MASAdditions.h"
#import <ObjCUI/OCUITextFiled.h>

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
//                            .width(200)
//                            .height(200)
            )
    );

    self.view.convertToOCUIContainer.childView(
            OCUIPadding.create().left(200).top(200).childView(
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
}

- (void)didSelect:(UITextField *)sender {
    NSLog(@"%@", sender.text);
}


@end
