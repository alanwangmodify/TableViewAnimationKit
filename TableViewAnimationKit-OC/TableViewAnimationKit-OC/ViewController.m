//
//  ViewController.m
//  TableViewAnimationKit-OC
//
//  Created by fenqile on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import "ViewController.h"
#import "BaseTableViewController.h"
#import "XSGravityCollisionView.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIButton *btn = [[UIButton alloc] init];
    btn.frame = CGRectMake(150, 200, 80, 80);

    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(toTableViewVC) forControlEvents:UIControlEventTouchUpInside];
    
    
    XSGravityCollisionView *baseView = [[XSGravityCollisionView alloc] init];
    baseView.itemViews = @[btn];
    baseView.frame = self.view.bounds;
    [baseView starAnimation];
    [self.view addSubview:baseView];
    
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];

}

- (void)toTableViewVC {
    BaseTableViewController *vc = [[BaseTableViewController alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
