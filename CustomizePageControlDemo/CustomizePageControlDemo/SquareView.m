//
//  SquareView.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/15.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "SquareView.h"

@interface SquareView ()

/** image */
@property (nonatomic, strong) UIImageView *imgView;

@end

@implementation SquareView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imgView = [[UIImageView alloc] initWithFrame:self.bounds];
        _imgView.image = [UIImage imageNamed:@"white_square"];
        [self addSubview:_imgView];
    }
    return self;
}

- (void)changeDotViewState:(BOOL)isSelected
{
    if (isSelected) {
        _imgView.image = [UIImage imageNamed:@"blue_square"];
    } else {
        _imgView.image = [UIImage imageNamed:@"white_square"];
    }
}

@end
