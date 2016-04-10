//
//  RHTableViewCell.h
//  RHToolkit
//
//  Created by zhuruhong on 15/6/27.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RHTableViewCell <NSObject>

@required

/**
 *  针对数据源刷新RHTableViewCell，在cellForRowAtIndexPath的方法中被触发调用
 *
 *  @param cellData cell的数据源
 */
- (void)updateViewWithData:(id)cellData;

@end

@interface RHTableViewCell : UITableViewCell <RHTableViewCell>

/**
 *  构造RHTableViewCell
 *
 *  @param tableView tableView
 *  @param cellClass 需要构造的RHTableViewCell对应的class
 *
 *  @return 返回cellClass对应的TableViewCell类
 */
+ (RHTableViewCell *)tableView:(UITableView *)tableView reusedCellOfClass:(Class)cellClass;

@end
