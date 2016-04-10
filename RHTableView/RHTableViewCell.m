//
//  RHTableViewCell.m
//  RHToolkit
//
//  Created by zhuruhong on 15/6/27.
//  Copyright (c) 2015年 zhuruhong. All rights reserved.
//

#import "RHTableViewCell.h"

@implementation RHTableViewCell

+ (RHTableViewCell *)tableView:(UITableView *)tableView reusedCellOfClass:(Class)cellClass
{
    NSString *cellIdentifier = NSStringFromClass(cellClass);
    id cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if (nil == cell) {
        cell = [[cellClass alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    return cell;
}

- (void)updateViewWithData:(id)cellData
{
    //这里为简单展示，需要子类重载
    self.textLabel.text = [NSString stringWithFormat:@"%@的updateViewWithData方法需要重载", [self class]];
}

@end
