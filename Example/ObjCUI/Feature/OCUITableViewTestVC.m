//
// Created by freedom on 2020/6/20.
// Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUITableViewTestVC.h"
#import "UITableView+ObjcUI.h"
#import <ReactiveObjC/ReactiveObjC.h>


@interface OCUITableViewTestVC ()
@end

@implementation OCUITableViewTestVC

- (void)dealloc {
    NSLog(@"OCUITableViewTestVC is safe");
}

- (void)loadView {
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

}

@end