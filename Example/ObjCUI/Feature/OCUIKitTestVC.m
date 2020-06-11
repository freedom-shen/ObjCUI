//
// Created by freedom on 2020/6/11.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import <ObjCUI/OCUIText.h>
#import <ObjCUI/OCUIPadding.h>
#import "OCUIKitTestVC.h"


@interface OCUIKitTestVC ()

@property(nonatomic, strong) OCUIText *ocuiText;

@end

@implementation OCUIKitTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.ocuiText.bindView.frame = CGRectMake(100, 100, 100, 100);
    [self.view addSubview:self.ocuiText.bindView];
    UILabel *label = [[UILabel alloc] init];
    OCUIPadding.create().left(200).top(200).childView(
            self.ocuiText
            );
}

#pragma mark - Get

- (OCUIText *)ocuiText {
    if (!_ocuiText) {
        _ocuiText = OCUIText.create()
                .text(@"我是个测试数据\n测试下号")
                .font([UIFont systemFontOfSize:12])
                .textAlignment(NSTextAlignmentLeft)
                .textColor([UIColor redColor])
                .labelMaker(^(UILabel *label) {
                    label.numberOfLines = 2;
                })
            .backgroundColor([UIColor blueColor]);
    }
    return _ocuiText;
}


@end