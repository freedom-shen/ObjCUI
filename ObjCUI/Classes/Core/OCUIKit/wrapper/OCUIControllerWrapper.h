//
// Created by freedom on 2020/6/15.
//

#import <Foundation/Foundation.h>

@protocol OCUIControllerWrapperInterface<NSObject>

- (void)didSelect:(id)sender;

@end

@interface OCUIControllerWrapper : NSObject<OCUIControllerWrapperInterface>

@property (nonatomic, copy,readonly) void (^handler)(id);

- (id)initWithHandler:(void (^)(id))handler;

@end