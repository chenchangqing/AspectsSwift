//
//  AspectsHelper.m
//  AspectsSwift
//
//  Created by green on 16/1/1.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

#import "AspectsHelper.h"
#import "AspectsSwift_Tests-Swift.h"
#import <AspectsSwift/Aspects.h>
#import "TInfo.h"

@implementation AspectsHelper

+ (void)aspectTest:(void(^)(int x))handler {
    
    [AspectsObject aspect_hookSelector:@selector(login2) withOptions:0 usingBlock:^(id info){
        
        NSLog(@"123");

    } error:NULL];
    
    [TInfo aspect_hookSelector:@selector(start) withOptions:0 usingBlock:^{
        NSLog(@"lai");
        
        handler(1);
    } error:NULL];
}

@end

