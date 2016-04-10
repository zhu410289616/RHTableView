//
//  RHTableViewCellModel.m
//  RHCommonFoundation
//
//  Created by zhuruhong on 16/4/9.
//  Copyright © 2016年 zhuruhong. All rights reserved.
//

#import "RHTableViewCellModel.h"
#import "RHTableViewCell.h"

@implementation RHTableViewCellModel

- (void)setHeightForRowBlock:(CGFloat (^)(UITableView *tableView, NSIndexPath *indexPath))heightForRowBlock
{
    _heightForRowBlock = heightForRowBlock;
}

- (void)setCellForRowBlock:(RHTableViewCell *(^)(UITableView *tableView, NSIndexPath *indexPath))cellForRowBlock
{
    _cellForRowBlock = cellForRowBlock;
}

@end
