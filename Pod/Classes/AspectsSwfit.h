//
//  AspectsHelper.h
//  AspectsSwift
//
//  Created by green on 16/1/1.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Aspects.h"

typedef void(^AspectsBlock)(id<AspectInfo>,id);

@interface NSObject (AspectsSwfit)

+ (id<AspectToken>)aspect_hookSelectorForSwift:(SEL)selector
                                   withOptions:(AspectOptions)options
                                         error:(NSError **)error
                                    usingBlock:(AspectsBlock)block;
@end
