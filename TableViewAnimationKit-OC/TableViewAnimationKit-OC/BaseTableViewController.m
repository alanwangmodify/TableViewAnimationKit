//
//  BaseTableViewController.m
//  TableViewAnimationKit-OC
//
//  Created by alanwang on 2017/7/11.
//  Copyright © 2017年 com.cn.fql. All rights reserved.
//

#import "BaseTableViewController.h"
#import "TableViewAnimationKitHeaders.h"

@interface BaseTableViewController ()<UITableViewDelegate,UITableViewDataSource>

@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, assign) NSInteger cellNum;

@end

@implementation BaseTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor clearColor];
    [self.view addSubview:self.tableView];
    [self performSelector:@selector(loadData) withObject:nil afterDelay:0.5];
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 100, 50);
    [btn setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    [btn setTitle:@"Show Again" forState:UIControlStateNormal];
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:btn];
    [btn addTarget:self action:@selector(loadData) forControlEvents:UIControlEventTouchUpInside];

}


- (void)loadData {
    
    _cellNum = 15;
    [self.tableView reloadData];
    [self starAnimationWithTableView:self.tableView];

}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
}

#pragma mark - Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.cellNum;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 100;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *identifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
        
        CGFloat width = [[UIScreen mainScreen] bounds].size.width - 40;
        UIView *view = [[UIView alloc] initWithFrame:CGRectMake(20, 10, width, 80)];
        view.backgroundColor = [UIColor orangeColor];
        view.layer.masksToBounds = YES;
        view.layer.cornerRadius = 9.0;
        [cell.contentView addSubview:view];
        cell.contentView.backgroundColor = [UIColor clearColor];
        cell.backgroundColor = [UIColor clearColor];
    }
    
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma mark - Getter
-(UITableView *)tableView {
    if (!_tableView) {
        _tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
        _tableView.delegate = self;
        _tableView.dataSource = self;
        [_tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
    }
    return _tableView;
}


- (void)starAnimationWithTableView:(UITableView *)tableView {
    
    [TableViewAnimationKit showWithAnimationType:self.index tableView:tableView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
