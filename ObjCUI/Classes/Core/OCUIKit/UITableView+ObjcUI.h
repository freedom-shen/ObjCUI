//
// Created by freedom on 2020/6/19.
//

#import <UIKit/UIKit.h>

@interface UITableView (ObjcUI)

+ (UITableView *(^)())objc_create;

+ (UITableView *(^)(CGRect frame, UITableViewStyle style))objc_createBtFrame;

+ (UITableView *(^)(NSCoder *coder))objc_createByCode;

- (UITableView *(^)(CGFloat rowHeight))objc_rowHeight;

- (UITableView *(^)(CGFloat sectionHeaderHeight))objc_sectionHeaderHeight;

- (UITableView *(^)(CGFloat sectionFooterHeight))objc_sectionFooterHeight;

- (UITableView *(^)(CGFloat estimatedRowHeight))objc_estimatedRowHeight API_AVAILABLE(ios(7.0));

- (UITableView *(^)(CGFloat estimatedSectionHeaderHeight))objc_estimatedSectionHeaderHeight API_AVAILABLE(ios(7.0));

- (UITableView *(^)(CGFloat estimatedSectionFooterHeight))objc_estimatedSectionFooterHeight API_AVAILABLE(ios(7.0));

- (UITableView *(^)(UIEdgeInsets separatorInset))objc_separatorInset API_AVAILABLE(ios(7.0));

- (UITableView *(^)(UITableViewSeparatorInsetReference separatorInsetReference))objc_separatorInsetReference API_AVAILABLE(ios(11.0), tvos(11.0));

- (UITableView *(^)(UIView *backgroundView))objc_backgroundView API_AVAILABLE(ios(3.2));

- (UITableView *(^)(NSIndexPath *indexPath, UITableViewScrollPosition scrollPosition, BOOL animated))objc_scrollToRowAtIndexPathAtScrollPositionAnimated;

- (UITableView *(^)(UITableViewScrollPosition scrollPosition, BOOL animated))objc_scrollToNearestSelectedRowAtScrollPositionAnimated;

- (UITableView *(^)(void (NS_NOESCAPE ^updates)(), void (^finished)(BOOL)))performBatchUpdatesCompletion API_AVAILABLE(ios(11.0), tvos(11.0));

- (UITableView *(^)())objc_beginUpdates;

- (UITableView *(^)())objc_endUpdates;

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_insertSectionsWithRowAnimation;

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_deleteSectionsWithRowAnimation;

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_reloadSectionsWithRowAnimation API_AVAILABLE(ios(3.0));

- (UITableView *(^)(NSInteger section, NSInteger newSection))objc_moveSectionToSection API_AVAILABLE(ios(5.0));

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_insertRowsAtIndexPathsWithRowAnimation;

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_deleteRowsAtIndexPathsWithRowAnimation;

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_reloadRowsAtIndexPathsWithRowAnimation API_AVAILABLE(ios(3.0));

- (UITableView *(^)(NSIndexPath *indexPath, NSIndexPath *newIndexPath))objc_moveRowAtIndexPathToIndexPath API_AVAILABLE(ios(5.0));

- (UITableView *(^)())objc_reloadData;

- (UITableView *(^)())objc_reloadSectionIndexTitles API_AVAILABLE(ios(3.0));

- (UITableView *(^)(BOOL editing))objc_editing;

- (UITableView *(^)(BOOL editing, BOOL animated))objc_editingAnimated;

- (UITableView *(^)(BOOL allowsSelection))objc_allowsSelection API_AVAILABLE(ios(3.0));

- (UITableView *(^)(BOOL allowsSelectionDuringEditing))objc_allowsSelectionDuringEditing;

- (UITableView *(^)(BOOL allowsMultipleSelection))objc_allowsMultipleSelection API_AVAILABLE(ios(5.0));

- (UITableView *(^)(BOOL allowsMultipleSelectionDuringEditing))objc_allowsMultipleSelectionDuringEditing API_AVAILABLE(ios(5.0));

- (UITableView *(^)(NSIndexPath *indexPath, BOOL animated, UITableViewScrollPosition scrollPosition))objc_selectRowAtIndexPathAnimatedScrollPosition;

- (UITableView *(^)(NSIndexPath *indexPath, BOOL animated))objc_deselectRowAtIndexPathAnimated;

- (UITableView *(^)(NSInteger sectionIndexMinimumDisplayRowCount))objc_sectionIndexMinimumDisplayRowCount;

- (UITableView *(^)(UIColor *sectionIndexColor))objc_sectionIndexColor API_AVAILABLE(ios(6.0));

- (UITableView *(^)(UIColor *sectionIndexBackgroundColor))objc_sectionIndexBackgroundColor API_AVAILABLE(ios(7.0)) UI_APPEARANCE_SELECTOR;

- (UITableView *(^)(UIColor *sectionIndexTrackingBackgroundColor))objc_sectionIndexTrackingBackgroundColor API_AVAILABLE(ios(6.0)) UI_APPEARANCE_SELECTOR;

- (UITableView *(^)(UITableViewCellSeparatorStyle separatorStyle))objc_separatorStyle API_UNAVAILABLE(tvos);

- (UITableView *(^)(UIColor *separatorColor))objc_separatorColor UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);

- (UITableView *(^)(UIVisualEffect *separatorEffect))objc_separatorEffect API_AVAILABLE(ios(8.0)) UI_APPEARANCE_SELECTOR API_UNAVAILABLE(tvos);

- (UITableView *(^)(BOOL cellLayoutMarginsFollowReadableWidth))objc_cellLayoutMarginsFollowReadableWidth API_AVAILABLE(ios(9.0));

- (UITableView *(^)(BOOL insetsContentViewsToSafeArea))objc_insetsContentViewsToSafeArea API_AVAILABLE(ios(11.0), tvos(11.0));

- (UITableView *(^)(UIView *tableHeaderView))objc_tableHeaderView;

- (UITableView *(^)(UIView *tableFooterView))objc_tableFooterView;

- (UITableView *(^)(UINib *nib, NSString *identifier))objc_registerNibForCellReuseIdentifier API_AVAILABLE(ios(6.0));

- (UITableView *(^)(Class cellClass, NSString *identifier))objc_registerClassForCellReuseIdentifier API_AVAILABLE(ios(6.0));

- (UITableView *(^)(UINib *nib, NSString *identifier))objc_registerNibForHeaderFooterViewReuseIdentifier API_AVAILABLE(ios(6.0));

- (UITableView *(^)(Class aClass, NSString *identifier))objc_registerClassForHeaderFooterViewReuseIdentifier API_AVAILABLE(ios(6.0));

- (UITableView *(^)(BOOL remembersLastFocusedIndexPath))objc_remembersLastFocusedIndexPath API_AVAILABLE(ios(9.0));

- (UITableView *(^)(BOOL dragInteractionEnabled))objc_dragInteractionEnabled API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@end

@interface UITableView (ObjcUIDataSource)

- (UITableView *(^)(NSInteger(^)(UITableView *tableView)))objc_numberOfRowsInSection;

- (UITableView *(^)(UITableViewCell(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_cellForRowAtIndexPath;

- (UITableView *(^)(NSInteger(^)(UITableView *tableView)))objc_numberOfSectionsInTableView;

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSInteger section)))objc_titleForHeaderInSection;

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSInteger section)))objc_titleForFooterInSection;

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canEditRowAtIndexPath;

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canMoveRowAtIndexPath;

- (UITableView *(^)(NSArray<NSString *> *(^)(UITableView *tableView)))objc_sectionIndexTitlesForTableView;

- (UITableView *(^)(NSArray<NSString *> *(^)(UITableView *tableView, NSString *title, NSInteger index)))objc_sectionForSectionIndexTitleAtIndex;

- (UITableView *(^)(void(^)(UITableView *tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath *indexPath)))objc_commitEditingStyleForRowAtIndexPath;

- (UITableView *(^)(void(^)(UITableView *tableView, NSIndexPath *indexPath, NSIndexPath *destinationIndexPath)))objc_moveRowAtIndexPathToIndexPathDataSource;


@end

@interface UITableView (ObjcUIDelegate)

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewCell *tableViewCell)))objc_willDisplayCellForRowAtIndexPath;

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_willDisplayHeaderViewForSection API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_willDisplayFooterViewForSection API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPah)))objc_didEndDisplayingCellForRowAtIndexPath API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_didEndDisplayingHeaderViewForSection API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_didEndDisplayingFooterViewForSection API_AVAILABLE(ios(6.0));

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_heightForRowAtIndexPath;

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_heightForHeaderInSection;

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_heightForFooterInSection;

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_estimatedHeightForRowAtIndexPath API_AVAILABLE(ios(7.0));

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_estimatedHeightForHeaderInSection API_AVAILABLE(ios(7.0));

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_estimatedHeightForFooterInSection API_AVAILABLE(ios(7.0));

- (UITableView *(^)(UIView *(^)(UITableView *tableView, NSInteger section)))objc_viewForHeaderInSection;

- (UITableView *(^)(UIView *(^)(UITableView *tableView, NSInteger section)))objc_viewForFooterInSection;

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_accessoryButtonTappedForRowWithIndexPath;

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldHighlightRowAtIndexPath API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didHighlightRowAtIndexPath API_AVAILABLE(ios(6.0));

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didUnhighlightRowAtIndexPath API_AVAILABLE(ios(6.0));

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willSelectRowAtIndexPath API_AVAILABLE(ios(3.0));

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willDeselectRowAtIndexPath API_AVAILABLE(ios(3.0));

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didSelectRowAtIndexPath;

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didDeselectRowAtIndexPath API_AVAILABLE(ios(3.0));

- (UITableView *(^)(UITableViewCellEditingStyle (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_editingStyleForRowAtIndexPath;

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_titleForDeleteConfirmationButtonForRowAtIndexPath;

- (UITableView *(^)(NSArray<UITableViewRowAction *> *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_editActionsForRowAtIndexPath API_DEPRECATED_WITH_REPLACEMENT("objc_trailingSwipeActionsConfigurationForRowAtIndexPath", ios(8.0, 13.0)) API_UNAVAILABLE(tvos);;

- (UITableView *(^)(UISwipeActionsConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_leadingSwipeActionsConfigurationForRowAtIndexPath API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);

- (UITableView *(^)(UISwipeActionsConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_trailingSwipeActionsConfigurationForRowAtIndexPath API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos);

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldIndentWhileEditingRowAtIndexPath;

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willBeginEditingRowAtIndexPath API_UNAVAILABLE(tvos);

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didEndEditingRowAtIndexPath API_UNAVAILABLE(tvos);

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *sourceIndexPath, NSIndexPath *proposedDestinationIndexPath)))objc_targetIndexPathForMoveFromRowAtIndexPathToProposedIndexPath;

- (UITableView *(^)(NSInteger (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_indentationLevelForRowAtIndexPath;

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldShowMenuForRowAtIndexPath API_DEPRECATED_WITH_REPLACEMENT("objc_contextMenuConfigurationForRowAtIndexPathPoint", ios(5.0, 13.0));

- (UITableView *(^)(BOOL (^)(UITableView *tableView, SEL action, NSIndexPath *indexPath, id sender)))objc_canPerformActionForRowAtIndexPathWithSender API_DEPRECATED_WITH_REPLACEMENT("objc_contextMenuConfigurationForRowAtIndexPath", ios(5.0, 13.0));

- (UITableView *(^)(void (^)(UITableView *tableView, SEL action, NSIndexPath *indexPath, id sender)))objc_performActionForRowAtIndexPathWithSender;

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canFocusRowAtIndexPath API_AVAILABLE(ios(9.0));

- (UITableView *(^)(BOOL (^)(UITableView *tableView, UITableViewFocusUpdateContext *context)))objc_shouldUpdateFocusInContext API_AVAILABLE(ios(9.0));

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewFocusUpdateContext *context, UIFocusAnimationCoordinator *coordinator)))objc_didUpdateFocusInContextWithAnimationCoordinator API_AVAILABLE(ios(9.0));

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView)))objc_indexPathForPreferredFocusedViewInTableView API_AVAILABLE(ios(9.0));

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath, id <UISpringLoadedInteractionContext> context)))objc_shouldSpringLoadRowAtIndexPathWithContext API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldBeginMultipleSelectionInteractionAtIndexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);


- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didBeginMultipleSelectionInteractionAtIndexPath API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(void (^)(UITableView *tableView)))objc_tableViewDidEndMultipleSelectionInteraction API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(UIContextMenuConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath, CGPoint point)))objc_contextMenuConfigurationForRowAtIndexPathPoint API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(UITargetedPreview *(^)(UITableView *tableView, UIContextMenuConfiguration *configuration)))objc_previewForHighlightingContextMenuWithConfiguration API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(UITargetedPreview *(^)(UITableView *tableView, UIContextMenuConfiguration *configuration)))objc_previewForDismissingContextMenuWithConfiguration API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(tvos, watchos);

- (UITableView *(^)(void (^)(UITableView *tableView, UIContextMenuConfiguration *configuration, id <UIContextMenuInteractionCommitAnimating> animator)))objc_willPerformPreviewActionForMenuWithConfigurationAnimator API_AVAILABLE(ios(13.0)) API_UNAVAILABLE(watchos, tvos);


@end

@interface UITableView (ObjcUIDataSourcePrefetching)

@end

@interface UITableView (ObjcUIDragDelegate)

@end

@interface UITableView (ObjcUIDropDelegate)

@end
