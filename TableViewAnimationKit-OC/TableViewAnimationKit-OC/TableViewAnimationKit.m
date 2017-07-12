//
//  TableViewAnimationKit.m
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import "TableViewAnimationKit.h"

@interface TableViewAnimationKit ()

@end

@implementation TableViewAnimationKit




- (void)starAnimationWithTableView:(UITableView *)tableView {
    
    NSArray *cells = tableView.visibleCells;
    for (int i = 0; i < cells.count; i++) {
        UITableViewCell *cell = [tableView.visibleCells objectAtIndex:i];
        cell.transform = CGAffineTransformMakeTranslation(-500, 0);
        [UIView animateWithDuration:0.2 delay:i*0.035 options:0 animations:^{
            cell.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            
        }];
    }
    
}
- (void)alphaAnimationWithTableView:(UITableView *)tableView {
    
    NSArray *cells = tableView.visibleCells;
    for (int i = 0; i < cells.count; i++) {
        UITableViewCell *cell = [tableView.visibleCells objectAtIndex:i];
        cell.alpha = 0.0;
        [UIView animateWithDuration:0.3 delay:i*0.05 options:0 animations:^{
            cell.alpha = 1.0;
        } completion:^(BOOL finished) {
            
        }];
    }
}
+ (void)gravityAnimationWithTableView:(UITableView *)tableView {
 
    NSArray *cells = tableView.visibleCells;
    
    
//    UIDynamicAnimator* animator = [[UIDynamicAnimator alloc] initWithReferenceView:tableView];
//    UIGravityBehavior* gravityBeahvior = [[UIGravityBehavior alloc] initWithItems:cells];
//    [animator addBehavior:gravityBeahvior];
//    UICollisionBehavior* collisionBehavior = [[UICollisionBehavior alloc] initWithItems:cells];
//    collisionBehavior.translatesReferenceBoundsIntoBoundary = YES;
//    [animator addBehavior:collisionBehavior];
//    collisionBehavior.collisionDelegate = self;
    for (int i = 0; i < cells.count; i++) {
        UITableViewCell *cell = [tableView.visibleCells objectAtIndex:i];
        cell.transform = CGAffineTransformMakeTranslation(0, -800);
        [UIView animateWithDuration:0.3 delay:(cells.count - i)*0.2 options:0 animations:^{
            cell.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            
        }];
    }
}

#pragma mark - Delegate
- (void)collisionBehavior:(UICollisionBehavior *)behavior beganContactForItem:(id<UIDynamicItem>)item withBoundaryIdentifier:(id<NSCopying>)identifier atPoint:(CGPoint)p {
    
}
@end
