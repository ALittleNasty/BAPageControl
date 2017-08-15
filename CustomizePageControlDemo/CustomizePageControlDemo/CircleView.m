//
//  CircleView.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/15.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "CircleView.h"

@implementation CircleView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.cornerRadius = self.frame.size.width * 0.5;
        self.layer.borderColor = [UIColor redColor].CGColor;
        self.layer.borderWidth = 2.0;
        self.backgroundColor = [UIColor whiteColor];
    }
    return self;
}

- (void)changeDotViewState:(BOOL)isSelected
{
    if (isSelected) {
        self.backgroundColor = [UIColor redColor];
    } else {
//        self.layer.borderColor = [UIColor redColor].CGColor;
        self.backgroundColor = [UIColor whiteColor];
    }
}

@end
