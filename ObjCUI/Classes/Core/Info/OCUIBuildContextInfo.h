//
// Created by freedom on 2020/6/12.
//

#import <Foundation/Foundation.h>

@class OCUIContainer;


@interface OCUIBuildContextInfo : NSObject

@property(nonatomic, strong, readonly) OCUIContainer *nearbyEntityContainer;

@property(nonatomic, strong) NSArray <OCUIContainer *> *containList;

@property(nonatomic, copy) NSDictionary <NSNumber *, NSNumber *> *layoutMap;

@end