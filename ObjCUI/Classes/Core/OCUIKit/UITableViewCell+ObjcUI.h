//
// Created by freedom on 2020/6/20.
//

#import <Foundation/Foundation.h>

@interface UITableViewCell (ObjcUI)


+ (UITableViewCell *(^)(UITableViewCellStyle style, NSString *reuseIdentifier))objc_create;

- (UITableViewCell *(^)(UIView *backgroundView))objc_backgroundView;

- (UITableViewCell *(^)(UIView *selectedBackgroundView))objc_selectedBackgroundView;

- (UITableViewCell *(^)(UIView *multipleSelectionBackgroundView))objc_multipleSelectionBackgroundView;

- (UITableViewCell *(^)(UITableViewCellSelectionStyle selectionStyle))objc_selectionStyle;

- (UITableViewCell *(^)(BOOL selected, BOOL animated))objc_setSelectedAnimated;

- (UITableViewCell *(^)(BOOL highlighted, BOOL animated))objc_setHighlightedAnimated;

- (UITableViewCell *(^)(BOOL showsReorderControl))objc_showsReorderControl;

- (UITableViewCell *(^)(BOOL shouldIndentWhileEditing))objc_shouldIndentWhileEditing;

- (UITableViewCell *(^)(UITableViewCellAccessoryType accessoryType))objc_accessoryType;

- (UITableViewCell *(^)(UIView *accessoryView))objc_accessoryView;

- (UITableViewCell *(^)(UITableViewCellAccessoryType editingAccessoryType))objc_editingAccessoryType;

- (UITableViewCell *(^)(UIView *editingAccessoryView))objc_editingAccessoryView;

- (UITableViewCell *(^)(NSInteger indentationLevel))objc_indentationLevel;

- (UITableViewCell *(^)(NSInteger indentationWidth))objc_indentationWidth;

- (UITableViewCell *(^)(UIEdgeInsets separatorInset))objc_separatorInset;

- (UITableViewCell *(^)(BOOL editing, BOOL animated))objc_setEditingAnimated;

- (UITableViewCell *(^)(BOOL userInteractionEnabledWhileDragging))objc_userInteractionEnabledWhileDragging API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos);

@end