//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewDelegateWrapper.h"


@interface OCUITableViewDelegateWrapper ()

@property(nonatomic, strong) UIView *headerView;
@property(nonatomic, strong) UIView *footerView;

@end

@implementation OCUITableViewDelegateWrapper

@synthesize delegateMap = _delegateMap;


- (void)tableView:(UITableView *)tableView willDisplayCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath {
    void (^block)(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateWillDisplayCellForRowAtIndexPathKey];
    if (block) {
        block(tableView, cell, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView willDisplayHeaderView:(UIView *)view forSection:(NSInteger)section API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, UIView *view, NSInteger section) = self.delegateMap[OCUITableViewDelegateWillDisplayHeaderViewForSectionKey];
    if (block) {
        block(tableView, view, section);
    }
}

- (void)tableView:(UITableView *)tableView willDisplayFooterView:(UIView *)view forSection:(NSInteger)section API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, UIView *view, NSInteger section) = self.delegateMap[OCUITableViewDelegateWillDisplayFooterViewForSectionKey];
    if (block) {
        block(tableView, view, section);
    }
}

- (void)tableView:(UITableView *)tableView didEndDisplayingCell:(UITableViewCell *)cell forRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidEndDisplayingCellForRowAtIndexPathKey];
    if (block) {
        block(tableView, cell, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didEndDisplayingHeaderView:(UIView *)view forSection:(NSInteger)section API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, UIView *view, NSInteger section) = self.delegateMap[OCUITableViewDelegateDidEndDisplayingHeaderViewForSectionKey];
    if (block) {
        block(tableView, view, section);
    }
}

- (void)tableView:(UITableView *)tableView didEndDisplayingFooterView:(UIView *)view forSection:(NSInteger)section API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, UIView *view, NSInteger section) = self.delegateMap[OCUITableViewDelegateDidEndDisplayingFooterViewForSectionKey];
    if (block) {
        block(tableView, view, section);
    }
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    CGFloat (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateHeightForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return 44;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    CGFloat (^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateHeightForHeaderInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    CGFloat (^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateHeightForFooterInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return 0.01;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(7.0)) {
    CGFloat (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateEstimatedHeightForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForHeaderInSection:(NSInteger)section API_AVAILABLE(ios(7.0)) {
    CGFloat (^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateEstimatedHeightForHeaderInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView estimatedHeightForFooterInSection:(NSInteger)section API_AVAILABLE(ios(7.0)) {
    CGFloat (^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateEstimatedHeightForFooterInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return 0;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    UIView *(^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateViewForHeaderInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return self.headerView;
}

- (nullable UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    UIView *(^block)(UITableView *tableView, NSInteger section) = self.delegateMap[OCUITableViewDelegateViewForFooterInSectionKey];
    if (block) {
        return block(tableView, section);
    }
    return self.footerView;
}

- (void)tableView:(UITableView *)tableView accessoryButtonTappedForRowWithIndexPath:(NSIndexPath *)indexPath {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateAccessoryButtonTappedForRowWithIndexPathKey];
    if (block) {
        block(tableView, indexPath);
    }
}

- (BOOL)tableView:(UITableView *)tableView shouldHighlightRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(6.0)) {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateShouldHighlightRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView didHighlightRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidHighlightRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didUnhighlightRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(6.0)) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidUnhighlightRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
}

- (nullable NSIndexPath *)tableView:(UITableView *)tableView willSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    NSIndexPath *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateWillSelectRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return indexPath;
}

- (nullable NSIndexPath *)tableView:(UITableView *)tableView willDeselectRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(3.0)) {
    NSIndexPath *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateWillDeselectRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return indexPath;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidSelectRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didDeselectRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(3.0)) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidDeselectRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
}

- (UITableViewCellEditingStyle)tableView:(UITableView *)tableView editingStyleForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCellEditingStyle (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateEditingStyleForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return UITableViewCellEditingStyleNone;
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForDeleteConfirmationButtonForRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(3.0)) API_UNAVAILABLE(tvos) {
    NSString *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateTitleForDeleteConfirmationButtonForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}

- (nullable NSArray<UITableViewRowAction *> *)tableView:(UITableView *)tableView editActionsForRowAtIndexPath:(NSIndexPath *)indexPath API_DEPRECATED_WITH_REPLACEMENT("tableView:trailingSwipeActionsConfigurationForRowAtIndexPath:", ios(8.0, 13.0)) API_UNAVAILABLE(tvos) {
    NSArray<UITableViewRowAction *> *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateEditActionsForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}

- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView leadingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos) {
    UISwipeActionsConfiguration *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateLeadingSwipeActionsConfigurationForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}

- (nullable UISwipeActionsConfiguration *)tableView:(UITableView *)tableView trailingSwipeActionsConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos) {
    UISwipeActionsConfiguration *(^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateTrailingSwipeActionsConfigurationForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView shouldIndentWhileEditingRowAtIndexPath:(NSIndexPath *)indexPath {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateShouldIndentWhileEditingRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return YES;
}

- (void)tableView:(UITableView *)tableView willBeginEditingRowAtIndexPath:(NSIndexPath *)indexPath API_UNAVAILABLE(tvos) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateWillBeginEditingRowAtIndexPathKey];
    if (block) {
        block(tableView, indexPath);
    }
}

- (void)tableView:(UITableView *)tableView didEndEditingRowAtIndexPath:(nullable NSIndexPath *)indexPath API_UNAVAILABLE(tvos) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidEndEditingRowAtIndexPathKey];
    if (block) {
        block(tableView, indexPath);
    }
}

- (NSIndexPath *)tableView:(UITableView *)tableView targetIndexPathForMoveFromRowAtIndexPath:(NSIndexPath *)sourceIndexPath toProposedIndexPath:(NSIndexPath *)proposedDestinationIndexPath {
    NSIndexPath *(^block)(UITableView *tableView, NSIndexPath *sourceIndexPath, NSIndexPath *proposedDestinationIndexPath) = self.delegateMap[OCUITableViewDelegateTargetIndexPathForMoveFromRowAtIndexPathToProposedIndexPathKey];
    if (block) {
        return block(tableView, sourceIndexPath, proposedDestinationIndexPath);
    }
    return nil;
}

- (NSInteger)tableView:(UITableView *)tableView indentationLevelForRowAtIndexPath:(NSIndexPath *)indexPath {
    NSInteger (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateIndentationLevelForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return 0;
}

- (BOOL)tableView:(UITableView *)tableView shouldShowMenuForRowAtIndexPath:(NSIndexPath *)indexPath API_DEPRECATED_WITH_REPLACEMENT("tableView:contextMenuConfigurationForRowAtIndexPath:point:", ios(5.0, 13.0)) {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateShouldShowMenuForRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView canPerformAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender API_DEPRECATED_WITH_REPLACEMENT("tableView:contextMenuConfigurationForRowAtIndexPath:point:", ios(5.0, 13.0)) {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateCanPerformActionForRowAtIndexPathWithSenderKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView performAction:(SEL)action forRowAtIndexPath:(NSIndexPath *)indexPath withSender:(nullable id)sender API_DEPRECATED_WITH_REPLACEMENT("tableView:contextMenuConfigurationForRowAtIndexPath:", ios(5.0, 13.0)) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegatePerformActionForRowAtIndexPathWithSenderKey];
    if (block) {
        block(tableView, indexPath);
    }
}

- (BOOL)tableView:(UITableView *)tableView canFocusRowAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(9.0)) {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateCanFocusRowAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return NO;
}

- (BOOL)tableView:(UITableView *)tableView shouldUpdateFocusInContext:(UITableViewFocusUpdateContext *)context API_AVAILABLE(ios(9.0)) {
    BOOL (^block)(UITableView *tableView, UITableViewFocusUpdateContext *context) = self.delegateMap[OCUITableViewDelegateShouldUpdateFocusInContextKey];
    if (block) {
        return block(tableView, context);
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView didUpdateFocusInContext:(UITableViewFocusUpdateContext *)context withAnimationCoordinator:(UIFocusAnimationCoordinator *)coordinator API_AVAILABLE(ios(9.0)) {
    void (^block)(UITableView *tableView, UITableViewFocusUpdateContext *context, UIFocusAnimationCoordinator *coordinator) = self.delegateMap[OCUITableViewDelegateDidUpdateFocusInContextWithAnimationCoordinatorKey];
    if (block) {
        block(tableView, context, coordinator);
    }
}

- (nullable NSIndexPath *)indexPathForPreferredFocusedViewInTableView:(UITableView *)tableView API_AVAILABLE(ios(9.0)) {
    NSIndexPath *(^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDelegateIndexPathForPreferredFocusedViewInTableViewKey];
    if (block) {
        return block(tableView);
    }
    return nil;
}

- (BOOL)tableView:(UITableView *)tableView shouldSpringLoadRowAtIndexPath:(NSIndexPath *)indexPath withContext:(id <UISpringLoadedInteractionContext>)context API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    BOOL (^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDelegateShouldSpringLoadRowAtIndexPathWithContextKey];
    if (block) {
        return block(tableView);
    }
    return YES;
}

- (BOOL)tableView:(UITableView *)tableView shouldBeginMultipleSelectionInteractionAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos) {
    BOOL (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateShouldBeginMultipleSelectionInteractionAtIndexPathKey];
    if (block) {
        return block(tableView, indexPath);
    }
    return NO;
}

- (void)tableView:(UITableView *)tableView didBeginMultipleSelectionInteractionAtIndexPath:(NSIndexPath *)indexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos) {
    void (^block)(UITableView *tableView, NSIndexPath *indexPath) = self.delegateMap[OCUITableViewDelegateDidBeginMultipleSelectionInteractionAtIndexPathKey];
    if (block) {
        block(tableView, indexPath);
    }
}

- (void)tableViewDidEndMultipleSelectionInteraction:(UITableView *)tableView API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos) {
    void (^block)(UITableView *tableView) = self.delegateMap[OCUITableViewDelegateDidEndMultipleSelectionInteractionKey];
    if (block) {
        block(tableView);
    }
}

- (nullable UIContextMenuConfiguration *)tableView:(UITableView *)tableView contextMenuConfigurationForRowAtIndexPath:(NSIndexPath *)indexPath point:(CGPoint)point API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos) {
    UIContextMenuConfiguration *(^block)(UITableView *tableView, NSIndexPath *indexPath, CGPoint point) = self.delegateMap[OCUITableViewDelegateContextMenuConfigurationForRowAtIndexPathPointKey];
    if (block) {
        return block(tableView, indexPath, point);
    }
    return nil;
}

- (nullable UITargetedPreview *)tableView:(UITableView *)tableView previewForHighlightingContextMenuWithConfiguration:(UIContextMenuConfiguration *)configuration API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos) {
    UITargetedPreview *(^block)(UITableView *tableView, UIContextMenuConfiguration *configuration) = self.delegateMap[OCUITableViewDelegatePreviewForHighlightingContextMenuWithConfigurationKey];
    if (block) {
        return block(tableView, configuration);
    }
    return nil;
}

- (nullable UITargetedPreview *)tableView:(UITableView *)tableView previewForDismissingContextMenuWithConfiguration:(UIContextMenuConfiguration *)configuration API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos) {
    UITargetedPreview *(^block)(UITableView *tableView, UIContextMenuConfiguration *configuration) = self.delegateMap[OCUITableViewDelegatePreviewForDismissingContextMenuWithConfigurationKey];
    if (block) {
        return block(tableView, configuration);
    }
    return nil;
}

- (void)tableView:(UITableView *)tableView willPerformPreviewActionForMenuWithConfiguration:(UIContextMenuConfiguration *)configuration animator:(id <UIContextMenuInteractionCommitAnimating>)animator API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos) {
    void (^block)(UITableView *tableView, UIContextMenuConfiguration *configuration, id <UIContextMenuInteractionCommitAnimating> animator) = self.delegateMap[OCUITableViewDelegateWillPerformPreviewActionForMenuWithConfigurationAnimatorKey];
    if (block) {
        return block(tableView, configuration, animator);
    }
}

#pragma mark - Get

- (UIView *)headerView {
    if (!_headerView) {
        _headerView = [[UIView alloc] init];
    }
    return _headerView;
}

- (UIView *)footerView {
    if (!_footerView) {
        _footerView = [[UIView alloc] init];
    }
    return _footerView;
}

- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end