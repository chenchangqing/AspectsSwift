//
//  AspectsHelper.m
//  AspectsSwift
//
//  Created by green on 16/1/1.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

#import "AspectsSwfit.h"

@implementation NSObject (AspectsSwfit)

+ (id<AspectToken>)aspect_hookSelectorForSwift:(SEL)selector withOptions:(AspectOptions)options error:(NSError *__autoreleasing *)error usingBlock:(AspectsBlock)block {
    
    return [self aspect_hookSelector:selector withOptions:options usingBlock:^(id<AspectInfo> aspectInfo){
        
        block(aspectInfo,nil);
    } error:error];
}

@end
