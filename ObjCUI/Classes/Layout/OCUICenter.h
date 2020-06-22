//
// Created by freedom on 2020/6/21.
//

#import <Foundation/Foundation.h>
#import "OCUILayoutInterface.h"
#import "OCUIBasicLayout.h"
#import "OCUISizeBox.h"


@interface OCUICenter : OCUISizeBox


- (OCUICenter *(^)(OCUICenterAlignType alignType))objc_alignType;

OCUISizeBoxChildHeaderCreate(OCUICenter);

@end