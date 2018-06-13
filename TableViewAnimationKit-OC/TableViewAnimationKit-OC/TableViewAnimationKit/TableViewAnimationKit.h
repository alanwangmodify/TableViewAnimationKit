//
//  TableViewAnimationKit.h
//  TableViewAnimationKit-OC
//
//  Created by alanwang on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TableViewAnimationKitConfig.h"

@interface TableViewAnimationKit : NSObject<UICollisionBehaviorDelegate>


/**
 class method to show the tableView animation

 @param animationType : animation type
 @param tableView : the tableView to show animation
 */
+ (void)showWithAnimationType:(XSTableViewAnimationType)animationType tableView:(UITableView *)tableView;

+ (void)moveAnimationWithTableView:(UITableView *)tableView;
+ (void)moveSpringAnimationWithTableView:(UITableView *)tableView;
+ (void)alphaAnimationWithTableView:(UITableView *)tableView;
+ (void)fallAnimationWithTableView:(UITableView *)tableView;
+ (void)shakeAnimationWithTableView:(UITableView *)tableView;
+ (void)overTurnAnimationWithTableView:(UITableView *)tableView;
+ (void)toTopAnimationWithTableView:(UITableView *)tableView;
+ (void)springListAnimationWithTableView:(UITableView *)tableView;
+ (void)shrinkToTopAnimationWithTableView:(UITableView *)tableView;
+ (void)layDownAnimationWithTableView:(UITableView *)tableView;
+ (void)roteAnimationWithTableView:(UITableView *)tableView;

@end
