//
//  GHUser.m
//  Mantle-DemoTests
//
//  Created by songzhou on 2018/5/22.
//  Copyright © 2018年 songzhou. All rights reserved.
//

#import "GHUser.h"

@implementation GHUser
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return [NSDictionary mtl_identityPropertyMapWithModel:[self class]];
}

@end
