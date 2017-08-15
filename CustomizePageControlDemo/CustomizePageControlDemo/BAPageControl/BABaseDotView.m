//
//  BABaseDotView.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/15.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "BABaseDotView.h"

@implementation BABaseDotView

/*
    子类必须重写这个方法
 */
- (void)changeDotViewState:(BOOL)isSelected
{
    @throw [NSException exceptionWithName:NSInternalInconsistencyException
                                   reason:[NSString stringWithFormat:@"You must override %@ in %@", NSStringFromSelector(_cmd), self.class]
                                 userInfo:nil];
}

@end
