//
//  GHIssue.h
//  Mantle-DemoTests
//
//  Created by songzhou on 2018/5/22.
//  Copyright © 2018年 songzhou. All rights reserved.
//

#import <Mantle/Mantle.h>
#import "GHUser.h"

typedef enum : NSUInteger {
    GHIssueStateOpen,
    GHIssueStateClosed
} GHIssueState;

@interface GHIssue : MTLModel <MTLJSONSerializing>

@property (nonatomic, copy, readonly) NSURL *URL;
@property (nonatomic, copy, readonly) NSURL *HTMLURL;
@property (nonatomic, copy, readonly) NSNumber *number;
@property (nonatomic, assign, readonly) GHIssueState state;
@property (nonatomic, copy, readonly) NSString *reporterLogin;
@property (nonatomic, strong, readonly) GHUser *assignee;
@property (nonatomic, copy, readonly) NSDate *updatedAt;

@property (nonatomic, copy) NSString *title;
@property (nonatomic, copy) NSString *body;

@property (nonatomic, copy, readonly) NSDate *retrievedAt;

@end
