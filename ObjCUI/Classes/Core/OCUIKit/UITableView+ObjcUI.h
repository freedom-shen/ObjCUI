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
