//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>


@interface OCUITableViewPrefetchDataSourceWrapper : NSObject <UITableViewDataSourcePrefetching>

@property(nonatomic, strong, readonly) NSMutableDictionary <NSString *, id> *delegateMap;

@end