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

- (void)testExample {
    
    [TInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionBefore usingBlock:^{
        
        NSLog(@"before call oc test");
        
    } error:NULL];
    
    [TInfo aspect_hookSelector:@selector(test) withOptions:AspectPositionAfter usingBlock:^{

        NSLog(@"after call oc test");
        
    } error:NULL];
    
    [[[TInfo alloc] init] test];
}

@end
