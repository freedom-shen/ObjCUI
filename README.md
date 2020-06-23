# ObjCUI

[![Version](https://img.shields.io/cocoapods/v/ObjCUI.svg?style=flat)](https://cocoapods.org/pods/ObjCUI)
[![License](https://img.shields.io/cocoapods/l/ObjCUI.svg?style=flat)](https://cocoapods.org/pods/ObjCUI)
[![Platform](https://img.shields.io/cocoapods/p/ObjCUI.svg?style=flat)](https://cocoapods.org/pods/ObjCUI)

## About

在iOS开发中， 由于xib(storyboard)的维护问题，所以一般的开发者都习惯使用Masonary来构建UI。虽然可维护性提高了，但是不得不说开发效率上有所牺牲。
`ObjcUI`参考Flutter(SwiftUI)，尝试使用声明氏的UI来提高一定的开发效率。

## Demo

普通的UIKit,以UILabel为例

``` objc
// before
UILabel *label = [[UILabel alloc] init];
label.text = @"test";
label.textColor = [UIColor redColor];
label.backgroundColor = [UIColor whiteColor];
label.font = [UIFont systemFontOfSize:12];
label.textAlignment = NSTextAlignmentCenter;

// after
UILabel.objc_create().objc_text(@"test").objc_textColor([UIColor redColor]).objc_backgroundColor([UIColor redColor])
        .objc_font([UIFont systemFontOfSize:12]).objc_textAlignment(NSTextAlignmentCenter);

```

可以把UIControl的点击事件放入同一代码逻辑中
``` objc

// before
- (void)buttonTouch:(UIButton *)sender {
    NSLog(@"点击了按钮");
}

UIButton *button = [[UIButton alloc] init];
[button setTitle:@"我来做个测试" forState:UIControlStateNormal];
[button addTarget:self action:@selector() forControlEvents:UIControlEventTouchUpInside];

// after 
UIButton *button = UIButton
        .objc_create()
        .objc_title(UIControlStateNormal, @"我来做个测试")
        .objc_actionControl(UIControlEventTouchUpInside, ^(UIButton *button) {
            NSLog(@"点击了按钮");
        });
```

更可以把DataSource,Delegate也统一起来

``` objc
self.view = UITableView
        .objc_create()
        .objc_registerClassForCellReuseIdentifier([UITableViewCell class], @"cell")
        .objc_numberOfRowsInSection(^NSInteger(UITableView *tableView, NSInteger section) {
            return 100;
        })
        .objc_cellForRowAtIndexPath(^UITableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
            UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
            tableViewCell.textLabel.text = @(indexPath.row).stringValue;
            return tableViewCell;
        })
        .objc_heightForRowAtIndexPath(^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
            return indexPath.row % 2 == 0 ? 50 : 100;
        })
        .objc_didSelectRowAtIndexPath(^(UITableView *tableView, NSIndexPath *indexPath) {
            [tableView deselectRowAtIndexPath:indexPath animated:YES];
            NSLog(@"did select At index path row : %zd", indexPath.row);
        });
```

## 约束

在UIView中已存在对于Masonary的映射方法

``` objc
// layout 
XXX.objc_putSuperView(self.view, ^(MASConstraintMaker *maker) {
                maker.top.mas_equalTo(100);
                maker.width.height.mas_equalTo(100);
            });

```

除此之外添加了Padding,Row,Column等容器控件的支持

``` objc

// OCUIColumn
self.view.objc_convertColumn.objc_children(@[
        UIView...
]);

// OCUIRow
self.view.objc_convertColumn.objc_children(@[
        UIView...
]);

// OCUIPadding 
self.view.objc_convertPadding.objc_child(
    UIView...
);

// Center
self.view.objc_convertCenter.objc_child(
    UIView...
);
```

## Installation && Author

```ruby
pod 'ObjCUI'
```

沈晓敏, xxkqw1992@gmail.com

