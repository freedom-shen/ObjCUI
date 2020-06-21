//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"


@interface OCUIBasicLayout : NSObject <OCUILayoutInterface>


- (void)addSubLayout:(OCUIBasicLayout *)basicLayout;

@end