//
//  BAPageControl.h
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/14.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BAPageControlStyle;


@interface BAPageControl : UIView

/** 当前索引(默认为0) */
@property (nonatomic) NSInteger currentIndex;

/**
 *  初始化方法
 *  @param frame    位置大小
 *  @param style    风格(位置, 小圆点大小, 小圆点间隔...)
 *  @param numberOfPages 小圆点个数
 */
- (instancetype)initWithFrame:(CGRect)frame style:(BAPageControlStyle *)style numberOfPages:(NSInteger)numberOfPages;

@end
