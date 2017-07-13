//
//  TableViewAnimationKit.m
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import "TableViewAnimationKit.h"
#import "XSGravityCollisionView.h"

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
+ (void)fallAnimationWithTableView:(UITableView *)tableView {
 
    NSArray *cells = tableView.visibleCells;
    
    NSTimeInterval totalTime = 0.8;
    
    for (int i = 0; i < cells.count; i++) {
        UITableViewCell *cell = [tableView.visibleCells objectAtIndex:i];
        cell.transform = CGAffineTransformMakeTranslation(0, -800);
        [UIView animateWithDuration:0.3 delay:(cells.count - i)*(totalTime/cells.count) options:0 animations:^{
            cell.transform = CGAffineTransformIdentity;
        } completion:^(BOOL finished) {
            
        }];
    }
}
+ (void)shakeAnimationWithTableView:(UITableView *)tableView {
    
//    NSArray *cells = tableView.visibleCells;
//    NSMutableArray *tempViews = [[NSMutableArray alloc] init];
//    for (UIView *cell in cells) {
//        UIView *snapView = [cell snapshotViewAfterScreenUpdates:YES];
//        [tempViews addObject:snapView];
//        cell.alpha = 0.0;
//    }
//    UIView *last = cells.lastObject;
//    last.alpha = 1.0;
//    
//    UIView *first = cells.firstObject;
//    first.alpha = 1.0;
//    
//    XSGravityCollisionView *baseView = [[XSGravityCollisionView alloc] init];
//    baseView.itemViews = @[tableView];
//    baseView.frame = tableView.superview.bounds;
}

@end
