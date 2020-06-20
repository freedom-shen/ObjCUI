//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewDropDelegateWrapper.h"


@implementation OCUITableViewDropDelegateWrapper

@synthesize delegateMap = _delegateMap;

- (void)tableView:(UITableView *)tableView performDropWithCoordinator:(id <UITableViewDropCoordinator>)coordinator {
    void(^block)(UITableView *tableView, id <UITableViewDropCoordinator> coordinator) = self.delegateMap[OCUITableViewDropDelegatePerformDropWithCoordinatorKey];
    if (block) {
        block(tableView, coordinator);
    }
}

- (BOOL)tableView:(UITableView *)tableView canHandleDropSession:(id <UIDropSession>)session {
    BOOL(^block)(UITableView *tableView, id <UIDropSession> session) = self.delegateMap[OCUITableViewDropDelegatePerformCanHandleDropSessionKey];
    if (block) {
        return block(tableView, session);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView dropSessionDidEnter:(id <UIDropSession>)session {
    void(^block)(UITableView *tableView, id <UIDropSession> session) = self.delegateMap[OCUITableViewDropDelegatePerformDropSessionDidEnterKey];
    if (block) {
        block(tableView, session);
    }
}

- (UITableViewDropProposal *)tableView:(UITableView *)tableView dropSessionDidUpdate:(id <UIDropSession>)session withDestinationIndexPath:(nullable NSIndexPath *)destinationIndexPath {
    UITableViewDropProposal *(^block)(UITableView *tableView, id <UIDropSession> session, NSIndexPath *destinationIndexPath) = self.delegateMap[OCUITableViewDropDelegatePerformDropSessionDidUpdateWithDestinationIndexPathKey];
    if (block) {
        return block(tableView, session, destinationIndexPath);
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView dropSessionDidExit:(id <UIDropSession>)session {
    void(^block)(UITableView *tableView, id <UIDropSession> session) = self.delegateMap[OCUITableViewDropDelegateDropSessionDidExitKey];
    if (block) {
        block(tableView, session);
    }
}

- (void)tableView:(UITableView *)tableView dropSessionDidEnd:(id <UIDropSession>)session {
    void(^block)(UITableView *tableView, id <UIDropSession> session) = self.delegateMap[OCUITableViewDropDelegateDropSessionDidEndKey];
    if (block) {
        block(tableView, session);
    }
}

- (nullable UIDragPreviewParameters *)tableView:(UITableView *)tableView dropPreviewParametersForRowAtIndexPath:(NSIndexPath *)indexPath {
    UIDragPreviewParameters *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDropDelegateDropPreviewParametersForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}


- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end