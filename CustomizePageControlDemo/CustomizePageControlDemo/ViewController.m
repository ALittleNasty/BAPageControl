//
//  ViewController.m
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/14.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import "ViewController.h"
#import "BAPageControl.h"
#import "BAPageControlStyle.h"
#import "RectView.h"
#import "SquareView.h"
#import "CircleView.h"

@interface ViewController ()

/** pageControl */
@property (nonatomic, weak) BAPageControl *pageControl;
/** index */
@property (nonatomic, assign) NSInteger currentIndex;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _currentIndex = 0;
    self.view.backgroundColor = [UIColor lightGrayColor];
    
    
    BAPageControlStyle *r_style = [[BAPageControlStyle alloc] init];
    r_style.dotViewClass = [RectView class];
    r_style.dotSize = CGSizeMake(15.0, 5.0);
    r_style.position = BAPageControlPositionCenter;
    
    CGRect r_frame = CGRectMake(0.0, 200, self.view.bounds.size.width, 30.0);
    BAPageControl *r_pageControl = [[BAPageControl alloc] initWithFrame:r_frame style:r_style numberOfPages:3];
    [self.view addSubview:r_pageControl];
    self.pageControl = r_pageControl;
    
    
    BAPageControlStyle *s_style = [[BAPageControlStyle alloc] init];
    s_style.dotViewClass = [SquareView class];
    s_style.dotSize = CGSizeMake(10.0, 10.0);
    s_style.position = BAPageControlPositionLeft;
    CGRect s_frame = CGRectMake(0.0, 300, self.view.bounds.size.width, 30.0);
    BAPageControl *s_pageControl = [[BAPageControl alloc] initWithFrame:s_frame style:s_style numberOfPages:3];
    [self.view addSubview:s_pageControl];
    
    BAPageControlStyle *c_style = [[BAPageControlStyle alloc] init];
    c_style.dotViewClass = [CircleView class];
    c_style.dotSize = CGSizeMake(10.0, 10.0);
    c_style.position = BAPageControlPositionRight;
    CGRect c_frame = CGRectMake(0.0, 400, self.view.bounds.size.width, 30.0);
    BAPageControl *c_pageControl = [[BAPageControl alloc] initWithFrame:c_frame style:c_style numberOfPages:3];
    [self.view addSubview:c_pageControl];
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    _currentIndex += 1;
    if (_currentIndex >= 3) {
        _currentIndex = 0;
    }
    self.pageControl.currentIndex = _currentIndex; 
}

@end
