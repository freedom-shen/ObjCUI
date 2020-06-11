//
// Created by freedom on 2020/6/11.
//

#import "UIView+Convert.h"
#import "OCUIContainer.h"


@implementation UIView (Convert)

- (OCUIContainer *)convertToOCUIContainer {
    OCUIContainer *container = [[OCUIContainer alloc] initWithCustomer:self];
    return container;
}

@end