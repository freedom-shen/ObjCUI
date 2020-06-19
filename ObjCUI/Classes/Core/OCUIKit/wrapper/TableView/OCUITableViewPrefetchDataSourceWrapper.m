//
// Created by freedom on 2020/6/19.
//

#import "OCUITableViewPrefetchDataSourceWrapper.h"


@implementation OCUITableViewPrefetchDataSourceWrapper
@synthesize delegateMap = _delegateMap;
- (NSMutableDictionary<NSString *, id> *)delegateMap {
    if (!_delegateMap) {
        _delegateMap = [NSMutableDictionary dictionary];
    }
    return _delegateMap;
}

@end