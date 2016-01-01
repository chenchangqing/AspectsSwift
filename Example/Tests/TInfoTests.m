//
//  TInfoTests.m
//  AspectsSwift
//
//  Created by green on 16/1/1.
//  Copyright © 2016年 CocoaPods. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "AspectsSwift_Tests-Swift.h"
#import <AspectsSwift/Aspects.h>
#import "TInfo.h"

@interface TInfoTests : XCTestCase

@end

@implementation TInfoTests

- (void)setUp {
    [super setUp];

}

- (void)tearDown {

    [super tearDown];
}

- (void)testExampleForOC {
    
    NSObject<AspectToken>* beforeAspect = [TInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionBefore usingBlock:^{
        
        NSLog(@"before call oc test");
        
    } error:NULL];
    
    NSObject<AspectToken>* afterAspect = [TInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionAfter usingBlock:^{
        
        NSLog(@"after call oc test");
        
    } error:NULL];
    
    [[[TInfo alloc] init] test];
    
    [beforeAspect remove];
    [afterAspect remove];
    
    [[[TInfo alloc] init] test];
    
}

- (void)testExampleForSwift {
    
    NSObject<AspectToken>* beforeAspect = [SInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionBefore usingBlock:^(id<AspectInfo> aspectInfo){
        
        NSLog(@"before call swift test");
        NSLog(@"%@",aspectInfo);
        
    } error:NULL];
    
    NSObject<AspectToken>* afterAspect = [SInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionAfter usingBlock:^{
        
        NSLog(@"after call swift test");
        
    } error:NULL];
    
    [[[SInfo alloc] init] test];
    
    [beforeAspect remove];
    [afterAspect remove];
    
    [[[SInfo alloc] init] test];
    
}

@end
