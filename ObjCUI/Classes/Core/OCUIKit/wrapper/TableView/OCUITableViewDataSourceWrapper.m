//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewDataSourceWrapper.h"


@implementation OCUITableViewDataSourceWrapper

@synthesize delegateMap = _delegateMap;

#pragma mark - DataSource

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    NSInteger (^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDataSourceNumberOfRowsInSectionKey];
    return block(tableView, section);
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDataSourceCellForRowAtIndexPathKey];
    return block(tableView, indexPath);
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    NSInteger (^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDataSourceNumberOfSectionsInTableViewKey];
    if (block) {
        return block(tableView);
    }
    return 1;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    NSString *(^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDataSourceTitleForHeaderInSectionKey];
    if (block) {
        return block(tableView);
    }
    return nil;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForFooterInSection:(NSInteger)section {
    NSString *(^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDataSourceTitleForFooterInSectionKey];
    if (block) {
        return block(tableView);
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDataSourceCanEditRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDataSourceCanMoveRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return YES;
}

- (nullable NSArray<NSString *> *)sectionIndexTitlesForTableView:(UITableView *)tableView {
    NSArray<NSString *> *(^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDataSourceSectionIndexTitlesForTableViewKey];
    if (block) {
        return block(tableView);
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView sectionForSectionIndexTitle:(NSString *)title atIndex:(NSInteger)index {
    NSInteger (^block)(UITableView *tableView, NSString *title, NSInteger index) = self.delegateMap[OCUITableViewDataSourceSectionForSectionIndexTitleKey];
    if (block) {
        block(tableView, title, index);
    }
    return index;
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    void (^block)(UITableView *tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDataSourceCommitEditingStyleForRowAtIndexPathKey];
    if (block) {
        block(tableView, editingStyle, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)sourceIndexPath toIndexPath:(NSIndexPath *)destinationIndexPath {
    void (^block)(UITableView *tableView, NSIndexPath *sourceIndexPath, NSIndexPath *destinationIndexPath) = self.delegateMap[OCUITableViewDataMoveRowAtIndexPathToIndexPathKey];
    if (block) {
        block(tableView, sourceIndexPath, destinationIndexPath);
    }
}

#pragma mark - Get

- (NSMutableDictionary<OCUITableViewDataSourceKey, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end