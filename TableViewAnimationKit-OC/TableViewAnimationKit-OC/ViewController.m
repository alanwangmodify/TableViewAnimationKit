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


@interface ViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) NSArray *titles;
@property (nonatomic, strong) UITableView *tableView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIButton *btn = [[UIButton alloc] init];
//    btn.frame = CGRectMake(150, 200, 80, 80);
//
//    btn.backgroundColor = [UIColor redColor];
//    [btn addTarget:self action:@selector(toTableViewVC) forControlEvents:UIControlEventTouchUpInside];
//
//    XSGravityCollisionView *baseView = [[XSGravityCollisionView alloc] init];
//    baseView.itemViews = @[btn];
//    baseView.frame = self.view.bounds;
//    [baseView starAnimation];
//    [self.view addSubview:baseView];

    _titles = @[@"1",@"2",@"3",@"4",@"5",@"6",@"lay",@"8",@"9",@"10",@"11"];
    [self.view addSubview:self.tableView];
    
}
#pragma mark  - Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _titles.count;
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    BaseTableViewController *vc = [[BaseTableViewController alloc] init];
    vc.index = indexPath.row;
    [self.navigationController pushViewController:vc animated:YES];
    
}
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"identifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:identifier];
    }
    return cell;
    
}
- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    
}

- (UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.dataSource = self;
        _tableView.delegate = self;
    }
    return _tableView;
}

- (void)toTableViewVC {
 
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}


@end
