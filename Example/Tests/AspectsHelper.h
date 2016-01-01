//
//  AspectsHelper.h
//  AspectsSwift
//
//  Created by green on 16/1/1.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AspectsHelper : NSObject

+(void)aspectTest:(void(^)(int))handler;

@end
