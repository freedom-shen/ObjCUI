//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>


typedef NSString *OCUITableViewPrefetchDataSourceKey NS_EXTENSIBLE_STRING_ENUM;

static const OCUITableViewPrefetchDataSourceKey OCUITableViewDelegatePrefetchRowsAtIndexPathsKey = @"OCUITableViewDelegatePrefetchRowsAtIndexPathsKey";
static const OCUITableViewPrefetchDataSourceKey OCUITableViewDelegateCancelPrefetchingForRowsAtIndexPathsKey = @"OCUITableViewDelegateCancelPrefetchingForRowsAtIndexPathsKey";

@interface OCUITableViewPrefetchDataSourceWrapper : NSObject <UITableViewDataSourcePrefetching>

@property(nonatomic, strong, readonly) NSMutableDictionary <OCUITableViewPrefetchDataSourceKey, id> *delegateMap;

@end