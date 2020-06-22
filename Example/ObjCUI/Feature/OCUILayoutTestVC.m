//
// Created by freedom on 2020/6/22.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUILayoutTestVC.h"
#import <ObjCUI/ObjCUI.h>

@interface OCUILayoutTestVC ()

@end

@implementation OCUILayoutTestVC

- (void)dealloc {
    NSLog(@"OCUILayoutTestVC is safe");
}

- (void)viewDidLoad {
    self.navigationController.navigationBar.translucent = NO;
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
//    [self _column];
    [self _row];
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

- (void)_column {
    self.view.objc_convertColumn.objc_children(@[
            UILabel.objc_create().objc_text(@"来一个测试1").objc_backgroundColor([UIColor redColor]).objc_convertCenter.objc_height(200),
            UILabel.objc_create().objc_text(@"来一个测试2"),
            UILabel.objc_create().objc_text(@"来一个测试3"),
            UILabel.objc_create().objc_text(@"来一个测试4"),
            UILabel.objc_create().objc_text(@"来一个测试5").objc_convertPadding.objc_top(10),
            UILabel.objc_create().objc_text(@"来一个测试6").objc_backgroundColor([UIColor blueColor]).objc_convertCenter,
    ]);
}

- (void)_row {
    self.view.objc_convertPadding.objc_top(0).objc_right(0).objc_left(0)
            .objc_height(100).objc_child(
                    UIView.objc_create().objc_backgroundColor([UIColor redColor]).objc_convertRow
                            .objc_children(@[
                                    UILabel.objc_create().objc_text(@"111").objc_textColor([UIColor whiteColor]).objc_convertCenter.objc_width(200),
                                    UILabel.objc_create().objc_text(@"222"),
                                    UILabel.objc_create().objc_text(@"333"),
                            ]).entityView
            );

}

@end