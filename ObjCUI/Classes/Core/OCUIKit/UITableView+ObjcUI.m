//
// Created by freedom on 2020/6/19.
//

#import <objc/runtime.h>
#import "UITableView+ObjcUI.h"
#import "OCUITableViewDataSourceWrapper.h"
#import "OCUITableViewDelegateWrapper.h"
#import "OCUITableViewPrefetchDataSourceWrapper.h"
#import "OCUITableViewDragDelegateWrapper.h"
#import "OCUITableViewDropDelegateWrapper.h"

static const void *UITableViewObjcUIDataSourceKey = &UITableViewObjcUIDataSourceKey;
static const void *UITableViewObjcUIDelegateKey = &UITableViewObjcUIDelegateKey;
static const void *UITableViewObjcUIPrefetchDataSourceKey = &UITableViewObjcUIPrefetchDataSourceKey;
static const void *UITableViewObjcUIDragDelegateKey = &UITableViewObjcUIDragDelegateKey;
static const void *UITableViewObjcUIDropDelegateKey = &UITableViewObjcUIDropDelegateKey;

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

@implementation UITableView (ObjcUIDataSource)

- (UITableView *(^)(NSInteger(^)(UITableView *tableView)))objc_numberOfRowsInSection {
    return ^UITableView *(NSInteger (^pFunction)(UITableView *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceNumberOfRowsInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UITableViewCell(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_cellForRowAtIndexPath {
    return ^UITableView *(UITableViewCell (^pFunction)(UITableView *, NSIndexPath *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceCellForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSInteger(^)(UITableView *tableView)))objc_numberOfSectionsInTableView {
    return ^UITableView *(NSInteger (^pFunction)(UITableView *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceNumberOfSectionsInTableViewKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSInteger section)))objc_titleForHeaderInSection {
    return ^UITableView *(NSString *(^pFunction)(UITableView *, NSInteger)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceTitleForHeaderInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSInteger section)))objc_titleForFooterInSection {
    return ^UITableView *(NSString *(^pFunction)(UITableView *, NSInteger)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceTitleForFooterInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canEditRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceCanEditRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canMoveRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceCanMoveRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSArray<NSString *> *(^)(UITableView *tableView)))objc_sectionIndexTitlesForTableView {
    return ^UITableView *(NSArray<NSString *> *(^pFunction)(UITableView *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceSectionIndexTitlesForTableViewKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSArray<NSString *> *(^)(UITableView *tableView, NSString *title, NSInteger index)))objc_sectionForSectionIndexTitleAtIndex {
    return ^UITableView *(NSArray<NSString *> *(^pFunction)(UITableView *, NSString *, NSInteger)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceSectionForSectionIndexTitleKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void(^)(UITableView *tableView, UITableViewCellEditingStyle editingStyle, NSIndexPath *indexPath)))objc_commitEditingStyleForRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, UITableViewCellEditingStyle, NSIndexPath *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataSourceCommitEditingStyleForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void(^)(UITableView *tableView, NSIndexPath *indexPath, NSIndexPath *destinationIndexPath)))objc_moveRowAtIndexPathToIndexPathDataSource {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *, NSIndexPath *)) {
        self.dataSourceWrapper.delegateMap[OCUITableViewDataMoveRowAtIndexPathToIndexPathKey] = pFunction;
        return self;
    };
}


- (OCUITableViewDataSourceWrapper *)dataSourceWrapper {
    OCUITableViewDataSourceWrapper *sourceWrapper = objc_getAssociatedObject(self, UITableViewObjcUIDataSourceKey);
    if (!sourceWrapper) {
        sourceWrapper = [[OCUITableViewDataSourceWrapper alloc] init];
        self.dataSource = sourceWrapper;
        objc_setAssociatedObject(self, UITableViewObjcUIDataSourceKey, sourceWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return sourceWrapper;
}

@end


@implementation UITableView (ObjcUIDelegate)

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewCell *tableViewCell)))objc_willDisplayCellForRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, UITableViewCell *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillDisplayCellForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_willDisplayHeaderViewForSection {
    return ^UITableView *(void (^pFunction)(UITableView *, UIView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillDisplayHeaderViewForSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_willDisplayFooterViewForSection {
    return ^UITableView *(void (^pFunction)(UITableView *, UIView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillDisplayFooterViewForSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewCell *cell, NSIndexPath *indexPah)))objc_didEndDisplayingCellForRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, UITableViewCell *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidEndDisplayingCellForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_didEndDisplayingHeaderViewForSection {
    return ^UITableView *(void (^pFunction)(UITableView *, UIView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidEndDisplayingHeaderViewForSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UIView *view, NSInteger section)))objc_didEndDisplayingFooterViewForSection {
    return ^UITableView *(void (^pFunction)(UITableView *, UIView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidEndDisplayingFooterViewForSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_heightForRowAtIndexPath {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateHeightForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_heightForHeaderInSection {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateHeightForHeaderInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_heightForFooterInSection {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateHeightForFooterInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_estimatedHeightForRowAtIndexPath {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateEstimatedHeightForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_estimatedHeightForHeaderInSection {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateEstimatedHeightForHeaderInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(CGFloat (^)(UITableView *tableView, NSInteger section)))objc_estimatedHeightForFooterInSection {
    return ^UITableView *(CGFloat (^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateEstimatedHeightForFooterInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UIView *(^)(UITableView *tableView, NSInteger section)))objc_viewForHeaderInSection {
    return ^UITableView *(UIView *(^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateViewForHeaderInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UIView *(^)(UITableView *tableView, NSInteger section)))objc_viewForFooterInSection {
    return ^UITableView *(UIView *(^pFunction)(UITableView *, NSInteger)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateViewForFooterInSectionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_accessoryButtonTappedForRowWithIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateAccessoryTypeForRowWithIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldHighlightRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldHighlightRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didHighlightRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidHighlightRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didUnhighlightRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidUnhighlightRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willSelectRowAtIndexPath {
    return ^UITableView *(NSIndexPath *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillSelectRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willDeselectRowAtIndexPath {
    return ^UITableView *(NSIndexPath *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillDeselectRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didSelectRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidSelectRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didDeselectRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidDeselectRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UITableViewCellEditingStyle (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_editingStyleForRowAtIndexPath {
    return ^UITableView *(UITableViewCellEditingStyle (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateEditingStyleForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSString *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_titleForDeleteConfirmationButtonForRowAtIndexPath {
    return ^UITableView *(NSString *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateTitleForDeleteConfirmationButtonForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSArray<UITableViewRowAction *> *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_editActionsForRowAtIndexPath {
    return ^UITableView *(NSArray<UITableViewRowAction *> *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateEditActionsForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UISwipeActionsConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_leadingSwipeActionsConfigurationForRowAtIndexPath {
    return ^UITableView *(UISwipeActionsConfiguration *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateLeadingSwipeActionsConfigurationForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UISwipeActionsConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath)))objc_trailingSwipeActionsConfigurationForRowAtIndexPath {
    return ^UITableView *(UISwipeActionsConfiguration *(^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateTrailingSwipeActionsConfigurationForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldIndentWhileEditingRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldIndentWhileEditingRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_willBeginEditingRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillBeginEditingRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didEndEditingRowAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidEndEditingRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView, NSIndexPath *sourceIndexPath, NSIndexPath *proposedDestinationIndexPath)))objc_targetIndexPathForMoveFromRowAtIndexPathToProposedIndexPath {
    return ^UITableView *(NSIndexPath *(^pFunction)(UITableView *, NSIndexPath *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateTargetIndexPathForMoveFromRowAtIndexPathToProposedIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSInteger (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_indentationLevelForRowAtIndexPath {
    return ^UITableView *(NSInteger (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateIndentationLevelForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldShowMenuForRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldShowMenuForRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, SEL action, NSIndexPath *indexPath, id sender)))objc_canPerformActionForRowAtIndexPathWithSender {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, SEL, NSIndexPath *, id)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateCanPerformActionForRowAtIndexPathWithSenderKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, SEL action, NSIndexPath *indexPath, id sender)))objc_performActionForRowAtIndexPathWithSender {
    return ^UITableView *(void (^pFunction)(UITableView *, SEL, NSIndexPath *, id)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegatePerformActionForRowAtIndexPathWithSenderKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_canFocusRowAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateCanFocusRowAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, UITableViewFocusUpdateContext *context)))objc_shouldUpdateFocusInContext {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, UITableViewFocusUpdateContext *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldUpdateFocusInContextKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UITableViewFocusUpdateContext *context, UIFocusAnimationCoordinator *coordinator)))objc_didUpdateFocusInContextWithAnimationCoordinator {
    return ^UITableView *(void (^pFunction)(UITableView *, UITableViewFocusUpdateContext *, UIFocusAnimationCoordinator *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidUpdateFocusInContextWithAnimationCoordinatorKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(NSIndexPath *(^)(UITableView *tableView)))objc_indexPathForPreferredFocusedViewInTableView {
    return ^UITableView *(NSIndexPath *(^pFunction)(UITableView *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateIndexPathForPreferredFocusedViewInTableViewKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath, id <UISpringLoadedInteractionContext> context)))objc_shouldSpringLoadRowAtIndexPathWithContext {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *, id <UISpringLoadedInteractionContext>)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldSpringLoadRowAtIndexPathWithContextKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(BOOL (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_shouldBeginMultipleSelectionInteractionAtIndexPath {
    return ^UITableView *(BOOL (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateShouldBeginMultipleSelectionInteractionAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, NSIndexPath *indexPath)))objc_didBeginMultipleSelectionInteractionAtIndexPath {
    return ^UITableView *(void (^pFunction)(UITableView *, NSIndexPath *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidBeginMultipleSelectionInteractionAtIndexPathKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView)))objc_tableViewDidEndMultipleSelectionInteraction {
    return ^UITableView *(void (^pFunction)(UITableView *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateDidEndMultipleSelectionInteractionKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UIContextMenuConfiguration *(^)(UITableView *tableView, NSIndexPath *indexPath, CGPoint point)))objc_contextMenuConfigurationForRowAtIndexPathPoint {
    return ^UITableView *(UIContextMenuConfiguration *(^pFunction)(UITableView *, NSIndexPath *, CGPoint)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateContextMenuConfigurationForRowAtIndexPathPointKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UITargetedPreview *(^)(UITableView *tableView, UIContextMenuConfiguration *configuration)))objc_previewForHighlightingContextMenuWithConfiguration {
    return ^UITableView *(UITargetedPreview *(^pFunction)(UITableView *, UIContextMenuConfiguration *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegatePreviewForHighlightingContextMenuWithConfigurationKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(UITargetedPreview *(^)(UITableView *tableView, UIContextMenuConfiguration *configuration)))objc_previewForDismissingContextMenuWithConfiguration {
    return ^UITableView *(UITargetedPreview *(^pFunction)(UITableView *, UIContextMenuConfiguration *)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegatePreviewForDismissingContextMenuWithConfigurationKey] = pFunction;
        return self;
    };
}

- (UITableView *(^)(void (^)(UITableView *tableView, UIContextMenuConfiguration *configuration, id <UIContextMenuInteractionCommitAnimating> animator)))objc_willPerformPreviewActionForMenuWithConfigurationAnimator {
    return ^UITableView *(void (^pFunction)(UITableView *, UIContextMenuConfiguration *, id <UIContextMenuInteractionCommitAnimating>)) {
        self.delegateWrapper.delegateMap[OCUITableViewDelegateWillPerformPreviewActionForMenuWithConfigurationAnimatorKey] = pFunction;
        return self;
    };
}

- (OCUITableViewDelegateWrapper *)delegateWrapper {
    OCUITableViewDelegateWrapper *delegateWrapper = objc_getAssociatedObject(self, UITableViewObjcUIDelegateKey);
    if (!delegateWrapper) {
        delegateWrapper = [[OCUITableViewDelegateWrapper alloc] init];
        self.delegate = delegateWrapper;
        objc_setAssociatedObject(self, UITableViewObjcUIDelegateKey, delegateWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWrapper;
}

@end

@implementation UITableView (ObjcUIDataSourcePrefetching)

- (OCUITableViewPrefetchDataSourceWrapper *)prefetchDataSourceWrapper {
    OCUITableViewPrefetchDataSourceWrapper *sourceWrapper = objc_getAssociatedObject(self, UITableViewObjcUIPrefetchDataSourceKey);
    if (!sourceWrapper) {
        sourceWrapper = [[OCUITableViewPrefetchDataSourceWrapper alloc] init];
        self.prefetchDataSource = sourceWrapper;
        objc_setAssociatedObject(self, UITableViewObjcUIPrefetchDataSourceKey, sourceWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return sourceWrapper;
}

@end

@implementation UITableView (ObjcUIDragDelegate)

- (OCUITableViewDragDelegateWrapper *)dragDelegateWrapper {
    OCUITableViewDragDelegateWrapper *delegateWrapper = objc_getAssociatedObject(self, UITableViewObjcUIDragDelegateKey);
    if (!delegateWrapper) {
        delegateWrapper = [[OCUITableViewDragDelegateWrapper alloc] init];
        self.dragDelegate = delegateWrapper;
        objc_setAssociatedObject(self, UITableViewObjcUIDragDelegateKey, delegateWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWrapper;
}

@end

@implementation UITableView (ObjcUIDropDelegate)

- (OCUITableViewDropDelegateWrapper *)dropDelegateWrapper {
    OCUITableViewDropDelegateWrapper *delegateWrapper = objc_getAssociatedObject(self, UITableViewObjcUIDropDelegateKey);
    if (!delegateWrapper) {
        delegateWrapper = [[OCUITableViewDropDelegateWrapper alloc] init];
        self.dropDelegate = delegateWrapper;
        objc_setAssociatedObject(self, UITableViewObjcUIDropDelegateKey, delegateWrapper, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    }
    return delegateWrapper;
}
@end