//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewDragDelegateWrapper.h"


@implementation OCUITableViewDragDelegateWrapper

@synthesize delegateMap = _delegateMap;

- (NSArray<UIDragItem *> *)tableView:(UITableView *)tableView itemsForBeginningDragSession:(id <UIDragSession>)session atIndexPath:(NSIndexPath *)indexPath {
    NSArray<UIDragItem *> *(^block)(UITableView *tableView, id <UIDragSession> session, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateItemsForBeginningDragSessionAtIndexPathKey];
    if (block) {
        return block(tableView, session, indexPath);
    }
    return nil;
}

- (NSArray<UIDragItem *> *)tableView:(UITableView *)tableView itemsForAddingToDragSession:(id <UIDragSession>)session atIndexPath:(NSIndexPath *)indexPath point:(CGPoint)point {
    NSArray<UIDragItem *> *(^block)(UITableView *tableView, id <UIDragSession> session, NSIndexPath *indexPath, CGPoint point) = self.delegateMap[OCUITableViewDelegateItemsForAddingToDragSessionAtIndexPathPointKey];
    if (block) {
        return block(tableView, session, indexPath, point);
    }
    return nil;
}

- (nullable UIDragPreviewParameters *)tableView:(UITableView *)tableView dragPreviewParametersForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIDragPreviewParameters *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDragPreviewParametersForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView dragSessionWillBegin:(id <UIDragSession>)session {
    void (^block)(UITableView *tableView, id <UIDragSession> session) = self.delegateMap[OCUITableViewDelegateDragSessionWillBeginKey];
    if (block) {
        block(tableView, session);
    }
}

- (void)tableView:(UITableView *)tableView dragSessionDidEnd:(id <UIDragSession>)session {
    void (^block)(UITableView *tableView, id <UIDragSession> session) = self.delegateMap[OCUITableViewDelegateDragSessionDidEndKey];
    if (block) {
        block(tableView, session);
    }
}

- (BOOL)tableView:(UITableView *)tableView dragSessionAllowsMoveOperation:(id <UIDragSession>)session {
    BOOL (^block)(UITableView *tableView, id <UIDragSession> session) = self.delegateMap[OCUITableViewDelegateDragSessionAllowsMoveOperationKey];
    if (block) {
        return block(tableView, session);
    }
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView dragSessionIsRestrictedToDraggingApplication:(id <UIDragSession>)session {
    BOOL (^block)(UITableView *tableView, id <UIDragSession> session) = self.delegateMap[OCUITableViewDelegateDragSessionIsRestrictedToDraggingApplicationKey];
    if (block) {
        return block(tableView, session);
    }
    return NO;
}

#pragma mark - Get

- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end