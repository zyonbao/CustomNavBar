//
//  CustomNavigationBar.m
//  CustomNavBar
//
//  Created by Zyonbao on 15/6/27.
//  Copyright (c) 2015年 zyonbao. All rights reserved.
//

#import "CustomNavigationBar.h"

#define kBarHeight 200.0
#define kDefaultBarHeight 44.0

@implementation CustomNavigationBar

-(id)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initialize];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        [self initialize];
    }
    return self;
}
/**
 *  you have to fix the title's position before [layoutSubviews] or you'll find the title will move to the 
 *  position you want after the push action. That's not smooth before you fix the position in the initialize
 *  function.
 */
- (void)initialize{
    [self setTitleVerticalPositionAdjustment:-(kBarHeight-kDefaultBarHeight)/2 forBarMetrics:UIBarMetricsDefault];
}
/**
 *  To resize the size of the navigationbar
 */
- (CGSize)sizeThatFits:(CGSize)size
{
    CGSize navigationBarSize = [super sizeThatFits:size];
    navigationBarSize.height = kBarHeight;
    [self invalidateIntrinsicContentSize];
    [self setNeedsLayout];
    return navigationBarSize;
}
//Verticle centered the buttons in navibar
- (void)layoutSubviews
{
    [super layoutSubviews];
    
    for (UIView *view in self.subviews) {
        if ([view isKindOfClass:[UIButton class]]) {
            CGPoint centerPoint = view.center;
            centerPoint.y = kBarHeight/2;
            view.center = centerPoint;
        }
    }
}

@end
