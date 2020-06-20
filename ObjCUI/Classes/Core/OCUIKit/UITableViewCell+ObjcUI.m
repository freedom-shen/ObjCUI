//
// Created by freedom on 2020/6/20.
//

#import "UITableViewCell+ObjcUI.h"


@implementation UITableViewCell (ObjcUI)


+ (UITableViewCell *(^)(UITableViewCellStyle style, NSString *reuseIdentifier))objc_create {
    return ^UITableViewCell *(UITableViewCellStyle style, NSString *reuseIdentifier) {
        UITableViewCell *tableViewCell = [[UITableViewCell alloc] initWithStyle:style reuseIdentifier:reuseIdentifier];
        return tableViewCell;
    };
}

- (UITableViewCell *(^)(UIView *backgroundView))objc_backgroundView {
    return ^UITableViewCell *(UIView *backgroundView) {
        self.backgroundView = backgroundView;
        return self;
    };
}

- (UITableViewCell *(^)(UIView *selectedBackgroundView))objc_selectedBackgroundView {
    return ^UITableViewCell *(UIView *selectedBackgroundView) {
        self.selectedBackgroundView = selectedBackgroundView;
        return self;
    };
}

- (UITableViewCell *(^)(UIView *multipleSelectionBackgroundView))objc_multipleSelectionBackgroundView {
    return ^UITableViewCell *(UIView *multipleSelectionBackgroundView) {
        self.multipleSelectionBackgroundView = multipleSelectionBackgroundView;
        return self;
    };
}

- (UITableViewCell *(^)(UITableViewCellSelectionStyle selectionStyle))objc_selectionStyle {
    return ^UITableViewCell *(UITableViewCellSelectionStyle selectionStyle) {
        self.selectionStyle = selectionStyle;
        return self;
    };
}

- (UITableViewCell *(^)(BOOL selected, BOOL animated))objc_setSelectedAnimated {
    return ^UITableViewCell *(BOOL selected, BOOL animated) {
        [self setSelected:selected animated:animated];
        return self;
    };
}

- (UITableViewCell *(^)(BOOL highlighted, BOOL animated))objc_setHighlightedAnimated {
    return ^UITableViewCell *(BOOL highlighted, BOOL animated) {
        [self setHighlighted:highlighted animated:animated];
        return self;
    };
}

- (UITableViewCell *(^)(BOOL showsReorderControl))objc_showsReorderControl {
    return ^UITableViewCell *(BOOL showsReorderControl) {
        self.showsReorderControl = showsReorderControl;
        return self;
    };
}

- (UITableViewCell *(^)(BOOL shouldIndentWhileEditing))objc_shouldIndentWhileEditing {
    return ^UITableViewCell *(BOOL shouldIndentWhileEditing) {
        self.shouldIndentWhileEditing = shouldIndentWhileEditing;
        return self;
    };
}

- (UITableViewCell *(^)(UITableViewCellAccessoryType accessoryType))objc_accessoryType {
    return ^UITableViewCell *(UITableViewCellAccessoryType accessoryType) {
        self.accessoryType = accessoryType;
        return self;
    };
}

- (UITableViewCell *(^)(UIView *accessoryView))objc_accessoryView {
    return ^UITableViewCell *(UIView *accessoryView) {
        self.accessoryView = accessoryView;
        return self;
    };
}

- (UITableViewCell *(^)(UITableViewCellAccessoryType editingAccessoryType))objc_editingAccessoryType {
    return ^UITableViewCell *(UITableViewCellAccessoryType editingAccessoryType) {
        self.editingAccessoryType = editingAccessoryType;
        return self;
    };
}

- (UITableViewCell *(^)(UIView *editingAccessoryView))objc_editingAccessoryView {
    return ^UITableViewCell *(UIView *editingAccessoryView) {
        self.editingAccessoryView = editingAccessoryView;
        return self;
    };
}

- (UITableViewCell *(^)(NSInteger indentationLevel))objc_indentationLevel {
    return ^UITableViewCell *(NSInteger indentationLevel) {
        self.indentationLevel = indentationLevel;
        return self;
    };
}

- (UITableViewCell *(^)(NSInteger indentationWidth))objc_indentationWidth {
    return ^UITableViewCell *(NSInteger indentationWidth) {
        self.indentationWidth = indentationWidth;
        return self;
    };
}

- (UITableViewCell *(^)(UIEdgeInsets separatorInset))objc_separatorInset {
    return ^UITableViewCell *(UIEdgeInsets separatorInset) {
        self.separatorInset = separatorInset;
        return self;
    };
}

- (UITableViewCell *(^)(BOOL editing, BOOL animated))objc_setEditingAnimated {
    return ^UITableViewCell *(BOOL editing, BOOL animated) {
        [self setEditing:editing animated:animated];
        return self;
    };
}

- (UITableViewCell *(^)(BOOL userInteractionEnabledWhileDragging))objc_userInteractionEnabledWhileDragging API_AVAILABLE(ios(11.0)) API_UNAVAILABLE(tvos, watchos) {
    return ^UITableViewCell *(BOOL userInteractionEnabledWhileDragging) {
        self.userInteractionEnabledWhileDragging = userInteractionEnabledWhileDragging;
        return self;
    };
}

@end