//
//  Mantle_DemoTests.m
//  Mantle-DemoTests
//
//  Created by songzhou on 2018/5/22.
//  Copyright © 2018年 songzhou. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "GHIssue.h"
#import <Mantle/Mantle.h>

@interface Mantle_DemoTests : XCTestCase

@property (nonatomic) NSDictionary *gh_issueDict;

@end

@implementation Mantle_DemoTests

- (void)setUp {
    [super setUp];

    NSString *path = [[NSBundle bundleForClass:self.class] pathForResource:@"gh_issue" ofType:@"json"];
    _gh_issueDict = [NSJSONSerialization JSONObjectWithData:[NSData dataWithContentsOfFile:path] options:0 error:nil];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testModelFromDictionary {
    NSError *e;
    GHIssue *issue = [MTLJSONAdapter modelOfClass:[GHIssue class] fromJSONDictionary:_gh_issueDict error:&e];
    
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
