//
//  XSGravityCollisionView.h
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/13.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XSGravityCollisionView : UIView

@property (nonatomic, strong) UIDynamicAnimator *animator;
@property (nonatomic, strong) NSArray<UIView *> *itemViews;
- (void)starAnimation;

@end
