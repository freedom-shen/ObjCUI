//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import <Masonry/Masonry.h>

@class OCUIPadding;
@class OCUISizeBox;
@class OCUICenter;
@class OCUIColumn;
@class OCUIRow;

@interface UIView (Layout) <OCUILayoutInterface>

- (OCUIPadding *)objc_convertPadding;
- (OCUISizeBox *)objc_convertSizeBox;
- (OCUICenter *)objc_convertCenter;

- (OCUIColumn *)objc_convertColumn;
- (OCUIRow *)objc_convertRow;


@end