//
//  UITableView+XSAnimationKit.h
//  TableViewAnimationKit-OC
//
//  Created by 王小树 on 17/9/9.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TableViewAnimationKitConfig.h"

@interface UITableView (XSAnimationKit)

/**
 show the tableView animation 
 
 @param animationType type of animation to show TableView
 */
- (void)xs_showTableViewAnimationWithType:(XSTableViewAnimationType )animationType;


@end
