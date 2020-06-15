//
// Created by freedom on 2020/4/8.
//

#import <UIKit/UIKit.h>
#import "OCUIDefine.h"

@class OCUIContainer;
@class MASConstraintMaker;

@protocol OCInterface <NSObject>


@required
+ (id (^)())create;

@optional

- (id (^)(OCUIContainer *childView))childView;

//@property(nonatomic, weak) OCUIBuildContextInfo *contextInfo;

@property(nonatomic, strong, readonly) NSDictionary <NSNumber *, NSNumber *> *layoutMap;

- (void)makeConstraints;


@end

@protocol OCUIBaseInterface <NSObject, OCInterface>

@required
@property(nonatomic, strong, readonly) UIView *bindView;

- (OCUIContainer *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIContainer *(^)(double width))width;

- (OCUIContainer *(^)(double height))height;

- (OCUIContainerType)containerType;

@end