//
//  BAPageControlStyle.h
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/14.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

/**
 *  小圆点的布局位置
 */
typedef NS_ENUM(NSInteger, BAPageControlPosition) {
    
    BAPageControlPositionCenter = 0, // 默认居中
    BAPageControlPositionLeft = 1,   // 居左
    BAPageControlPositionRight = 2   // 居右
};

@interface BAPageControlStyle : NSObject

/** 位置(默认居中) */
@property (nonatomic) BAPageControlPosition position;

/** 小圆点大小(默认{8, 8}) */
@property (nonatomic) CGSize dotSize;

/** 圆点间隔(默认为10.0) */
@property (nonatomic) CGFloat dotPadding;

/** 小圆点类(必须继承自BABaseDotView, 并且重写changeDotViewState:方法) */
@property (nonatomic) Class dotViewClass;

/** 单个是否隐藏(默认为NO) */
@property (nonatomic) BOOL hideForSinglePage;

@end
