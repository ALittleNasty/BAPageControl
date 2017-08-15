//
//  RectView.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/15.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "RectView.h"

@interface RectView ()



@end

@implementation RectView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
    }
    return self;
}

- (void)changeDotViewState:(BOOL)isSelected
{
    if (isSelected) {
        self.backgroundColor = [UIColor blueColor];
    } else {
        self.backgroundColor = [UIColor whiteColor]; 
    }
    
}

@end
