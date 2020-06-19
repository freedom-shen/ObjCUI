//
// Created by freedom on 2020/6/15.
//

#import "OCUIControlWrapper.h"


@interface OCUIControlWrapper ()

@property(nonatomic, copy) void (^handler)(id );

@end

@implementation OCUIControlWrapper

- (id)initWithHandler:(void (^)(id ))handler {
    self = [super init];
    if (self) {
        self.handler = handler;
    }
    return self;
}

- (void)didSelect:(id )sender {
    if (self.handler) {
        self.handler(sender);
    }
}

@end