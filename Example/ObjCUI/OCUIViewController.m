//
//  OCUIViewController.m
//  ObjCUI
//
//  Created by 沈晓敏 on 06/10/2020.
//  Copyright (c) 2020 沈晓敏. All rights reserved.
//

#import "OCUIViewController.h"
#import "OCUIKitTestVC.h"
#import "OCUITableViewTestVC.h"
#import "OCUILayoutTestVC.h"

typedef void (^OCUIDataDidSelect)();

@interface OCUIData : NSObject

@property(nonatomic, strong) NSString *name;
@property(nonatomic, copy) OCUIDataDidSelect didSelect;


@end

@implementation OCUIData

- (instancetype)initWithName:(NSString *)name didSelect:(OCUIDataDidSelect)didSelect {
    self = [super init];
    if (self) {
        self.name = name;
        self.didSelect = didSelect;
    }
    return self;
}

@end

@interface OCUIViewController () <UITableViewDelegate, UITableViewDataSource>

@property(nonatomic, strong) UITableView *tableView;
@property(nonatomic, strong) NSArray <OCUIData *> *dataArray;

@end

@implementation OCUIViewController

#pragma mark - Cycle

- (void)loadView {
    [super loadView];
    self.view = self.tableView;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

#pragma mark - TableView

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.dataArray.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *tableViewCell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    tableViewCell.textLabel.text = self.dataArray[indexPath.row].name;
    return tableViewCell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    OCUIDataDidSelect didSelect = self.dataArray[indexPath.row].didSelect;
    if (didSelect) {
        didSelect();
    }
}

#pragma mark - Tool

- (OCUIDataDidSelect)_goToController:(Class)viewControllerClass {
    __weak OCUIViewController *weakSelf = self;
    return ^{
        [weakSelf.navigationController pushViewController:[[viewControllerClass alloc] init] animated:YES];
    };
}

#pragma mark - Get

- (NSArray<OCUIData *> *)dataArray {
    if (!_dataArray) {
        _dataArray = @[
                [[OCUIData alloc] initWithName:@"Kit" didSelect:[self _goToController:[OCUIKitTestVC class]]],
                [[OCUIData alloc] initWithName:@"TableView" didSelect:[self _goToController:[OCUITableViewTestVC class]]],
                [[OCUIData alloc] initWithName:@"Layout" didSelect:[self _goToController:[OCUILayoutTestVC class]]],
        ];
    }
    return _dataArray;
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] init];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView registerClass:[UITableViewCell class] forCellReuseIdentifier:@"cell"];
    }
    return _tableView;
}

@end
