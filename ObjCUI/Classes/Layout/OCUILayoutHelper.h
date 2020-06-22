//
// Created by freedom on 2020/6/22.
//

#import <Foundation/Foundation.h>
#import <Masonry/Masonry.h>
#import "OCUILayoutEnum.h"


@interface OCUILayoutHelper : NSObject

+ (void)autoLayoutWithMap:(NSDictionary *)dictionary
                    maker:(MASConstraintMaker *)maker
                superView:(UIView *)superView;


+ (void)autoLayoutWithMap:(NSDictionary *)dictionary
                    maker:(MASConstraintMaker *)maker
                superView:(UIView *)superView
              rewriteType:(NSSet *)rewriteTypes
                    maker:(void (^)(MASConstraintMaker *))objc_maker;

@end