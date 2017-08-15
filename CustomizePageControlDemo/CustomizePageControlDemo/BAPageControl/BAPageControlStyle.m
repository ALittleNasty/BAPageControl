//
//  BAPageControlStyle.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/14.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "BAPageControlStyle.h"

@implementation BAPageControlStyle

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.dotPadding = 10.0;
        self.hideForSinglePage = NO;
        self.dotSize = CGSizeMake(8, 8);
        self.position = BAPageControlPositionCenter;
    }
    return self;
}

@end
