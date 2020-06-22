//
// Created by freedom on 2020/6/22.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUILayoutTestVC.h"
#import <ObjCUI/ObjCUI.h>

@interface OCUILayoutTestVC ()

@end

@implementation OCUILayoutTestVC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    [self _center];
}

- (void)_padding {
    self.view.objc_convertPadding
            .objc_top(100)
            .objc_left(100)
            .objc_right(100)
            .objc_bottom(100)
            .objc_child(UIView.objc_create().objc_backgroundColor([UIColor redColor]));
}

- (void)_center {
    self.view.objc_convertCenter
            .objc_width(400)
            .objc_heightRatio(0.2)
            .objc_child(UILabel.objc_create()
                    .objc_text(@"我是个测试文字")
                    .objc_textColor([UIColor blueColor])
                    .objc_textAlignment(NSTextAlignmentCenter)
                    .objc_backgroundColor([UIColor yellowColor]
                    )
            );

}

@end