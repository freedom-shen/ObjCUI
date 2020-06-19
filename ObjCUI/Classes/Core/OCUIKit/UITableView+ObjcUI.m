//
// Created by freedom on 2020/6/19.
//

#import "UITableView+ObjcUI.h"


@implementation UITableView (ObjcUI)

+ (UITableView *(^)())objc_create {
    return ^UITableView * {
        UITableView *tableView = [[UITableView alloc] init];
        return tableView;
    };
}

+ (UITableView *(^)(CGRect frame, UITableViewStyle style))objc_createBtFrame {
    return ^UITableView *(CGRect frame, UITableViewStyle style) {
        UITableView *tableView = [[UITableView alloc] initWithFrame:frame style:style];
        return tableView;
    };
}

+ (UITableView *(^)(NSCoder *coder))objc_createByCode {
    return ^UITableView *(NSCoder *coder) {
        UITableView *tableView = [[UITableView alloc] initWithCoder:coder];
        return tableView;
    };
}

- (UITableView *(^)(CGFloat rowHeight))objc_rowHeight {
    return ^UITableView *(CGFloat rowHeight) {
        self.rowHeight = rowHeight;
        return self;
    };
}

- (UITableView *(^)(CGFloat sectionHeaderHeight))objc_sectionHeaderHeight {
    return ^UITableView *(CGFloat sectionHeaderHeight) {
        self.sectionHeaderHeight = sectionHeaderHeight;
        return self;
    };
}

- (UITableView *(^)(CGFloat sectionFooterHeight))objc_sectionFooterHeight {
    return ^UITableView *(CGFloat sectionFooterHeight) {
        self.sectionFooterHeight = sectionFooterHeight;
        return self;
    };
}

- (UITableView *(^)(CGFloat estimatedRowHeight))objc_estimatedRowHeight {
    return ^UITableView *(CGFloat estimatedRowHeight) {
        self.estimatedRowHeight = estimatedRowHeight;
        return self;
    };
}

- (UITableView *(^)(CGFloat estimatedSectionHeaderHeight))objc_estimatedSectionHeaderHeight {
    return ^UITableView *(CGFloat estimatedSectionHeaderHeight) {
        self.estimatedSectionHeaderHeight = estimatedSectionHeaderHeight;
        return self;
    };
}

- (UITableView *(^)(CGFloat estimatedSectionFooterHeight))objc_estimatedSectionFooterHeight {
    return ^UITableView *(CGFloat estimatedSectionFooterHeight) {
        self.estimatedSectionFooterHeight = estimatedSectionFooterHeight;
        return self;
    };
}

- (UITableView *(^)(UIEdgeInsets separatorInset))objc_separatorInset {
    return ^UITableView *(UIEdgeInsets separatorInset) {
        self.separatorInset = separatorInset;
        return self;
    };
}

- (UITableView *(^)(UITableViewSeparatorInsetReference separatorInsetReference))objc_separatorInsetReference {
    return ^UITableView *(UITableViewSeparatorInsetReference separatorInsetReference) {
        self.separatorInsetReference = separatorInsetReference;
        return self;
    };
}

- (UITableView *(^)(UIView *backgroundView))objc_backgroundView {
    return ^UITableView *(UIView *backgroundView) {
        self.backgroundView = backgroundView;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *indexPath, UITableViewScrollPosition scrollPosition, BOOL animated))objc_scrollToRowAtIndexPathAtScrollPositionAnimated {
    return ^UITableView *(NSIndexPath *indexPath, UITableViewScrollPosition scrollPosition, BOOL animated) {
        [self scrollToRowAtIndexPath:indexPath atScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (UITableView *(^)(UITableViewScrollPosition scrollPosition, BOOL animated))objc_scrollToNearestSelectedRowAtScrollPositionAnimated {
    return ^UITableView *(UITableViewScrollPosition scrollPosition, BOOL animated) {
        [self scrollToNearestSelectedRowAtScrollPosition:scrollPosition animated:animated];
        return self;
    };
}

- (UITableView *(^)(void (NS_NOESCAPE ^updates)(), void (^finished)(BOOL)))performBatchUpdatesCompletion {
    return ^UITableView *(void (^updates)(), void (^finished)(BOOL)) {
        [self performBatchUpdates:updates completion:finished];
        return self;
    };
}

- (UITableView *(^)())objc_beginUpdates {
    return ^UITableView * {
        [self beginUpdates];
        return self;
    };
}

- (UITableView *(^)())objc_endUpdates {
    return ^UITableView * {
        [self endUpdates];
        return self;
    };
}

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_insertSectionsWithRowAnimation {
    return ^UITableView *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self insertSections:sections withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_deleteSectionsWithRowAnimation {
    return ^UITableView *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self deleteSections:sections withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSIndexSet *sections, UITableViewRowAnimation animation))objc_reloadSectionsWithRowAnimation {
    return ^UITableView *(NSIndexSet *sections, UITableViewRowAnimation animation) {
        [self reloadSections:sections withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSInteger section, NSInteger newSection))objc_moveSectionToSection {
    return ^UITableView *(NSInteger section, NSInteger newSection) {
        [self moveSection:section toSection:newSection];
        return self;
    };
}

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_insertRowsAtIndexPathsWithRowAnimation {
    return ^UITableView *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self insertRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_deleteRowsAtIndexPathsWithRowAnimation {
    return ^UITableView *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self deleteRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation))objc_reloadRowsAtIndexPathsWithRowAnimation {
    return ^UITableView *(NSArray<NSIndexPath *> *indexPaths, UITableViewRowAnimation animation) {
        [self reloadRowsAtIndexPaths:indexPaths withRowAnimation:animation];
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *indexPath, NSIndexPath *newIndexPath))objc_moveRowAtIndexPathToIndexPath {
    return ^UITableView *(NSIndexPath *indexPath, NSIndexPath *newIndexPath) {
        [self moveRowAtIndexPath:indexPath toIndexPath:newIndexPath];
        return self;
    };
}

- (UITableView *(^)())objc_reloadData {
    return ^UITableView * {
        [self reloadData];
        return self;
    };
}

- (UITableView *(^)())objc_reloadSectionIndexTitles {
    return ^UITableView * {
        [self reloadSectionIndexTitles];
        return self;
    };
}

- (UITableView *(^)(BOOL editing))objc_editing {
    return ^UITableView *(BOOL editing) {
        self.editing = editing;
        return self;
    };
}

- (UITableView *(^)(BOOL editing, BOOL animated))objc_editingAnimated {
    return ^UITableView *(BOOL editing, BOOL animated) {
        [self setEditing:editing animated:animated];
        return self;
    };
}

- (UITableView *(^)(BOOL allowsSelection))objc_allowsSelection {
    return ^UITableView *(BOOL allowsSelection) {
        self.allowsSelection = allowsSelection;
        return self;
    };
}

- (UITableView *(^)(BOOL allowsSelectionDuringEditing))objc_allowsSelectionDuringEditing {
    return ^UITableView *(BOOL allowsSelectionDuringEditing) {
        self.allowsSelectionDuringEditing = allowsSelectionDuringEditing;
        return self;
    };
}

- (UITableView *(^)(BOOL allowsMultipleSelection))objc_allowsMultipleSelection {
    return ^UITableView *(BOOL allowsMultipleSelection) {
        self.allowsMultipleSelection = allowsMultipleSelection;
        return self;
    };
}

- (UITableView *(^)(BOOL allowsMultipleSelectionDuringEditing))objc_allowsMultipleSelectionDuringEditing {
    return ^UITableView *(BOOL allowsMultipleSelectionDuringEditing) {
        self.allowsMultipleSelectionDuringEditing = allowsMultipleSelectionDuringEditing;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *indexPath, BOOL animated, UITableViewScrollPosition scrollPosition))objc_selectRowAtIndexPathAnimatedScrollPosition {
    return ^UITableView *(NSIndexPath *indexPath, BOOL animated, UITableViewScrollPosition scrollPosition) {
        [self selectRowAtIndexPath:indexPath animated:animated scrollPosition:scrollPosition];
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *indexPath, BOOL animated))objc_deselectRowAtIndexPathAnimated {
    return ^UITableView *(NSIndexPath *indexPath, BOOL animated) {
        [self deselectRowAtIndexPath:indexPath animated:animated];
        return self;
    };
}

- (UITableView *(^)(NSInteger sectionIndexMinimumDisplayRowCount))objc_sectionIndexMinimumDisplayRowCount {
    return ^UITableView *(NSInteger sectionIndexMinimumDisplayRowCount) {
        self.sectionIndexMinimumDisplayRowCount = sectionIndexMinimumDisplayRowCount;
        return self;
    };
}

- (UITableView *(^)(UIColor *sectionIndexColor))objc_sectionIndexColor {
    return ^UITableView *(UIColor *sectionIndexColor) {
        self.sectionIndexColor = sectionIndexColor;
        return self;
    };
}

- (UITableView *(^)(UIColor *sectionIndexBackgroundColor))objc_sectionIndexBackgroundColor {
    return ^UITableView *(UIColor *sectionIndexBackgroundColor) {
        self.sectionIndexBackgroundColor = sectionIndexBackgroundColor;
        return self;
    };
}

- (UITableView *(^)(UIColor *sectionIndexTrackingBackgroundColor))objc_sectionIndexTrackingBackgroundColor {
    return ^UITableView *(UIColor *sectionIndexTrackingBackgroundColor) {
        self.sectionIndexTrackingBackgroundColor = sectionIndexTrackingBackgroundColor;
        return self;
    };
}

- (UITableView *(^)(UITableViewCellSeparatorStyle separatorStyle))objc_separatorStyle {
    return ^UITableView *(UITableViewCellSeparatorStyle separatorStyle) {
        self.separatorStyle = separatorStyle;
        return self;
    };
}

- (UITableView *(^)(UIColor *separatorColor))objc_separatorColor {
    return ^UITableView *(UIColor *separatorColor) {
        self.separatorColor = separatorColor;
        return self;
    };
}

- (UITableView *(^)(UIVisualEffect *separatorEffect))objc_separatorEffect {
    return ^UITableView *(UIVisualEffect *separatorEffect) {
        self.separatorEffect = separatorEffect;
        return self;
    };
}

- (UITableView *(^)(BOOL cellLayoutMarginsFollowReadableWidth))objc_cellLayoutMarginsFollowReadableWidth {
    return ^UITableView *(BOOL cellLayoutMarginsFollowReadableWidth) {
        self.cellLayoutMarginsFollowReadableWidth = cellLayoutMarginsFollowReadableWidth;
        return self;
    };
}

- (UITableView *(^)(BOOL insetsContentViewsToSafeArea))objc_insetsContentViewsToSafeArea {
    return ^UITableView *(BOOL insetsContentViewsToSafeArea) {
        self.insetsContentViewsToSafeArea = insetsContentViewsToSafeArea;
        return self;
    };
}

- (UITableView *(^)(UIView *tableHeaderView))objc_tableHeaderView {
    return ^UITableView *(UIView *tableHeaderView) {
        self.tableHeaderView = tableHeaderView;
        return self;
    };
}

- (UITableView *(^)(UIView *tableFooterView))objc_tableFooterView {
    return ^UITableView *(UIView *tableFooterView) {
        self.tableFooterView = tableFooterView;
        return self;
    };
}

- (UITableView *(^)(UINib *nib, NSString *identifier))objc_registerNibForCellReuseIdentifier {
    return ^UITableView *(UINib *nib, NSString *identifier) {
        [self registerNib:nib forCellReuseIdentifier:identifier];
        return self;
    };
}

- (UITableView *(^)(Class cellClass, NSString *identifier))objc_registerClassForCellReuseIdentifier {
    return ^UITableView *(Class cellClass, NSString *identifier) {
        [self registerClass:cellClass forCellReuseIdentifier:identifier];
        return self;
    };
}

- (UITableView *(^)(UINib *nib, NSString *identifier))objc_registerNibForHeaderFooterViewReuseIdentifier {
    return ^UITableView *(UINib *nib, NSString *identifier) {
        [self registerNib:nib forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (UITableView *(^)(Class aClass, NSString *identifier))objc_registerClassForHeaderFooterViewReuseIdentifier {
    return ^UITableView *(Class aClass, NSString *identifier) {
        [self registerClass:aClass forHeaderFooterViewReuseIdentifier:identifier];
        return self;
    };
}

- (UITableView *(^)(BOOL remembersLastFocusedIndexPath))objc_remembersLastFocusedIndexPath {
    return ^UITableView *(BOOL remembersLastFocusedIndexPath) {
        self.remembersLastFocusedIndexPath = remembersLastFocusedIndexPath;
        return self;
    };
}

- (UITableView *(^)(BOOL dragInteractionEnabled))objc_dragInteractionEnabled {
    return ^UITableView *(BOOL dragInteractionEnabled) {
        self.dragInteractionEnabled = dragInteractionEnabled;
        return self;
    };
}


@end