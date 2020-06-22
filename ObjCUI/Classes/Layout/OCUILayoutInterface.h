
#import <UIKit/UIKit.h>
#import "OCUILayoutEnum.h"


@protocol OCUILayoutInterface <NSObject>

@required
@property(nonatomic, strong) NSMutableDictionary *ocui_layoutMap;

- (OCUIContainerType)containerType;

@end


