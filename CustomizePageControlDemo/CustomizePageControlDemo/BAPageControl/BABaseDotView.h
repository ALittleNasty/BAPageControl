//
//  BABaseDotView.h
//  CustomizePageControlDemo
//
//  Created by ALittleNasty on 2017/8/15.
//  Copyright © 2017年 ALittleNasty. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BABaseDotView : UIView

// Must override
- (void)changeDotViewState:(BOOL)isSelected;

@end
