//
//  TableViewAnimationKit.h
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface TableViewAnimationKit : NSObject<UICollisionBehaviorDelegate>

+ (void)moveAnimationWithTableView:(UITableView *)tableView;
+ (void)alphaAnimationWithTableView:(UITableView *)tableView;
+ (void)fallAnimationWithTableView:(UITableView *)tableView;
+ (void)shakeAnimationWithTableView:(UITableView *)tableView;
+ (void)overTurnAnimationWithTableView:(UITableView *)tableView;
+ (void)toTopAnimationWithTableView:(UITableView *)tableView;
+ (void)springListAnimationWithTableView:(UITableView *)tableView;
+ (void)shrinkToTopAnimationWithTableView:(UITableView *)tableView;
+ (void)layDonwAnimationWithTableView:(UITableView *)tableView;
+ (void)roteAnimationWithTableView:(UITableView *)tableView;

@end
