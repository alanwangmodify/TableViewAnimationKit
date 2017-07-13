//
//  XSGravityCollisionView.m
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/13.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import "XSGravityCollisionView.h"

@interface XSGravityCollisionView () <UICollisionBehaviorDelegate>

@end

@implementation XSGravityCollisionView
- (instancetype)init {
    
    if (self = [super init]) {
        
        UIDynamicAnimator *animator = [[UIDynamicAnimator alloc] initWithReferenceView:self];
        
        self.animator = animator;
        
        
        
    }
    return self;
}


- (void)setItemViews:(NSArray<UIView *> *)itemViews {
    _itemViews = itemViews;
    for (UIView *view in _itemViews) {
        [self addSubview:view];
    }
}
- (void)starAnimation {
    
    
    // 添加重力行为
    UIGravityBehavior *gravity = [[UIGravityBehavior alloc] initWithItems:self.itemViews];
    [self.animator addBehavior:gravity];
    
    // 边缘检测
    UICollisionBehavior *collision = [[UICollisionBehavior alloc] initWithItems:self.itemViews];
    collision.translatesReferenceBoundsIntoBoundary = YES;
    collision.collisionDelegate = self;
    [self.animator addBehavior:collision];
    
    //  物体的属性行为
    UIDynamicItemBehavior *item = [[UIDynamicItemBehavior alloc] initWithItems:self.itemViews];
    item.elasticity = 0.8;
    [self.animator addBehavior:item];
    
}
#pragma mark - UICollisionBehaviorDelegate

- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    
    NSLog(@"%@", NSStringFromCGPoint(p));
    
    
}


@end
