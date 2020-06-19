//
// Created by freedom on 2020/6/19.
//

#import <Foundation/Foundation.h>


@interface OCUITableViewDragDelegateWrapper : NSObject<UITableViewDragDelegate>

@property(nonatomic, strong, readonly) NSMutableDictionary <NSString *, id> *delegateMap;

@end