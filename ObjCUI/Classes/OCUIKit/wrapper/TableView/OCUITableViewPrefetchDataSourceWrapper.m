//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewPrefetchDataSourceWrapper.h"


@implementation OCUITableViewPrefetchDataSourceWrapper

- (void)tableView:(UITableView *)tableView prefetchRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    void (^block)(UITableView *tableView, NSArray<NSIndexPath *> *indexPaths) = self.delegateMap[OCUITableViewDelegatePrefetchRowsAtIndexPathsKey];
    if (block) {
        block(tableView, indexPaths);
    }
}

- (void)tableView:(UITableView *)tableView cancelPrefetchingForRowsAtIndexPaths:(NSArray<NSIndexPath *> *)indexPaths {
    void (^block)(UITableView *tableView, NSArray<NSIndexPath *> *indexPaths) = self.delegateMap[OCUITableViewDelegateCancelPrefetchingForRowsAtIndexPathsKey];
    if (block) {
        block(tableView, indexPaths);
    }
}

@synthesize delegateMap = _delegateMap;

- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end