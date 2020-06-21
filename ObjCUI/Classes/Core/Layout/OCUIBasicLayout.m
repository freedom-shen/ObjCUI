//
// Created by freedom on 2020/6/21.
//

#import "OCUIBasicLayout.h"


@implementation OCUIBasicLayout

@synthesize ocui_layoutMap = _ocui_layoutMap;

- (void)addSubLayout:(OCUIBasicLayout *)basicLayout {

}

#pragma mark - Interface

- (OCUIContainerType)containerType {
    return OCUIContainerLayoutType;
}


#pragma mark - Set & Get

- (void)setOcui_layoutMap:(NSMutableDictionary *)ocui_layoutMap {
    _ocui_layoutMap = [ocui_layoutMap mutableCopy];
}

- (NSMutableDictionary *)ocui_layoutMap {
    if (!_ocui_layoutMap) {
        _ocui_layoutMap = [NSMutableDictionary dictionary];
    }
    return _ocui_layoutMap;
}

@end