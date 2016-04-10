//
//  ViewController.m
//  RHTableViewDemo
//
//  Created by zhuruhong on 16/4/10.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import "ViewController.h"
#import "RHTableView.h"
#import "RHTableViewAdapter.h"
#import "RHTableViewCellModel.h"
#import "RHTableViewCell.h"

#import "RHStretchTableView.h"

@interface ViewController ()
{
    RHTableView *_tableView;
    RHTableViewAdapter *_tableAdapter;
    
    RHStretchTableView *_stretchTableView;
    RHTableViewAdapter *_stretchAdapter;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //普通table view
    _tableView = [[RHTableView alloc] init];
    _tableView.frame = CGRectMake(0, 50, CGRectGetWidth(self.view.frame), 200);
    [self.view addSubview:_tableView];
    
    _tableAdapter = [[RHTableViewAdapter alloc] init];
    [_tableView setTableViewAdapter:_tableAdapter];
    
    //可拉伸效果
    _stretchTableView = [[RHStretchTableView alloc] init];
    _stretchTableView.frame = CGRectMake(0, 300, CGRectGetWidth(self.view.frame), 400);
    [self.view addSubview:_stretchTableView];
    
    _stretchAdapter = [[RHTableViewAdapter alloc] init];
    [_stretchTableView setTableViewAdapter:_stretchAdapter];
    
    //
    NSMutableArray *modelList = [[NSMutableArray alloc] init];
    for (NSUInteger i=0; i<20; i++) {
        RHTableViewCellModel *model = [[RHTableViewCellModel alloc] init];
        model.cellData = [NSString stringWithFormat:@"cell data %lu", i];
        [model setHeightForRowBlock:^CGFloat(UITableView *tableView, NSIndexPath *indexPath) {
            return 50.0f;
        }];
        __weak typeof(model) weakModel = model;
        [model setCellForRowBlock:^RHTableViewCell *(UITableView *tableView, NSIndexPath *indexPath) {
            RHTableViewCell *cell = [RHTableViewCell tableView:tableView reusedCellOfClass:[RHTableViewCell class]];
            [cell updateViewWithData:weakModel];
            return cell;
        }];
        [modelList addObject:model];
    }
    
    //
    [self refreshNormalTableView:modelList];
    
    //
    [self refreshStretchTableView:modelList];
    
}

//普通table view
- (void)refreshNormalTableView:(NSArray *)dataList
{
    [_tableAdapter.dataArray removeAllObjects];
    [_tableAdapter.dataArray addObjectsFromArray:dataList];
    [_tableView reloadData];
}

//可拉伸效果
- (void)refreshStretchTableView:(NSArray *)dataList
{
    [_stretchAdapter.dataArray removeAllObjects];
    [_stretchAdapter.dataArray addObjectsFromArray:dataList];
    [_stretchTableView reloadData];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
