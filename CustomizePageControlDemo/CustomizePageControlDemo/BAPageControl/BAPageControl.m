//
//  BAPageControl.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/14.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "BAPageControl.h"
#import "BABaseDotView.h"
#import "BAPageControlStyle.h"

@interface BAPageControl ()

@property (nonatomic, assign) NSInteger totalDots;
@property (nonatomic, strong) NSMutableArray *dots;
@property (nonatomic, strong) BAPageControlStyle *style;

@end

@implementation BAPageControl

#pragma mark - Intialize

- (instancetype)initWithFrame:(CGRect)frame style:(BAPageControlStyle *)style numberOfPages:(NSInteger)numberOfPages 
{
    self = [super initWithFrame:frame];
    if (self) {
        
        NSAssert(style.dotViewClass != nil, @"必须指定小圆点子类类名");
        
        NSAssert([style.dotViewClass isSubclassOfClass:[BABaseDotView class]], @"自定义的小圆点类必须继承自BABaseDotView");
        
        // 基础设置
        _currentIndex = 0;
        _style = style;
        _totalDots = numberOfPages ;
        _dots = [NSMutableArray arrayWithCapacity:numberOfPages];
        [self setBackgroundColor:[UIColor orangeColor]];
        
        // 初始化子视图
        [self initCustomizedViewWithCustomizeViewClass:_style.dotViewClass];
        
        // 刷新小圆点
        [self reloadDotViewWithIndex:self.currentIndex];
        
        // 判断单个隐藏
        self.hidden = style.hideForSinglePage;
        
    }
    return self ;
}

#pragma mark - Configure Subviews

/**
 *  添加小圆点
 */
- (void)initCustomizedViewWithCustomizeViewClass:(Class)className
{
    for (int i = 0; i < _totalDots; i++)
    {
        CGRect frame = [self calculateDotFrameWithindex:i];
        BABaseDotView *dot = [[className alloc] initWithFrame:frame];
        [self addSubview:dot];
        [_dots addObject:dot];
    }
}

#pragma mark - Setter

/**
 *  设置当前点的索引
 */
-(void)setCurrentIndex:(NSInteger)currentIndex
{
    /**
     *  断言: currentIndex 不能小于0
     */
    NSAssert(currentIndex >= 0, @"currentIndex can't less than 0");
    
    /**
     *  断言: currentIndex 必须小于小圆点的总个数
     */
    NSAssert(currentIndex < _dots.count, @"currentIndex must less than totalDots");
    
    _currentIndex = currentIndex ;
    
    // 刷新小圆点
    [self reloadDotViewWithIndex:_currentIndex];
}

#pragma mark - Util

/**
 *  遍历所有的小圆点 , 让选中的小圆点的颜色为我们设置的风格颜色
 *
 *  @param index 选中点的索引
 */
- (void)reloadDotViewWithIndex:(NSInteger)index
{
    for (int i = 0; i < _dots.count; i++)
    {
        BABaseDotView *dot = _dots[i] ; 
        if (i == _currentIndex) {
            [dot changeDotViewState:YES];
        }else{
            [dot changeDotViewState:NO];
        }
    }
}

/**
 *  根据索引计算小圆点的位置
 */
- (CGRect)calculateDotFrameWithindex:(NSInteger)index
{
    CGFloat left = self.style.dotPadding;
    CGFloat y = (self.bounds.size.height - self.style.dotSize.height) * 0.5;
    CGFloat totalWidth = self.totalDots * self.style.dotSize.width + (self.totalDots - 1) * self.style.dotPadding;
    switch (self.style.position) {
        case BAPageControlPositionLeft: {
            CGFloat x = left + index * (self.style.dotSize.width + self.style.dotPadding);
            return CGRectMake(x, y, self.style.dotSize.width, self.style.dotSize.height);
        }
            break;
        case BAPageControlPositionCenter: { 
            left = (self.bounds.size.width - totalWidth) * 0.5;
            CGFloat x = left + index * (self.style.dotSize.width + self.style.dotPadding);
            return CGRectMake(x, y, self.style.dotSize.width, self.style.dotSize.height);
        }
            break;
        case BAPageControlPositionRight: {
            left = self.bounds.size.width - self.style.dotPadding - totalWidth;
            CGFloat x = left + index * (self.style.dotSize.width + self.style.dotPadding);
            return CGRectMake(x, y, self.style.dotSize.width, self.style.dotSize.height);
        }
            break;
        default:
            return CGRectZero;
            break;
    }
}

@end
