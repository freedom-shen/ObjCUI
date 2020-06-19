//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>


@interface OCUITableViewDropDelegateWrapper : NSObject<UITableViewDropDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <NSString *, id> *delegateMap;

@end