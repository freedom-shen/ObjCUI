//
// Created by freedom on 2020/4/8.
//

#import <UIKit/UIKit.h>

@class OCUIContainer;
@class MASConstraintMaker;

@protocol OCInterface <NSObject>


+ (id *(^)())create;

- (id *(^)(OCUIContainer *childView))childView;

@property(nonatomic, strong) MASConstraintMaker *constraintMaker;

@end

@protocol OCUIBaseInterface <NSObject, OCInterface>

@required
@property(nonatomic, strong, readonly) UIView *bindView;

- (OCUIContainer *(^)(UIColor *backgroundColor))backgroundColor;

- (OCUIContainer *(^)(double width))width;

- (OCUIContainer *(^)(double height))height;

@end